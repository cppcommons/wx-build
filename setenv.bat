@set PATH=C:\Windows\System32
@set PATH=%PATH%;C:\Program Files\Microsoft VS Code\bin
::@set PATH=%PATH%;C:\dm\bin
@set PATH=%PATH%;E:\opt\cmder-v1.3.3\vendor\git-for-windows\cmd
@set PATH=%PATH%;E:\opt\bin32
::call "C:\Program Files (x86)\Microsoft Visual Studio\VC98\Bin\VCVARS32.BAT"
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86
@echo on
git config --global core.autoCRLF false
git config --global user.name  root
git config --global user.email root@super-computer
git config --unset-all credential.helper
git config --global --unset-all credential.helper
git config --global credential.helper manager
git config --global credential.useHttpPath true

@set PATH=E:\d-dev\d17\d17.m32\mingw32\bin;%PATH%
