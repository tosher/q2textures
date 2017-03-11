@echo off
set arc_name=q2textures-master
set pakmanzip=qpakman-062b.zip
set pak="%~dp0qpakman.exe"

for /f "tokens=1-2*" %%A in ('reg query HKEY_CURRENT_USER\Software\7-Zip /v path ^| find "REG_SZ"') do set arc=%%C7z.exe

if defined arc goto unzip

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

for /d %%i in (
  *clr*png*
  *bw*png*
  *clr*jpg*
  *bw*jpg*
  *md2*
) do (
  pushd %%i
  %pak% * -g quake2 -o ..\..\%%i.pak
  popd
)

popd 

rd /s /q %arc_name% 
del /q qpakman.exe
del /q qpakman.txt
del /q qpakman-linux
del /q source-qpakman-062.zip
pause