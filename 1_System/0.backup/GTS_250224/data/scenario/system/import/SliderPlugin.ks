[return cond="typeof(global.SliderLayer) != 'undefined'"]

; KAG����X���C�_�[��\��������v���O�C��
; 2012/12/15	1.13	typo�C�� setSizeTOImageSize�@���@setSizeToImageSize
; 2010/11/27	1.12	KAGLayersPlugin �� Verup�ɑΉ�
; 2010/08/08	1.11	�c�X���C�_�̃^�u���h���b�O�ł��Ȃ������o�O���C��
;			tabheight/tabwidth�̃f�t�H���g��15�ɕύX
;			�c�X���C�_���AUP/DOWN�L�[�Œl���㉺����悤�ɕύX
; 2010/08/01	1.10	step �� varary ���@�\�ǉ��B
;			tabwidth/tabheight/bgopacity��S���������ɓ���(�啶��
;			�܂ނ�KAG����w��ł��Ȃ�����


[call storage=TJSFunctions.ks]
[call storage=KAGLayersPlugin.ks]

[iscript]

// �X���C�_�[���C���[
class SliderLayer extends KAGLayer
{
	var name = "noname";

	var baseLayer;		// �x�[�X�摜
	var tabLayer;		// �^�u�摜

	var vertical = false;	// �c�X���C�_�ɂ��邩�ǂ���

	var min       = 0;	// �ŏ��l
	var max       = 100;	// �ő�l
	var step      = 0;	// �X�e�b�v�B�L�i�K�̎��w��(0�Ŗ��i�K)
	var valary    = void;	// ���U�l��ݒ肷�鎞�̔z��(��O�������ݒ�)

	var val;		// �܂݈ʒu�ϐ��̎Q�ƕ�����(global�ϐ��K�{)
	var onchange;		// �ʒu�ړ����Ɏ��s����X�N���v�g������
	var tabwidth  = 15;	// �܂݃T�C�Y
	var tabheight = 15;	// �܂݃T�C�Y�i�c�p)
	var dragging  = false;	// �h���b�O�����ǂ���
	var dragOriginX;	// �h���b�O�J�n X �ʒu
	var dragOriginY;	// �h���b�O�J�n Y �ʒu
	var mouseOn   = false;	// �}�E�X���̈���ɂ��邩�ǂ���
	var color     = clWindow; // �w�i�F
	var bgopacity = 192;	// �s�����x
	var baseimage = void;	// �x�[�X�摜�t�@�C����(void�ő��݂���)
	var tabimage  = void;	// �^�u�摜�t�@�C����(void�ő��݂���)

	// �R���X�g���N�^
	function SliderLayer(win, par, name = "noname", elm)
	{
		this.name = name;
		super.KAGLayer(win, par);

		focusable = true; // �t�H�[�J�X�𓾂���
		hitType = htMask;
		hitThreshold = 0;

		setOptions(elm);
	}

	// �f�X�g���N�^	
	function finalize()
	{
		invalidate baseLayer if (baseLayer !== void);
		invalidate tabLayer  if (tabLayer  !== void);
		super.finalize(...);
	}

	// �I�v�V�����ݒ�
	function setOptions(elm)
	{
		if (elm === void)
			return;

		// �\�Ȃ��̂͑S�����l�������Ⴄ
		numerize_dic(elm);

		// �w��\�ȃI�v�V�����͑S�������Ŏw��
		super.setOptions(elm);

		// ��d�ɐݒ肵���Ⴄ��������Ȃ������
		setOptions_sub(this, elm);
if (0) { // setOptions_sub()�ł�����Ⴄ�̂ňȉ��s�v
		// KAGLayer �v���p�e�B�̐ݒ�
		width       = +elm.width	if (elm.width       !== void);
		height      = +elm.height	if (elm.height      !== void);
		visible     = +elm.visible	if (elm.visible     !== void);

		// Slider �v���p�e�B�̐ݒ�
		vertical    = +elm.vertical	if (elm.vertical    !== void);
		min         = +elm.min		if (elm.min         !== void);
		max         = +elm.max		if (elm.max         !== void);
		step        = +elm.step		if (elm.step        !== void);
		val         = elm.val		if (elm.val         !== void);
//		position�͂����ł͐ݒ肵�Ȃ��Ă悢
		onchange    = elm.onchange      if (elm.onchange    !== void);
		tabwidth    = +elm.tabwidth	if (elm.tabwidth    !== void);
		tabheight   = +elm.tabheight	if (elm.tabHeigh    !== void);
//������	dragging    = +elm.dragging	if (elm.dragging    !== void);
//���r��ԂȂ̂�dragOriginX = +elm.dragOriginX	if (elm.dragOriginX !== void);
//�폜		dragOriginY = +elm.dragOriginY	if (elm.dragOriginY !== void);
//		mouseOn     = +elm.mouseOn	if (elm.mouseOn     !== void);
		color       = elm.color         if (elm.color       !== void);
		bgopacity   = elm.bgopacity     if (elm.bgopacity   !== void);
}
		if (elm.baseimage !== void)
			loadBase(baseimage);
		if (elm.tabimage !== void)
			loadTab(tabimage);
		if (valary !== void) {
			if (valary.count <= 1 && valary[0] == "")
				valary = void;	// valary���󂾂����B
			else {
				min = 0;
				max = valary.count-1;
				step = 1;
			}
		}

		// setter �Ŏ��s���Ă�ƁA���� update() �͖��ʂ����c������
		update();
	}

	// src �̏������̃I�u�W�F�N�g�ɃR�s�[
	function assign(src)
	{
		
		// ���̑��̕ϐ����R�s�[
		assignImages(src); // KAGLayer��assignImage�͈ʒu�E�T�C�Y���Ώ�
		name = src.name;

		// baseLayer���R�s�[
		baseLayer = void;
		if (src.baseLayer !== void) {
			if (baseLayer === void)
				baseLayer = new global.Layer(window, parent);
			baseLayer.assignImages(src.baseLayer);
		}

		// tabLayer���R�s�[
		tabLayer = void;
		if (src.tabLayer !== void) {
			if (tabLayer === void)
				tabLayer = new global.Layer(window, parent);
			tabLayer.assignImages(src.tabLayer);
		}

		vertical    = src.vertical;

		min         = src.min;
		max         = src.max;
		step        = src.step;
		valary      = src.valary;

		val         = src.val;
		onchange    = src.onchange;
		tabwidth    = src.tabwidth;
		tabheight   = src.tabheight;
		dragging    = src.dragging;
		dragOriginX = src.dragOriginX;
		dragOriginY = src.dragOriginY;
		mouseOn     = src.mouseOn;
		color       = src.color;
		bgopacity   = src.bgopacity;
		baseimage   = src.baseimage;
		tabimage    = src.tabimage;
	}

	// onPaint �C�x���g�ŌĂ΂��
	// ���C���̓��e��`�悷��
	function onPaint()
	{
		super.onPaint(...);

		// �悭�g���l�����[�J���ϐ��ɗp�ӂ���
		var imw = imageWidth, imh = imageHeight;

		if (baseLayer !== void) {
			copyRect(0, 0, baseLayer, 0, 0, imw, imh);
		} else {
			// ���~����h��
			fillRect(0, 0, imw, imh, 0);
				colorRect(0, 0, imw, imh, color, bgopacity);
		}
		
		if (focused)	{
			// �t�H�[�J�X������̂Ńn�C���C�g����
			colorRect(0, 0, width-1, 1, clHighlight, 128);
			colorRect(0, 1, 1, height-2, clHighlight, 128);
			colorRect(0, height-1, width, 1, clHighlight, 128);
			colorRect(width-1, 0, 1, height-1, clHighlight, 128);
		}
		
		if (vertical) {
			// �c�����X���C�_�[�̎�
			var tabh = tabheight;
			var htabh = tabh >> 1;
			
			// �����̂ւ��ݐ�
			//if (baseLayer === void) {
			//var himh = imh >> 1;
			//var right = imw - tabh;
			//fillRect(htabh, himh - 1, right, 1, 0x80000000);
			//fillRect(htabh, himh	, right, 1, 0x80ffffff);
			//}
			
			// �^�u(��ʂ̏㑤��傫�Ȓl�ɂ��邽�߂ɔP��)
			var pos_y = imageHeight -
			  (((position-min)*(imh-tabh-2)/(max-min))+htabh+1);
			var x_htabh = pos_y - htabh;
			
			if (tabLayer !== void) {
				
				var tabw = tabwidth;
				var tabx = (imw - tabw) / 2;

				if (dragging) {
					// on
					operateRect(tabx, x_htabh, tabLayer, tabw, 0, tabw, tabh);
				} else if (mouseOn) {
					// over
					operateRect(tabx, x_htabh, tabLayer, tabw*2, 0, tabw, tabh);
				} else {
					// normal
					operateRect(tabx, x_htabh, tabLayer, 0, 0, tabw, tabh);
				}
				
			} else {
				fillRect(0, x_htabh, imw, tabh, 0xffffff + (nodeEnabled ? 0 : 0xc0000000));
				if (mouseOn) {
					colorRect(0, x_htabh, imw, tabh, clHighlight, 64);
				}
				colorRect(0, x_htabh + 1, 1, tabh-2, 0xffffff, 128);
				colorRect(imw - 1, x_htabh + 1, 1, tabh-2, 0x000000, 128);
				colorRect(0, x_htabh, width, 1, 0xffffff, 128);
				colorRect(0, pos_y + htabh - 1, width, 1, 0x000000, 128);
			}

			
		} else {
			// �������X���C�_�[�̎�
			var tabw = tabwidth;
			var htabw = tabw >> 1;
			
			// �����̂ւ��ݐ�
			//if (baseLayer === void) {
			//var himh = imh >> 1;
			//var right = imw - tabw;
			//fillRect(htabw, himh - 1, right, 1, 0x80000000);
			//fillRect(htabw, himh	, right, 1, 0x80ffffff);
			//}
			
			// �^�u
			var pos_x = ((position-min)*(imw-tabw-2)/(max-min))
								+ htabw + 1;
			var x_htabw = pos_x - htabw;
			
			if (tabLayer !== void) {
				
				var tabh = tabheight;
				var taby = (imh - tabh) / 2;
				
				if (dragging) {
					// on
					operateRect(x_htabw, taby, tabLayer, tabw, 0, tabw, tabh);
				} else if (mouseOn) {
					// over
					operateRect(x_htabw, taby, tabLayer, tabw*2, 0, tabw, tabh);
				} else {
					// normal
					operateRect(x_htabw, taby, tabLayer, 0, 0, tabw, tabh);
				}
				
			} else {
				fillRect(x_htabw, 0, tabw, imh, 0xffffff + (nodeEnabled ? 0 : 0xc0000000));
				if (mouseOn) {
					colorRect(x_htabw, 0, tabw, imh, clHighlight, 64);
				}
				colorRect(x_htabw + 1, 0, tabw-2, 1, 0xffffff, 128);
				colorRect(x_htabw + 1, imh - 1, tabw-2, 1, 0x000000, 128);
				colorRect(x_htabw, 0, 1, height, 0xffffff, 128);
				colorRect(pos_x + htabw - 1, 0, 1, height, 0x000000, 128);
			}
		}
	}

	// �X���C�_�[���ő�l�ɐݒ肷��
	function toMax() {
		position = max;
	}

	// �X���C�_�[���ŏ��l�ɐݒ肷��
	function toMin() {
		position = min;
	}

	// �X���C�_�[����i�K��(��)�ɓ�����(=�傫������)
	function toLeft(x) {
		if (x === void) {
			if (step != 0)
				x = step;
			else if (vertical)
				x = (max-min)/(tabheight-2);
			else
				x = (max-min)/(tabwidth -2);
		}
		position += x;
	}

	// �X���C�_�[����i�K�E(��)�ɓ�����(=����������)
	function toRight(x) {
		if (x === void) {
			if (step != 0)
				x = step;
			else if (vertical)
				x = (max-min)/(tabheight-2);
			else
				x = (max-min)/(tabwidth -2);
		}
		position -= x;
	}
	
	// �L�[�������ꂽ
	function onKeyDown(key, shift, process)
	{
		if (!process && key != VK_LEFT && key != VK_RIGHT) {
			// process �� false �̏ꍇ�͏����͍s��Ȃ�
			super.onKeyDown(...);
			return;
		}
		if(!vertical && key == VK_LEFT || vertical && key == VK_UP) {
			(shift & ssAlt) ? toLeft(1) : toLeft();	 // ����
			// ���������̂�process��false��n��
			super.onKeyDown(key, shift, false);
		} else 
		if(!vertical && key == VK_RIGHT || vertical && key == VK_DOWN){
			(shift & ssAlt) ? toRight(1) : toRight(); // �E��
			// ���������̂�process��false��n��
			super.onKeyDown(key, shift, false);
		}
	}

	// �}�E�X�{�^���������ꂽ
	function onMouseDown(x, y, button)
	{
		focus();
		super.onMouseDown(...);

		if (button == mbLeft) {
			if (vertical) {
				var tabh = tabheight;
				var htabh = tabh >> 1;
				var pos_y = imageHeight - (
					(position-min) * (imageHeight-tabh-2)/(max-min) + htabh+1);
				if(pos_y - htabh > y) {
					// �^�u����
					toLeft();
				} else if(pos_y + htabh < y) {
					// �^�u��艺
					toRight();
				} else {
					// �^�u�ゾ������A�h���b�O���J�n
					dragging = true;
					dragOriginY = y - pos_y;
				}
			} else {
				var tabw = tabwidth;
				var htabw = tabw >> 1;
				var pos_x = (
					(position-min) * (imageWidth-tabw-2)/(max-min)) + htabw+1;
				if(pos_x - htabw > x) {
					// �^�u���E
					toRight();
				} else if(pos_x + htabw < x) {
					// �^�u��荶
					toLeft();
				} else {
					// �^�u�ゾ������A�h���b�O���J�n
					dragging = true;
					dragOriginX = x - pos_x;
				}
			}
		}
	}

	// �}�E�X�{�^���������ꂽ
	function onMouseUp(x, y, button)
	{
		super.onMouseUp(...);
		if (dragging)
			dragging = false;
//		// ���U�̏ꍇ�͈ʒu�␳
//		if (
	}

	// �}�E�X���ړ�����
	function onMouseMove(x, y)
	{
		super.onMouseMove(...);

		if(dragging)
		{
			// �^�u���h���b�O
			var len = max-min;
			if (vertical) {
				position = (
					(y-dragOriginY-(tabheight/2))*(-len) /
					(imageHeight - tabheight - 2) + max);
			} else {
				position = (
					(x-dragOriginX-(tabwidth/2))*(len) /
					(imageWidth - tabwidth - 2) + min);
			}
		}
	}

	// �}�E�X�����C���̈���ɓ�����
	function onMouseEnter()
	{
		update();
		mouseOn = true;
		super.onMouseEnter(...);
	}

	// �}�E�X�����C���̈悩��o��
	function onMouseLeave()
	{
		update();
		mouseOn = false;
		dragging = false;
		super.onMouseLeave(...);
	}

	// �t�H�[�J�X�𓾂�
	function onFocus()
	{
		super.onFocus(...);
		update();
	}

	// �t�H�[�J�X��������
	function onBlur()
	{
		super.onBlur(...);
		update();
	}

	// ���C���̃m�[�h���s�ɂȂ���
	function onNodeDisabled()
	{
		super.onNodeDisabled(...);
		update();
	}

	// ���C���̃m�[�h���L���ɂȂ���
	function onNodeEnabled()
	{
		super.onNodeEnabled(...);
		update();
	}

	// ����ݒ肷�鎞�� setter ���
	property width
	{
		setter(x)
		{
			super.width = x;
			imageWidth = x;
			update();
		}
		getter
		{
			return super.width;
		}
	}
	
	// ������ݒ肷�鎞�� setter ���
	property height
	{
		setter(x)
		{
			super.height = x;
			imageHeight = x;
			update();
		}
		getter
		{
			return super.height;
		}
	}

	// �ʒu��ݒ肷�鎞�� setter ���B�C���f�b�N�X��n���A�Ԃ��B
	// valary ���ݒ肳��Ă��鎞�͐����C���f�b�N�X��n���A�Ԃ��B
	property position
	{
		setter(x)
		{
			x = +x;	// ���l�ɂ��Ȃ��ƃG�������ƂɁB
			dm("set to slider position: " + x);
			// step�������step�ɂ��킹�Ďl�̌ܓ�
			// step�������̏ꍇ������̂ŁA%�͎g���Ȃ�)
			if (step != 0 && int(x/step)*step != x) {
				x -= min;	// ���̐����ɂ���
				if ((x - int(x/step)*step)/step < 0.5)
					x = int(x/step)*step;
				else
					x = int(x/step+1)*step;
				x += min;	// ���ɖ߂�
			}
			if (x < min) x = min;
			if (x > max) x = max;
			dm("adjusted position: " + x);

			var tmp = (valary===void) ? x : valary[x];
			Scripts.eval("("+val+") = " + tmp);
			update();
			if (onchange !== void)
				Scripts.eval(
					onchange+"(("+val+"), ("+dragging+"))"
					// onchange(val, dragging) �����s����
				);
			// onChange(Scripts.eval(val), dragging);
		}
		getter
		{
			if (valary === void)
				return Scripts.eval(val);
			else {
				var tmp = Scripts.eval(val);
				for (var i = valary.count-1; i >= 0; i--)
					if (valary[i] == tmp)
						return i;
				// �����ɗ���ƃG���[
				return -1;
			}
		}
	}

//	function onChange(value, dragging)
//	{	����� onchange() �ł�����Ⴄ�̂ō폜
//	}

	/**
	 * �x�[�X�摜��ǂݍ���
	 * @param storage �摜�B���̃T�C�Y�̃{�^���ɂȂ�
	 */
	function loadBase(storage, key)
	{
		if (baseLayer === void) {
			baseLayer = new global.Layer(window, parent);
		}
		baseLayer.loadImages(storage, key);
		baseLayer.setSizeToImageSize();
		width  = baseLayer.width;
		height = baseLayer.height;
	}

	/**
	 * �^�u�摜��ǂݍ���
	 * @param storage �摜  �ʏ�/��������/�I�[�o�[���A�����ꂽ�摜
	 */
	function loadTab(storage, key) {
		if (tabLayer === void) {
			tabLayer = new global.Layer(window, parent);
		}
		tabLayer.loadImages(storage, key);
		tabLayer.setSizeToImageSize();
		tabwidth  = tabLayer.imageWidth / 3;
		tabheight = tabLayer.imageHeight;
	}
	
	/**
	 * �����{�^���摜�̓ǂݍ���
	 * @param normal �ʏ펞�摜
	 * @param over �I�[�o�[���摜
	 * @param on �����������摜
	 */
	function loadTabs(normal, over, on) {
		if (tabLayer === void) {
			tabLayer = new global.Layer(window, parent);
		}
		var temp = window.temporaryLayer;
		temp.loadImages(normal);
		var w = temp.imageWidth;
		var h = temp.imageHeight;
		tabLayer.imageWidth  = w * 3;
		tabLayer.imageHeight = h;
		tabLayer.copyRect(0, 0, temp, 0, 0, w, h);
		if (over !== void) {
			temp.loadImages(over);
		}
		tabLayer.copyRect(w*2, 0, temp, 0, 0, w, h);
		if (on !== void) {
			temp.loadImages(on);
		}
		tabLayer.copyRect(w, 0, temp, 0, 0, w, h);
		tabwidth = w;
		tabheight = h;
	}
}


// �X���C�_�[������������
function slider_init(layer="base")
{
	var forelayer, backlayer;

	// �x�[�X���C���������ꍇ	
	if (layer == 'base') {
		forelayer = kag.fore.base;
		backlayer = kag.back.base;
	}
	// ���b�Z�[�W���C���������ꍇ
	else if (layer.length >= 8 && layer.substring(0,7) == 'message') {
		forelayer = kag.fore.messages[+layer.substring(7)];
		backlayer = kag.back.messages[+layer.substring(7)];
	}
	// �ʏ탌�C���������ꍇ
	else if (layer.length >= 6 && layer.substring(0,5) == 'layer') {
		forelayer = kag.fore.layers[+layer.substring(5)];
		backlayer = kag.back.layers[+layer.substring(5)];
	}
	else {
		System.inform("slider_init �� �K�؂� layer ��" +
			      "�w�肳��܂���ł����Blayer = " + layer);
		forelayer = kag.fore.base;
		backlayer = kag.back.base;
		// �Ƃ肠���� base ���w�肵�Ă��̂�
	}

	if (typeof(global.sliderplugin_obj) != 'undefined')
		kag.removePlugin(global.sliderplugin_obj);
	kag.addPlugin(
		global.sliderplugin_obj = new KAGLayersPlugin(kag, SliderLayer,
							forelayer, backlayer)
	);
}

// �e���|�����̒l�B�ʏ�g���Ȃ����ǁAval ��ݒ肵�Ȃ��������Ɏg�p�����
tf.sliderplugin_tmpval = 0;

// ������Ԃ� slider_init���Ă���
slider_init();

[endscript]


;; �X���C�_�[������
;; layer=�X���C�_�[��z�u���郌�C���[
[macro name="slider_init"]
[eval exp="slider_init(mp.layer)"]
[endmacro]


;; �X���C�_�[��\��
;; val=�X���C�_�[�ő��삵�����ϐ�
;; width=����
;; hight=�c��
;; visible=�������邩�ǂ���
[macro name="slider"]
[eval exp="mp.val = 'tf.sliderplugin_tmpval'" cond="mp.val === void"]
[eval exp="mp.visible = true" cond="mp.visible == void"]
[eval exp="mp.valary = mp.valary.split(/ +/)" cond="mp.valary !== void"]
[eval exp="global.sliderplugin_obj.add(mp.name, mp.page, mp)"]
[endmacro]


; �X���C�_�[�I�v�V������ݒ�
[macro name="slider_opt"]
[eval exp="global.sliderplugin_obj.setOptions(mp.name, mp.page, mp)"]
[endmacro]


; �X���C�_�[���폜
[macro name="slider_erase"]
[eval exp="mp.valary = mp.valary.split(/ +/)" cond="mp.valary !== void"]
[eval exp="global.sliderplugin_obj.del(mp.name, mp.page)"]
[endmacro]

[return]
