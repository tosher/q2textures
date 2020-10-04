@echo off
set arc_name=q2textures-master
set pakmanzip=qpakman-062b.zip
set pak="%~dp0qpakman.exe"

for /f "tokens=1-2*" %%A in ('reg query HKEY_CURRENT_USER\Software\7-Zip /v path ^| find "REG_SZ"') do set arc="%%C7z.exe"

if exist %arc% goto unzip

for %%i in (
  "%ProgramFiles(x86)%\WinRAR\WinRAR.exe"
  "%ProgramFiles%\WinRAR\WinRAR.exe"
  "%ProgramFiles(x86)%\7-Zip\7z.exe"
  "%ProgramFiles%\7-Zip\7z.exe"
) do if exist %%i set arc=%%i

if not defined arc (cls & color c & echo 7zip or WinRar not found... & pause > nul & exit /b)

:unzip

echo "Unpacking pakman in %~dp0..."
%arc% x -y %pakmanzip%

if exist %arc_name%.zip (
  echo "Unpacking textures in %~dp0..."
  %arc% x -y %arc_name%.zip
  pushd %arc_name%
)

set paks=pak96_env pak97_models pak98_pics pak99_textures pak95_models_bright

for /d %%i in (%paks%) do (
  pushd %%i
  %pak% * -g quake2 -o ..\..\%%i.pak
  popd
)
popd

echo ------------
echo Result paks:

for /d %%i in (%paks%) do (
  call :show_normalized %~dp0..\%%i.pak
)

echo All paks were builded successfully

if exist %arc_name% (
  rd /s /q %arc_name%
)
del /q qpakman.exe
del /q qpakman.txt
del /q qpakman-linux
del /q source-qpakman-062.zip
pause
EXIT /B 0

:show_normalized
  FOR %%d IN (%1) do set res=%%~fd
  echo %res%
  EXIT /B