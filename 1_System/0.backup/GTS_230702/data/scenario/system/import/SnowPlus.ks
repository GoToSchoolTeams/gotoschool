[return cond="typeof(global.snow_object) != 'undefined'"]

[iscript]

/*
	����ӂ点��v���O�C�� SnowPlus.ks
2011/11/28	0.5	[snow_pause]��[snow_resume]��ǉ�
2011/05/30	0.42	finalized����timer.enabled=false��invalidate timer�ǉ�
2011/02/23	0.4	[iscript]���̍s���� * �����
			�A�j���[�V�����ɑΉ�
			timerinterval ���w��ł���悤�ɕύX
			basename ���w��ł���悤�ɕύX
2010/12/20	0.3	onRestore() �� dic === void ���l��
 */


// �ᗱ�̃N���X
class SnowGrain
{
	var fore;	// �\��ʂ̐ᗱ�I�u�W�F�N�g
	var back;	// ����ʂ̐ᗱ�I�u�W�F�N�g
	var xvelo;	// �����x
	var yvelo;	// �c���x
	var xaccel;	// ������
	var x, y;	// ���ʒu�Əc�ʒu
	var window;	// �E�B���h�E�I�u�W�F�N�g�ւ̎Q��

	var opts;	// �f�t�H���g�l�ۑ��n�b�V��(xspeed,q,yrandq,yspeed�Ȃ�)
	var status = 0;	// 0=���\��(spawned == false)
			// 1=��������(�����ʊO�ɏo����\��)
			// 2=�\����(spawned == true)
			// 3=����������(�����ʊO�ɏo�������)
			// 4=�����\
	var n;		// ���̐ᗱ�̑傫��(0-7)

	// �A�j���[�V�����Ή��̒ǉ�����(�ᗱ�ЂƂЂƂɎ����đ��v���H)
        var conductor;		// �A�j���[�V�����̃R���_�N�^
        var animidx;		// �A�j���[�V�����̃C���f�b�N�X
        var maxpatternnum;	// ���݂̃A�j���[�V�����Z���ő吔

	// SnowGrain �R���X�g���N�^
	function SnowGrain(window, n, opts)
	{
		this.window = window;
		this.opts   = opts; // �� �R�s�[�ł͂Ȃ��ĎQ�Ƃł��邱�Ƃɒ���
		this.n      = n;
		this.status = 0;

		fore = new Layer(window, window.fore.base);
		back = new Layer(window, window.back.base);

		// �ŏ��͉�ʊO�֒ǂ��o��
		fore.setPos(window.primaryLayer.width,
			    window.primaryLayer.height);
		back.setPos(window.primaryLayer.width,
			    window.primaryLayer.height);

		// �}�E�X���b�Z�[�W�͑S�擧��
		fore.hitType = back.hitType = htMask;
		fore.hitThreshold = back.hitThreshold = 256; 

		var fnam = opts.basename + n;
		fore.loadImages(fnam); // �摜��ǂݍ���
		back.assignImages(fore);
		fore.setSizeToImageSize(); // ���C���T�C�Y���摜�T�C�Y�Ɠ�����
		back.setSizeToImageSize();

		if (Storages.isExistentStorage(fnam + ".asd") ||
		    Storages.isExistentStorage(opts.basename + ".asd")) {
			// �A�j���[�V������`�t�@�C�������݂���
			conductor     = new AnimationConductor(this);
			animidx       = 0;
			maxpatternnum = 1;		// == 1 �Ȃ�A�j���Ȃ�
			fore.width = fore.height;	// �P�p�^�[���͍�����
			back.width = back.height;	// �����������Ɖ��肷��
			maxpatternnum = fore.imageWidth/fore.width;
			conductor.startLabel  = "";
			conductor.stopping    = false;
			conductor.running     = true;
			conductor.clearCallStack();
//			conductor.interrupted = Anim_interrupted;
			if (Storages.isExistentStorage(fnam + ".asd"))
				conductor.loadScenario(fnam + ".asd");
			else if (Storages.isExistentStorage(opts.basename + ".asd"))
				conductor.loadScenario(opts.basename + ".asd");
			conductor.goToLabel("");
			conductor.startProcess(true);
		}
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate conductor if (conductor !== void);
		invalidate fore;
		invalidate back;
	}

