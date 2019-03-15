title Server Launcher
SETLOCAL ENABLEEXTENSIONS
@echo off

set _ARMA2OAPATH=C:\Program Files (x86)\Steam\steamapps\common\Arma 2 Operation Arrowhead
set _ARMA2=C:\Program Files (x86)\Steam\steamapps\common\Arma 2
set _PBOMan=C:\Program Files\PBO Manager v.1.4 beta
GOTO run


:run
for %%I in ("%cd%\..") do set "dir=%%~fI"

del /f /s /q %temp%\TLX\tlx_client.Takistan 1>nul
del /f /s /q %temp%\TLX\tlx_server 1>nul

xcopy /s/e /y %dir% "%temp%\TLX"

FART -r --c-style "%temp%\TLX\*.fnc" "\t" " "
FART -r --c-style "%temp%\TLX\*.sqf" "\t" " "
FART -r --c-style "%temp%\TLX\*.sqm" "\t" " "
FART -r --c-style "%temp%\TLX\*.hpp" "\t" " "
FART -r --c-style "%temp%\TLX\*.functions" "\t" " "
FART -r --c-style "%temp%\TLX\*.variables" "\t" " "

FART -r --c-style "%temp%\TLX\*.fnc" "\r\n" " "
FART -r --c-style "%temp%\TLX\*.sqf" "\r\n" " "
FART -r --c-style "%temp%\TLX\*.sqm" "\r\n" " "
FART -r --c-style "%temp%\TLX\*.hpp" "\r\n" " "
FART -r --c-style "%temp%\TLX\*.functions" "\r\n" " "
FART -r --c-style "%temp%\TLX\*.variables" "\r\n" " "

FART -r --c-style "%temp%\TLX\*.fnc" "\n" " "
FART -r --c-style "%temp%\TLX\*.sqf" "\n" " "
FART -r --c-style "%temp%\TLX\*.sqm" "\n" " "
FART -r --c-style "%temp%\TLX\*.hpp" "\n" " "
FART -r --c-style "%temp%\TLX\*.functions" "\n" " "
FART -r --c-style "%temp%\TLX\*.variables" "\n" " "

cd %_ARMA2OAPATH%\TLX\tlx_client.Takistan\
"%_PBOMan%\PBOConsole.exe" -pack %temp%\TLX\tlx_client.Takistan %temp%\TLX\tlx_client.Takistan.pbo

xcopy  /y %temp%\TLX\tlx_client.Takistan.pbo "%_ARMA2OAPATH%\MPMissions"
xcopy /s/e /y %temp%\TLX\tlx_server "%_ARMA2OAPATH%\MPMissions\tlx_server"

call "%_ARMA2OAPATH%\arma2oaserver.exe" "-mod=%_ARMA2OAPATH%\@TLX;" "-mod=%_ARMA2%;EXPANSION;ca"  -port=2302 "-config=%_ARMA2OAPATH%\TADST\default\server.cfg" "-cfg=%_ARMA2OAPATH%\TADST\default\basic.cfg" "-profiles=%_ARMA2OAPATH%\TADST\default" -name=default

pause

