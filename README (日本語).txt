=== C# script batch 1.00 ===

C# ������X�N���v�g�̂悤�ɂ����Ɏ��s����o�b�` �t�@�C���ł��B
Windows 7/10 �Ńv���C���X�g�[������Ă��� C# �R���p�C���[���g���Ď��s���܂��B
bash (Ubuntu Linux) �ł́Amono ���C���X�g�[�����Ă��������B


C# (.cs) �̃T���v���F Hello, world! �ƕ\�����܂��B
---------------------------------------------------------
using  s = System;  // Alias "s::"

class MainClass
{
	static void  Main()
	{
		s::Console.WriteLine( "Hello, world!" );
	}
}
---------------------------------------------------------

.cs �t�@�C�����_�u���N���b�N���āAcs_script.bat �ŊJ���悤�ɐݒ肵�Ă��������B
�o�b�`�t�@�C���� WSH (VBScript/JScript) �Ɠ��l�� C# �����s�ł���悤�ɂȂ�܂��B
�ݒ肵�Ȃ��Ă��A.cs �t�@�C���� cs_script.bat �Ƀh���b�O���h���b�v����Ύ��s�ł��܂��B

�����ӂ̂��� .cs �t�@�C�������s���Ȃ��悤���ӂ��Ă��������I

�R�}���h �v�����v�g������s����Ƃ��́A/c �I�v�V������t����ƏI�����ɃL�[���͂�
�҂��Ȃ��Ȃ�܂��B
��F
---------------------------------------------------------
cs_script.bat  new.cs  /c  Parameter1
---------------------------------------------------------

bash ������s����Ƃ��́Acs-script ������s���܂��B
��F
---------------------------------------------------------
./cs-script  new.cs  Parameter1
---------------------------------------------------------

.cs �t�@�C���ɁA// Debug=on �̋L�q������ƁA�f�o�b�K�[���N�����܂��B
�������AVisual Studio Express 2015 for Windows Desktop �Ȃǂ��C���X�g�[������Ă��āA
���[�U�[�̃h�L�������g �t�H���_�[�� Visual Studio 2015\Projects\cs_script ��
cs_script_project.zip �̓��e���W�J����Ă���K�v������܂��B

bash ���́A�f�o�b�K�[�ɑΉ����Ă��܂���B

C# �R���p�C���[�̃o�[�W������A�f�o�b�O�p�v���W�F�N�g����ύX����Ƃ��́A
cs_script.bat ��ҏW���Ă��������B


cs_script ver 1.00
cs_script is provided under 3-clause BSD license.
Copyright (C) 2016 Sofrware Design Gallery "Sage Plaisir 21" All Rights Reserved.

�\�t�g�E�F�A�f�U�C���� Sage Plaisir 21  http://www.sage-p.com/