	// �o��
	function spawn(out_of_window=true, status=2)
	{
		var qn = Math.pow(opts.q, n);
		var win_w = window.primaryLayer.width;
		var win_h = window.primaryLayer.height;

		fore.absolute = back.absolute = opts.priority;
		this.status = status;
		xvelo   = opts.xspeed*qn;
		yvelo   = (opts.yspeed+Math.random()*opts.yrandq)*qn;
		yvelo   = 0.0001 if (yvelo == 0); // yvelo = 0�͏����s�\�Ȃ̂�
		xaccel  = (Math.random()-0.5)*2 * opts.xaccelq*qn;

		// +1 �Ƃ� -2 �Ƃ��́A�K����ʓ��ɕ\�����邽��
		x = intrandom(-fore.width+1,  win_w+fore.width-1);
		y = intrandom(-fore.height+1, win_h+fore.height-1);
		if(out_of_window) {
			// ��ʊO����\������ꍇ
			var t = 0;	// xvelo == 0 �� t = 0�Ƃ���
			if(xvelo != 0) {
				var a = Math.abs(yvelo/xvelo);	// �X����Βl
				var sq = win_h*win_w;	// �`��ʖʐ�
				if (a >= Math.abs(win_h/win_w)) {
					// t = �O�p�`�̖ʐςƁA�`��ʐς̔�
					t = win_h*win_h/a/2 /sq;
				} else {
					// t = ��`�̖ʐςƁA�`��ʐς̔�
					var qua = (win_h*2-win_w*a)*win_w/2;
					t = qua/sq;
				}
			}
			if (Math.random() < t) {
				// �c���������C���ɂ���B�X�s�[�h����������
				// ���[�E�E�[���r�؂��̂�h�����߂�rand�K�v
				var xrand = Math.random()*xvelo;
				if (0 <= xvelo)
					x = -fore.width+1 + xrand;
				else
					x = win_w-1       - xrand;
			} else {
				// �����������C���ɂ���X�s�[�h����������
				// ��[�E���[���r�؂��̂�h�����߂�rand�K�v
				var yrand = Math.random()*yvelo;
				if (0 <= yvelo)
					y = -fore.height+1 + yrand;
				else
					y = win_h-1        - yrand;
			}
		}
		if (status == 2 || status == 3) { // �\���E�����������Ȃ�\��
			fore.setPos(x, y);
			back.setPos(x, y); // ����ʂ̈ʒu��������
		} else {
			fore.setPos(-fore.width, 0); // ���������Ȃ�_�~�[��
			back.setPos(-fore.width, 0); // ��ʊO�\��
		}
		fore.visible = opts.forevisible;
		back.visible = opts.backvisible;
	}


	// �\���E��\���̏�Ԃ��Đݒ肷��
	function resetVisibleState()
	{
		if (status) {
			fore.visible = opts.forevisible;
			back.visible = opts.backvisible;
		}
		else {
			fore.visible = false;
			back.visible = false;
		}
	}


	// �ᗱ�𓮂���
	function move()
	{
		if (status == 4)	// �����\��ԂȂ牽�����Ȃ�
			return;
		var qn = Math.pow(opts.q, n);
		if (status == 0) {
			// �\������Ă��Ȃ���Ε\��
			// �o���p�x��1/opts.q�A�Ŕw�ʂ͕K���o��(=1.0)
			spawn() if (Math.random() <= 1/qn);
			return;
		}
		x += xvelo;
		y += yvelo;

		xvelo += xaccel;
		xaccel += (Math.random() - 0.5) * 2 * opts.xaccelq * qn;
		if (xvelo >  (opts.xspeed + opts.xspeedmax)*qn)
			xvelo = (opts.xspeed + opts.xspeedmax)*qn;
		if (xvelo < (opts.xspeed - opts.xspeedmax)*qn)
			xvelo = (opts.xspeed - opts.xspeedmax)*qn;
		if (xaccel > opts.xaccelmax*qn)
			xaccel = opts.xaccelmax*qn;
		if (xaccel < -opts.xaccelmax*qn)
			xaccel = -opts.xaccelmax*qn;

		if (status != 1) { // ���������ȊO�ł���Ύ��ۂɓ�����
			fore.setPos(x, y);
			back.setPos(x, y); // ����ʂ̈ʒu��������
		}

		// �ᗱ�����S�ɉ�ʊO�ɏo���ꍇ�A��\���ɂ���B
		// ����move()�̎��A��ōĕ\������邩�ǂ������f�����
		if (x <= -fore.width  || window.primaryLayer.width  <= x ||
		    y <= -fore.height || window.primaryLayer.height <= y) {
			if (status == 1 || status == 2) // �\��/���������Ȃ�
				status = 0;	// ���\���ɂ���
			else if (status == 3)	// �����O�Ȃ�
				status = 4;	// �����\�ɂ���
		}
	}

	
	// �\�Ɨ��̊Ǘ�������������
	function exchangeForeBack()
	{
		var tmp = fore;
		fore = back;
		back = tmp;
	}


// ------------ ��������^�O�n���h�� -----------------------------

