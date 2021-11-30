; ���ɒ�`�ς݂Ȃ炷���߂�
[return cond="typeof(global.saveAnywhere_object) != 'undefined'"]

; �ȉ��A����`�̎��̂ݎ��s

; �u�ǂ��ł��Z�[�u�v���O�C�����vby KAICHO
; ���ǔ�������������}�V�ɂ����ǂ��ł��Z�[�u�v���O�C���B

; 2011/09/22	0.51	�Ȃ����Ō�ɕs�v��[endif]���������̂ō폜�B�ǂ�����
;			���܂ŃG���[�ɂȂ�Ȃ������̂��H
; 2011/09/03	0.5	�g��call�L�����̎����Đ����A���ǔ�����Ԉ���Ă����̂�
;			onAfterReturn��setUserSpeed()��ǉ�
;			���ƕ\�L�̐���
; 2011/08/13	0.31	onAfterReturn��labelstack����̎��ɃG���[�ɂȂ��Ă��̂�
;			�C��
; 2011/07/03	0.3	curLabel��""�̎��ɁA[return]��":1"�Ȃǂ�ǉ����Ȃ�
;			�悤�ɕύX�B":1"�A":2" �Ȃǂ��Z�[�u�����̂�h������
; 2011/05/06	0.2	[iscript]���̍s���� * �����


[iscript]
/*
	�ǂ��ł��Z�[�u�v���O�C��
 [iscript]���ł͓���*�������Ȃ����ƁI*/
class SaveAnywherePlugin extends KAGPlugin
{
	var enabled;		// �L���E�����t���O
	var labelstack;		// ���x��No�̃X�^�b�N
	var extend_call;	// SaveAnywhere�p��[call]�^�O�g���t���O
	var pagenamestack;	// PageName�̃X�^�b�N

	var org_onLabel;	// ���x���ʉߎ��̃I���W�i������
	var org_onCall;		// [call]�Ăяo�����̃I���W�i������
	var org_onReturn;	// [return]���̃I���W�i������(extraConductor)
	var org_onAfterReturn;	// [return]�̌�̃I���W�i������

	// �R���X�g���N�^
	function SaveAnywherePlugin(window, extend_call_flag = false)
	{
		super.KAGPlugin();
		this.window = window;
		enabled		  = true;
		labelstack        = [ int(1) ];
		extend_call       = extend_call_flag;
		pagenamestack	  = [];

		var main = window.mainConductor, extra = window.extraConductor;

		// main/extra�R���_�N�^�̃n���h��������������������
		org_onLabel       = main.onLabel;
		org_onCall        = main.onCall;
		org_onReturn      = extra.onReturn;
		org_onAfterReturn = main.onAfterReturn;

		main.onLabel       = main_onLabel       incontextof main;
		main.onCall        = main_onCall        incontextof main;
		extra.onReturn     = extra_onReturn     incontextof extra;
		main.onAfterReturn = main_onAfterReturn incontextof main;
	}

	// �f�X�g���N�^
	function finalize()
	{
		invalidate labelstack;
		invalidate pagenamestack;

		var main = window.mainConductor, extra = window.extraConductor;

		main.onLabel       = org_onLabel;
		main.onCall        = org_onCall;
		extra.onReturn     = org_onReturn;
		main.onAfterReturn = org_onAfterReturn;
		super.finalize(...);
	}

	// onLabel(���x���ʉߎ�)�ɁAlabelno�����Z�b�g���鏈����ǉ��B
	function main_onLabel(label, page) // incontextof window.mainConductor
	{
		// "*label_anywhere"�ȊO�̃��x������No��1�ɂ���
		if (label != "*label_anywhere")
			saveAnywhere_object.labelstack[0] = int(1);
		// �ȉ��I���W�i���Ɠ����B�[���I���W�i���͂��ꂾ���B
		return saveAnywhere_object.org_onLabel(...);
	}

	// onCall([call]�^�O�g�p��)�ɁAlabelno��ۑ����鏈����ǉ�
	function main_onCall() // incontextof window.mainConductor
	{
		if (saveAnywhere_object.extend_call) {
			// �g��call�Ȃ炱���ŒʉߋL�^���Ƃ�
			kag.incRecordLabel(true);
			// �y�[�W����ۑ����Ă���(void�̎����l���K�v�H)
			saveAnywhere_object.pagenamestack.push(kag.currentPageName);
		}
		// ���݂�label/labelstack��ۑ�����([0]��1��push)
		saveAnywhere_object.labelstack.insert(0, int(1));
		// �ȉ��I���W�i���Ɠ���
		return saveAnywhere_object.org_onCall(...);
	}

	// onReturn([returnl]��)�ɁAlabelno�𕜋A���鏈����ǉ�
	// ���ʗv���̂����AextraConductor����̍ŏIreturn�̏ꍇ�A
	// kag.currentLabel��kag.currentRecordName���߂��Ă��܂��̂ŁB
	function extra_onReturn() // incontextof window.extraConductor
	{
		// �܂��I���W�i�����Ă�
		var ret= saveAnywhere_object.org_onReturn(...);
		// �Z�[�u���x��(�[���ʉߋL�^���x��)�ݒ�
		saveAnywhere_object.overwriteCurrentLabel();
		return ret;
	}

	// onAfterReturn([returnl]��)�ɁAlabelno�𕜋A���鏈����ǉ�
	function main_onAfterReturn() // incontextof window.mainConductor
	{
		// �܂��I���W�i�����Ă�
		var ret= saveAnywhere_object.org_onAfterReturn(...);

		// labelstack����O�ɖ߂�([0]���폜����)�A�ݒ肷��
		if (saveAnywhere_object.labelstack.count > 0)
			saveAnywhere_object.labelstack.erase(0);
		saveAnywhere_object.overwriteCurrentLabel();

		if (saveAnywhere_object.extend_call) {
			// �g��call�Ȃ炱���ŐV���x����ݒ�
			saveAnywhere_object.setCurrentLabel();
			// �g���R�[���Ȃ�y�[�W�������ɖ߂�
			var p=saveAnywhere_object.pagenamestack.pop();
			kag.currentPageName = p;
			kag.pcflags.currentPageName = p;
			// �ŁA���̂Ƃ��I���W�i���ł� setUserSpeed()��
			// �������x���ݒ肳�ꂿ����Ă�̂ŁA����������ɖ߂�
			kag.setUserSpeed();
		}
		// �X�L�b�v�`�F�b�N(mainConductor�Ȃ̂�extra�`�F�b�N�͕s�v)
		if (!kag.getCurrentRead() && kag.skipMode != 4)
			kag.cancelSkip(); // ���ǁA�X�L�b�v��~
		return ret;
	}

	// kag.currentLabel��kag.currentRecordName���㏑������
	function overwriteCurrentLabel()
	{
		var labelno = int(labelstack[0]);
		if (labelno > 1) { // ����[label]��ʉ߂��Ă���
			kag.currentLabel += ':' + (+labelno-1);
			kag.setRecordLabel(kag.conductor.curStorage,
					   kag.currentLabel);
		}
	}

	// �Z�[�u���鎞�̓���
	function onStore(f, elm)
	{
		var dic = f.saveanywhere = %[];
		dic.labelstack = [];
		(Array.assign incontextof dic.labelstack)(labelstack);
		dic.pagenamestack = [];
		dic.pagenamestack.assign(pagenamestack);
		dic.extend_call = extend_call;
	}
	// ���[�h���鎞�̓���
	function onRestore(f, clear, elm)
	{
		var dic = f.saveanywhere;
		if (dic === void) {
			labelstack  = [ int(0) ];
			extend_call = false;
		} else {
			(Array.assign incontextof labelstack)(dic.labelstack);
			extend_call = dic.extend_call;
			pagenamestack.assign(dic.pagenamestack);
		}
	}

	// ���݂̃��x��(=call�O�̃��x��)�����ɁA(���ǔ���̂��߂�)
	// curRecordName��ݒ�B�ݒ肷�邾���ŃZ�[�u���Ȃ��B
	// ���́A���̃��x�����͊��ǔ���̂��߂����ɕK�v�B�Z�[�u�֌W��
	// *label_anywhere�ɂ�(�X�^�b�N���݂�)��������邩��B
	function setCurrentLabel()
	{
		var cdt = kag.conductor;
		if (cdt.curLabel == "")
			kag.currentLabel = "";
		else
			kag.currentLabel = cdt.curLabel+':'+ labelstack[0]++;
		kag.setRecordLabel(cdt.curStorage, kag.currentLabel);
	}
}

// �f�t�H���g�Ŋg��call�g���悤�ɂ���������B�����̂��ȁB
kag.addPlugin(global.saveAnywhere_object = new SaveAnywherePlugin(kag, true));

[endscript]

;��label�}�N��
[macro name="label"]
[if exp="saveAnywhere_object.enabled"]
	; extend_call�t���O������ƁAcall���O�̃��x���ƒ���̃��x���������I��
	; �ύX(":3"�Ƃ��t����)���Ċ��ǔ���z��Ɋi�[����B
	[eval exp="mp.extend_call_save = saveAnywhere_object.extend_call"]
	[eval exp="saveAnywhere_object.extend_call = true"]

	; *label_anywhere���Z�[�u�\���x���Ƃ��Đݒ�
	[call storage="saveAnywhere.ks" target="*label_anywhere"]

	; extend_call�t���O�����ɖ߂�
	[eval exp="saveAnywhere_object.extend_call = mp.extend_call_save"]
[endif]
[endmacro]


;��saveanywhere�}�N��(enabled=true|false)
[macro name="saveanywhere"]
[eval exp="saveAnywhere_object.enabled = +mp.enabled"]
[endmacro]


[return]


;---------------------------------------
;���ǂ��ł��Z�[�u�p�T�u���[�`��
*label_anywhere|
[return]

