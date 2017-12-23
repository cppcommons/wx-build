set SCRIPT=%~0
for /f "delims=\ tokens=*" %%z in ("%SCRIPT%") do (set SCRIPT_CURRENT_DIR=%%~dpz)

SET WXWIDGETS=%SCRIPT_CURRENT_DIR%wxWidgets-3.1.0
cd /d "%WXWIDGETS%\build\msw"

nmake -nologo -f makefile.vc SHARED=0 BUILD=debug    CFLAGS="/MT" CXXFLAGS="/MT"
nmake -nologo -f makefile.vc SHARED=0 BUILD=release  CFLAGS="/MT" CXXFLAGS="/MT"

cd /d "%WXWIDGETS%\samples\webview"
nmake -f makefile.vc BUILD=release CXXFLAGS="/MT"