	// ���݂̃p�^�[��No.���w�肷��
	function pattern(elm)
	{
		if (elm.num !== void)
			maxpatternnum = +elm.num;
		if (elm.index !== void) {
			var str = elm.index.replace(/index/, animidx);
			animidx = Scripts.eval(str);
		}
		// �L���ȃp�^�[��No.�͈̔͂Ɏ��߂�
		animidx %= maxpatternnum;
		if (animidx < 0)
			animidx += maxpatternnum;
		fore.imageLeft = -animidx * fore.width;
		back.imageLeft = -animidx * back.width;
		return 0;
	}

	// ��~
	function s(elm)
	{
		elm.context.running = false;
		return -1; // ��~
	}

	// �҂�
	function wait(elm)
	{
		return elm.time;
	}

	// �^�O�n���h�� loadcell() �͉������Ȃ�
	function loadcell()
	{
		// .asd �t�@�C���ɑ��݂������ɃG���[�ɂ��Ȃ����߂̃_�~�[
		return 0;
	}

	// �������eval���Đ��l�ɕϊ�
	function evalstr(str, def=0)
	{
		if (str === void || str == '')
			return +def;
		return +Scripts.eval(str);
	}

	// �ǉ��^�O�n���h�� pos(x, y)
	function pos(elm)
	{
		left    =  evalstr(elm.x,      left);
		top     =  evalstr(elm.y,       top);
		left    += evalstr(elm.ix,        0);
		top     += evalstr(elm.iy,        0);
		opacity =  evalstr(elm.opa, opacity);
		opacity += evalstr(elm.iopa,      0);
		return 0;
	}

	// �ǉ��^�O�n���h�� size(w, h)
	function size(elm)
	{
		width  = imageWidth  = evalstr(elm.w) if (elm.w !== void);
		height = imageHeight = evalstr(elm.h) if (elm.h !== void);
		return 0;
	}

	// �^�O�n���h���ǉ��Anoloop�Floop�̔��΁B
	function noloop(elm)
	{
		// ���[�v���g��Ȃ����Ƃ�錾����
		// �Z�O�����g�ɂ���Ă̓��[�v�����肵�Ȃ������肷�邽�߁B
		elm.context.looping = false;
		return 0;
	}

	// �^�O�n���h���ǉ��A@clear�A�\���̈�̓����F�ł̃N���A
	function clear()
	{
		// Layer.fase�Ƃ��l���ĂȂ����ǂ�����납�B
		fillRect(0, 0, width, height, 0);
		lastcopyelm = %[];
		return 0;
	}
}



// ���U�炷�v���O�C���N���X
class SnowPlugin extends KAGPlugin
{
	var snows;	// �ᗱ�z��B�񎟌��z��ŁAsnows[�傫��][��]�ɂȂ��Ă�
	var timer;	// �^�C�}
	var window;	// �E�B���h�E�ւ̎Q��
	var opts;	// �I�v�V�����ۑ��ϐ�

