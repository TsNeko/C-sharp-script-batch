@echo off

set csc=%windir%\Microsoft.NET\Framework\v4.0.30319\csc
set projects=%USERPROFILE%\Documents\Visual Studio 2015\Projects

if not exist "%~1" ( echo Please drag and drop cs file. & pause & goto :eof )

find "Debug=on" "%~1" > nul
if errorlevel 1 ( goto :no_debug )

:debug
	if exist "%projects%\cs_script_now" ( rmdir /S /Q  "%projects%\cs_script_now" )
	mkdir  "%projects%\cs_script_now"
	xcopy /E /Y /Q  "%projects%\cs_script"  "%projects%\cs_script_now" > nul
	@echo on
	copy  "%~1"  "%projects%\cs_script_now\Program.cs" > nul
	@echo off
	echo.
	echo C# �X�N���v�g���f�o�b�O�p�v���W�F�N�g�ɃR�s�[���܂����B
	start "" "%projects%\cs_script_now\ConsoleApplication1.sln"
	echo.
	echo �f�o�b�K�[���N�����ł� ...
	echo �N��������A�\�� ^>^> �\�����[�V���� �G�N�X�v���[���[ ^>^> Program.cs ��I��ł��������B
	echo �f�o�b�K�[������瑱�s���Ă��������B�f�o�b�O�p�v���W�F�N�g�ŕҏW�������e�����̏ꏊ�ɃR�s�[���܂��B
	pause
	@echo on
	copy  "%projects%\cs_script_now\Program.cs"  "%~1"
	@echo off
	echo.
	echo ���̃E�B���h�E�͕��邱�Ƃ��ł��܂��B
	pause > nul

goto :eof

: no_debug
	if exist "%projects%\cs_script_now" ( rmdir /S /Q  "%projects%\cs_script_now" )
	mkdir  "%projects%\cs_script_now" > nul
	copy  "%~1"  "%projects%\cs_script_now\Program.cs" > nul
	pushd  "%projects%\cs_script_now"
	"%csc%"  /nologo  "Program.cs" > "%projects%\cs_script_now\build.log"
	popd

	shift & shift
	set is_cmd=0
	if "%~0" == "/c" ( set is_cmd=1 & shift )
	if exist "%projects%\cs_script_now\Program.exe" (
		"%projects%\cs_script_now\Program.exe"  %0 %1 %2 %3 %4 %5 %6 %7 %8 %9
		if "%is_cmd%" == "0" (
			echo.
			echo ���̃E�B���h�E�͕��邱�Ƃ��ł��܂��B
		)
	) else (
		type  "%projects%\cs_script_now\build.log"
		echo �R���p�C�� �G���[���������܂����B
	)
	if "%is_cmd%" == "0" ( pause > nul )

goto :eof
