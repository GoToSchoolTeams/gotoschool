; ��d�ǂݍ��݂�h�~
[return cond="typeof global.KAGLayersPlugin != 'undefined'"]


[call storage="TJSFunctions.ks"]

[iscript]
/*
   Layer�I�u�W�F�N�g(���ł��悢)��O�i�E�w�i�ɔz�u���āAKAG �� [trans]�^�O��
   �������b�p�[�v���O�C��
   ���b�p�[���ɂ́A�ȉ��̊֐����K�v
	   �R���X�g���N�^(win, parent, name, elm) ... �R���X�g���N�^
	   finalize() ........................... �f�X�g���N�^
	   setOptions(elm) ....................... �I�v�V�����ݒ�
				���I�v�V�����ݒ肵�Ȃ��Ȃ�s�v
	   assign(src) .......................... �R�s�[����
	   dic = store() ........................ �Z�[�u���Ƀn�b�V����Ԃ�
				���Z�[�u���Ȃ��Ȃ�s�v
	   restore(dic) ......................... ���[�h���Ƀn�b�V����ݒ肷��
				�����[�h���Ȃ��Ȃ�s�v
2011/05/06 1.13	�E[iscript]���̍s���� * �����
2010/12/26 1.12	�EonRestore()����dic===void���l��
2010/11/26 1.11	�EKAGLayersPlugin�N���X�̃R���X�g���N�^��API��ύX�B
		�@�֘A���� TJSFunctions.ks ���K�v�ƂȂ����B
		�EMessageLayersPlugin �N���X��ǉ�����
		�EonStore()/onRestore()�� dic ��Ԃ��悤�ɂ����B
		�EMessageLayersPlugin��ǉ��B���SystemButton���������邽�߂�
		�@KAGLayersPlugin�g���B
2010/08/01 1.10	�E�f�t�H���g��page=both��page=fore�ɕύX�B���_��
		�E�I�u�W�F�N�g���ł���̂�h�����߁B
 [iscript]���ł͓���*�������Ȃ����ƁI*/


// ���v���O�C���̃X�P���g��
// �K��������������h������K�v�͂Ȃ����A�h�������������낢��y����
class KAGLayer_skel // extends KAGLayer(�܂��͂��̔h�����C��)
{
	//	var name; name �� Layer �N���X�ɗL��̂Œ�`�s�v�B
	function KAGLayer_skel(w, p, name, elm)
	{
		this.name = name;
		setOptions(elm);
	}

	function finalize()
	{
	}

	function setOptions(elm)
	{
	}

	function assign(src)
	{
		name = src.name;
	}

	function store()
	{
		var dic = %[];
		dic.name = name;
		return dic;
	}

	function restore(dic)
	{
		name = dic.name;
	}
}


// ���b�p�[�v���O�C��
class KAGLayersPlugin extends KAGPlugin
{
	var window;
	var foreparent;		// �\��ʂ̐e
	var backparent;		// ����ʂ̐e
	var classname;		// �qLayer�N���X�̃N���X��(������)
	var classobj;		// �qLayer�N���X�̃N���X�I�u�W�F�N�g��
	var foreary;		// �\��ʂ̎q�N���X�z��
	var backary;		// ����ʂ̎q�N���X�z��

	// �R���X�g���N�^
	function KAGLayersPlugin(w, classobj, fp=w.fore.base, bp=w.back.base)
	{
		super.KAGPlugin(...);
		window = w;
		foreparent = fp;
		backparent = bp;
		// �N���X�I�u�W�F�N�g���當����ɕϊ�����r��
		classname = find_val(global, classobj);
		this.classobj  = classobj;
		foreary = [];
		backary = [];
	}

	// �f�X�g���N�^
	function finalize()
	{
		delOnPage('both');
		super.finalize(...);
	}

	// ����y�[�W�̎qLayer��S�č폜
	function delOnPage(page='fore')
	{
		if(page == 'both' || page == 'fore')
			for(var i = foreary.count-1; i >= 0; i--) {
				invalidate(foreary[i]);
				foreary.erase(i);
			}
		if(page == 'both' || page == 'back')
			for(var i = backary.count-1; i >= 0; i--) {
				invalidate(backary[i]);
				backary.erase(i);
			}
	}

	// �w��name�̎qLayer���폜
	function del(name, page='fore')
	{
		if(name === void) {
			delOnPage(page);
			return;
		}
		if(page == 'both' || page == 'fore')
			for(var i = foreary.count-1; i >= 0; i--)
				if(foreary[i].name == name) {
					invalidate(foreary[i]);
					foreary.erase(i);
				}
		if(page == 'both' || page == 'back')
			for(var i = backary.count-1; i >= 0; i--)
				if(backary[i].name == name) {
					invalidate(backary[i]);
					backary.erase(i);
				}
	}