	// �R���X�g���N�^
	function SnowPlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
		SnowPluginInit();
	}


	function SnowPluginInit()
	{
		stop();
		snows = [ [], [], [], [], [], [], [], []];
		opts = %[
			"priority"    => 20000000-1,	// �\���D�揇��
			"mingrain"    => 0,	// �ᗱ�ŏ��T�C�Y
			"maxgrain"    => 4,	// �ᗱ�ő�T�C�Y
			"dencity"     => 30,	// ��̐�(�i�K����)
			"xspeed"      => 0,	// x�����ւ̕��σX�s�[�h
			"xaccelq"     => 0.05,	// x�����ւ̉����x�W��
			"xaccelmax"   => 0.5,	// x�����̉����x�ő�l
			"xspeedmax"   => 0.7,	// x�����̑��x�ő�l
			"yspeed"      => 6.0,	// y�����ւ̕��σX�s�[�h
			"yrandq"      => 0.2,	// y�����̉����x�����_���W��
			"q"           => 1.5,	// �ᗱ�̑傫����i�K�̌W��
			"forevisible" => true,	// �\��ʂ��\����Ԃ��ǂ���
			"backvisible" => true,	// ����ʂ��\����Ԃ��ǂ���
			"basename"    => "snow_", // ��摜�̃x�[�X��
			"timerinterval" => 50	// 50/1000 = 1/20�b�Ɉ�񓮂���
		];
	}


	// �f�X�g���N�^
	function finalize()
	{
		if (timer !== void) {
			timer.enabled = false;
			invalidate timer;
		}
		// ���̃N���X�̊Ǘ����邷�ׂẴI�u�W�F�N�g�𖾎��I�ɔj��
		for(var n = snows.count-1; n >= 0; n--) {
			for(var i = snows[n].count-1; i >= 0; i--)
				invalidate snows[n].pop();
			invalidate snows.pop();
		}
		super.finalize(...);
	}


	// dencity �̐ᗱ�ɕύX����B
	// �������Ȃ��Ȃ�ꍇ�A���ɑ��݂���ᗱ�́A��ʊO�ɏo����폜�����
	// �����Ȃ�ꍇ�́c�܂��t�c�[�ɁB
	function change_snow_dencity(status = 1)
	{
		var num = opts.dencity;

		// �ŏ��ɕs�v�ȊK�w�̐ᗱ���폜
		for (var n = 0; n < snows.count && n < opts.mingrain; n++) {
			for (var i = snows[n].count-1; i >= 0; i--)
				snows[n][i].status = 3; // �폜�҂�
		}
		for (var n = opts.maxgrain+1; n < snows.count; n++) {
			for (var i = snows[n].count-1; i >= 0; i--)
				snows[n][i].status = 3; // �폜�҂�
		}

		// �K�v�ȊK�w������
		for (var n = opts.mingrain; n <= opts.maxgrain; n++) {
			// n = �ᗱ�̑傫���Anewnum = �\����(�ʐςɔ��)
			var newnum = int(num/Math.pow(opts.q,n*2));
			newnum = 1 if (num != 0 && newnum < 1);
			if (snows[n] === void)
				snows[n] = [];	// ���߂Ă̏ꍇ�A������
			// ���Ȃ��Ȃ�ꍇ
			for (var i = snows[n].count-1; i >= newnum; i--)
				snows[n][i].status = 3;	// �폜�҂�
			// �����Ȃ�ꍇ
			for (var i = snows[n].count; i < newnum; i++) {
				snows[n][i]= new SnowGrain(window, n, opts);
				snows[n][i].spawn(false, status);
			}
			// ���ݍ폜�҂��̂��̂ŁA����������̂������status�ύX
			for (var i = 0; i < newnum; i++) {
				if (snows[n][i].status == 3)
					snows[n][i].status = 2;
				if (snows[n][i].status == 4)
					snows[n][i].status = 0;
			}
		}
	}


	// opts.dencity ��(x�ᗱ���)�̐ᗱ���o��������
	function start(type = 1, newopts)
	{
		if (timer !== void)
			return;		// ���ɍ~�ᒆ�Ȃ炷���߂�

		setOptions(newopts);
		change_snow_dencity(type ? 2 : 1);
		// �^�C�}�[���쐬
		timer = new Timer(onTimer, '');
		timer.interval = opts.timerinterval;
		timer.enabled = true;
	}

	// �ᗱ������
	function stop()
	{
		if (timer === void)
			return;		// �~�ᒆ�łȂ���΂����߂�

		// ��C�ɂ�߂�
		for (var n = snows.count-1; n >= 0; n--) {
			for (var i = snows[n].count-1; i >= 0; i--)
				invalidate snows[n][i];
			snows[n] = [];
		}
		snows.count = 0;
		invalidate timer;
		timer = void;
	}


	// �I�v�V������ݒ肷��
	function setOptions(newopts)
	{
		if (newopts === void)
			return;
		var ary = [];
		var optkeys = [];
		ary.assign(newopts);
		// �܂��ŏ��ɐݒ肷��
		for (var i = 0; i < ary.count; i += 2) {
			var e = ary[i];
			if (e != "basename")
				opts[e] = +ary[i+1];
			else
				opts[e] = ary[i+1];	// basename�͔񐔒l
			optkeys.add(e);
		}
		// ���ꂩ��l���`�F�b�N�B
		// �������Ȃ��ƈ�ݒ肷��x�Ɏ��s����Ă��܂�����B
		if (optkeys.find("forevisible") >= 0 ||
		    optkeys.find("backvisible") >= 0) {
			resetVisibleState();
		}
		else if (optkeys.find("dencity")  >= 0 || 
			 optkeys.find("mingrain") >= 0 ||
			 optkeys.find("maxgrain") >= 0) {
			change_snow_dencity();
		}
		// �ςȒl�͖���
	}


	// �^�C�}�[�̎������ƂɌĂ΂��
	function onTimer()
	{
		for (var n = snows.count-1; n >= 0; n--)
			for (var i = snows[n].count-1; i >= 0; i--) {
				snows[n][i].move(); // move ���\�b�h���Ăяo��
				if (snows[n][i].status == 4) {
					invalidate snows[n][i];
					snows[n].erase(i); // �폜�҂����폜
				}
			}
	}


	// ���ׂĂ̐ᗱ�� �\���E��\���̏�Ԃ��Đݒ肷��
	function resetVisibleState()
	{
		for (var n = snows.count-1; n >= 0; n--)
			for (var i = snows[n].count-1; i >= 0; i--)
				// resetVisibleState ���\�b�h���Ăяo��
				snows[n][i].resetVisibleState();
	}


	// �x��ۑ�����Ƃ�
	function onStore(f, elm)
	{
		var dic = f.snows = %[];
		dic.init = timer !== void;
		dic.opts = %[];
		(Dictionary.assign incontextof dic.opts)(opts);
		dic.pause = (timer !== void && !timer.enabled);
	}


	// �x��ǂݏo���Ƃ�
	function onRestore(f, clear, elm)
	{
		var dic = f.snows;
		SnowPluginInit();
		if (dic === void)
			return;
		(Dictionary.assign incontextof opts)(dic.opts);
		setOptions(opts);
		if(dic === void || !+dic.init)
			stop();		// ��͂łĂ��Ȃ�
		else if(dic !== void && +dic.init) {
			start();	// ��͂łĂ���
			timer.enabled = false if (dic.pause);
		}
	}


	function onStableStateChanged(stable)
	{
	}


	function onMessageHiddenStateChanged(hidden)
	{
	}


	// ���C���̕\���������̃R�s�[
	// ���̃v���O�C���ł̓R�s�[���ׂ����͕\���E��\���̏�񂾂�
	function onCopyLayer(toback)
	{
		if (toback) {
			// �\����
			opts.backvisible = opts.forevisible;
		} else {
			// �����\
			opts.forevisible = opts.backvisible;
		}
		resetVisibleState();
	}


	// ���ƕ\�̊Ǘ���������
	function onExchangeForeBack()
	{
		for (var n = snows.count-1; n >= 0; n--)
			for (var i = snows[n].count-1; i >= 0; i--)
				// exchangeForeBack ���\�b�h���Ăяo��
				snows[n][i].exchangeForeBack();
	}
}

kag.addPlugin(global.snow_object = new SnowPlugin(kag));
	// �v���O�C���I�u�W�F�N�g���쐬���A�o�^����

[endscript]


; �}�N���o�^
; �������}�N��
[macro name="snow_init"]
[eval exp="snow_object.SnowPluginInit()"]
[endmacro]

; �J�n�}�N��
[macro name="snow_start"]
[eval exp="snow_object.start(mp.type, mp)"]
[endmacro]

; ��~�}�N��
[macro name="snow_stop"]
[eval exp="snow_object.stop()"]
[endmacro]

; �I�v�V�����ݒ�}�N��
[macro name="snow_opts"]
[eval exp="snow_object.setOptions(mp)"]
[endmacro]

; �ꎞ��~
[macro name="snow_pause"]
[eval exp="snow_object.timer.enabled = false" cond="snow_object.timer!==void"]
[endmacro]

; �ꎞ��~����
[macro name="snow_resume"]
[eval exp="snow_object.timer.enabled = true" cond="snow_object.timer!==void"]
[endmacro]

[return]
