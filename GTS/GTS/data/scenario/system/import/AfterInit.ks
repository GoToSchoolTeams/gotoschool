;���ǖ��ǃX�L�b�v�̃v���O�C��
;�wsf.skipall�x�ϐ����wtrue�x�ɂ������ɖ��ǂ̃e�L�X�g���X�L�b�v����悤�ɂȂ�܂�.

[iscript]

//����������̂őO�̊֐���ۑ�
kag.getCurrentRead_org = kag.getCurrentRead;
kag.getCurrentRead = function(){
// sf.skipall �� true �Ȃ疢�ǂ��X�L�b�v���܂�
if(sf.skipall) return true;
// ����������O�̊֐������s����
return kag.getCurrentRead_org();
} incontextof kag;

[endscript]

[return]