	// �qLayer����ǉ�
	function add(name='noname', page='fore', elm)
	{
		var obj;
		if (page == 'fore' || page == 'both') {
			obj = new classobj(window, foreparent, name, elm);
			foreary.add(obj);
		}
		if (page == 'back' || page == 'both') {
			obj = new classobj(window, backparent, name, elm);
			backary.add(obj);
		}
	}

	// name��page�ɑΉ�����q���C����T��
	function search(name, page='fore')
	{
		var retary = [];
		if(page == 'both' || page == 'fore') {
			for(var i = foreary.count-1; i >= 0; i--)
				if(name === void || foreary[i].name == name)
					retary.add(foreary[i]);
		}
		if(page == 'both' || page == 'back') {
			for(var i = backary.count-1; i >= 0; i--)
				if(name === void || backary[i].name == name)
					retary.add(backary[i]);
		}
		return retary;
	}

	// name��page�ɑΉ�����q���C����T��(�������)
	function search_one(name, page='fore')
	{
		var retary = search(name, page);
		if (retary.count == 0)
			return void;
		if (retary.count == 1)
			return retary[0];
		System.inform("search_one()�őΏۃ��C����������������܂����B"+
			      "�Ƃ肠���� void ��Ԃ��܂��B"+
			      "search_one("+name+", "+page+")");
		return void;
	}

	// �I�v�V�����w��
	function setOptions(name, page='fore', elm)
	{
		var ary = search(name, page);
		for (var i = ary.count-1; i >= 0; i--)
			ary[i].setOptions(elm);
	}

	// ���C���̕\�������̏��̃R�s�[
	// backlay �^�O��g�����W�V�����̏I�����ɌĂ΂��
	function onCopyLayer(toback)
	{
		if(toback) {
			// �\����
			delOnPage('back');
			for(var i = foreary.count-1; i >= 0 ; i--) {
				backary[i] = new classobj(window,
					backparent, foreary[i].name);
				backary[i].assign(foreary[i]);
			}
		}
		else {
			// �����\
			delOnPage('fore');
			for(var i = backary.count-1; i >= 0 ; i--) {
				foreary[i] = new classobj(window,
					foreparent, backary[i].name);
				foreary[i].assign(backary[i]);
			}
		}
	}

	// ���ƕ\�̊Ǘ���������
	function onExchangeForeBack()
	{
		// children = true �̃g�����W�V�����ł́A�g�����W�V�����I������
		// �\��ʂƗ���ʂ̃��C���\���������������ւ��̂ŁA
		// ����܂� �\��ʂ��Ǝv���Ă������̂�����ʂɁA����ʂ��Ǝv����
		// �������̂��\��ʂɂȂ��Ă��܂��B�����̃^�C�~���O�ł��̏���
		// ����ւ���΁A�����͐����Ȃ��B
		var ary = [];
		ary.assign(foreary);
		foreary.assign(backary);
		backary.assign(ary);

		var tmp = foreparent;
		foreparent = backparent;
		backparent = tmp;
	}

	// �Z�[�u
	function onStore(f, elm)
	{
		// �x��ۑ�����Ƃ�
		var dic = f["kaglayersplugin_" + classname] = %[];
		dic.foreary = [];
		dic.backary = [];
		for(var i = foreary.count-1; i >= 0; i--)
			dic.foreary[i] = foreary[i].store();
		for(var i = backary.count-1; i >= 0; i--)
			dic.backary[i] = backary[i].store();
		return dic;	// �q�N���X�̂��߂ɕԂ�
	}

	// ���[�h
	function onRestore(f, elm)
	{
		// �x��ǂݏo���Ƃ�
		delOnPage('both');
		var dic = f["kaglayersplugin_" + classname];
		if(dic === void)
			return;
		for(var i = dic.foreary.count-1; i >= 0; i--) {
			foreary[i] = new classobj(window, foreparent);
			foreary[i].restore(dic.foreary[i]);
		}
		for(var i = dic.backary.count-1; i >= 0; i--) {
			backary[i] = new classobj(window, backparent);
			backary[i].restore(dic.backary[i]);
		}
		return dic;	// �q�N���X�̂��߂ɕԂ�
	}
}


// KAGLayersPlugin�N���X��������Ƃ����g�������A���b�Z�[�W���C���Ƀ{�^����
// �z�u���邽�߂̃N���X�B
// ���b�Z�[�W�E�B���h�E�ɂ�������visible/unvisible���ݒ肳���
// �悤�ɂ��邽�߁B
class MessageLayersPlugin extends KAGLayersPlugin
{
	var withmessage;	// ���b�Z�[�W��ʂƈꏏ�ɉB�����ǂ���
	var foreary_visible;	// �B�������� fore �� layer �̕\�����
	var backary_visible;	// �B�������� back �� layer �̕\�����
	var anytimeenabled;	// ���enable���B�ʏ��stable��Ԃł̂�enable

	// �R���X�g���N�^
	function MessageLayersPlugin(classobj, fp, bp, withmessage=true, anytimeenabled=false)
	{
		super.KAGLayersPlugin(kag, classobj, fp, bp);
		this.withmessage = withmessage;
		this.anytimeenabled = anytimeenabled;
		foreary_visible = [];
		backary_visible = [];
	}

	// �u����v( s l p �̊e�^�O�Œ�~�� ) ���A
	// �u���s���v ( ����ȊO ) ���̏�Ԃ��ς�����Ƃ��ɌĂ΂��
	function onStableStateChanged(stable)
	{
		if (anytimeenabled)
			return;
		super.onStableStateChanged(...);
		// ���s���̓��C���𖳌��ɂ���
		setOptions(, 'both', %[ enabled: stable ]);
	}

	// ���b�Z�[�W���C�������[�U�̑���ɂ���ĕ\���E��\������鎞
	// �Ă΂��B���b�Z�[�W���C���ƕ\��/��\���𓯊������邽�ߐݒ�
	function onMessageHiddenStateChanged(hidden)
	{
		if (!withmessage)
			return;
		super.onMessageHiddenStateChanged(...);
		if (hidden) {
			// �B���Ƃ��F���݂̏�Ԃ��L������
			foreary_visible = [];
			backary_visible = [];
			for (var i = foreary.count-1; i >= 0; i--)
				foreary_visible[i] = foreary[i].visible;
			for (var i = backary.count-1; i >= 0; i--)
				backary_visible[i] = backary[i].visible;
			setOptions(, 'both', %[ visible: false ]);
		} 
		else {
			// �\������Ƃ��F���̏�Ԃɖ߂�
			for (var i = foreary.count-1; i >= 0; i--)
				foreary[i].visible = foreary_visible[i];
			for (var i = backary.count-1; i >= 0; i--)
				backary[i].visible = backary_visible[i];
			foreary_visible = [];
			backary_visible = [];
		}
	}

	// ���̂܂܂ł́Ahidden ���ɗv�f�� add/del ���ꂽ�ꍇ���l�����Ă��Ȃ��B
	// �{���́Afore/backary_visible[] �ɒǉ��E����폜���鏈�����K�v�B

	// ���C���̕\�������̏��R�s�[
	function onCopyLayer(toback)
	{
		super.onCopyLayer(toback);
		if (toback)
			backary_visible.assign(foreary_visible); // �\����
		else
			foreary_visible.assign(backary_visible); // �����\
	}

	// ���ƕ\�̊Ǘ���������
	function onExchangeForeBack()
	{
		super.onExchangeForeBack();
		var tmp = [];
		tmp.assign(foreary_visible);
		foreary_visible.assign(backary_visible);
		backary_visible.assign(tmp);
	}

	// �Z�[�u(���b�Z�[�W�������ɃZ�[�u�ł��Ȃ���Εs�v)
	function onStore(f, elm)
	{
		var dic = super.onStore(f, elm);
		dic.withmessage = withmessage;
		dic.foreary_visible = [];
		dic.foreary_visible.assign(foreary_visible);
		dic.backary_visible = [];
		dic.backary_visible.assign(backary_visible);
		dic.anytimeenabled = anytimeenabled;
		return dic;	// �q�N���X�̂��߂ɕԂ�
	}

	// ���[�h(���b�Z�[�W�������ɃZ�[�u�ł��Ȃ���Εs�v)
	function onRestore(f, elm)
	{
		var dic = super.onRestore(f, elm);
		if (dic === void)
			return dic;
		withmessage = dic.withmessage;
		foreary_visible = [];
		if (dic.foreary_visible !== void)
			foreary_visible.assign(dic.foreary_visible);
		backary_visible = [];
		if (dic.backary_visible !== void)
			backary_visible.assign(dic.backary_visible);
//		onMessageHiddenStateChanged(0);
//		������͕s�v�Bsuper.onRestore() ���Őݒ肵�Ă��܂����߁B
		anytimeenabled = dic.anytimeenabled;
		return dic;	// �q�N���X�̂��߂ɕԂ�
	}
}


[endscript]

[return]
