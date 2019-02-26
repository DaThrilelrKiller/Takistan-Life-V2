@echo off
title Server Launcher
SETLOCAL ENABLEEXTENSIONS
color 2

:v64_path_a2
For /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\Bohemia Interactive Studio\ArmA 2" /v "MAIN"') Do (set _ARMA2=%%B)

IF NOT DEFINED _ARMA2 (GOTO v32_path_a2) ELSE (GOTO v64_path_a2oa)

:v32_path_a2
For /F "Tokens=2* skip=2" %%C In ('REG QUERY "HKLM\SOFTWARE\Bohemia Interactive Studio\ArmA 2" /v "MAIN"') Do (set _ARMA2=%%D)

IF NOT DEFINED _ARMA2 (GOTO uac_PATH_A2) ELSE (GOTO v64_path_a2oa)

:uac_PATH_A2
@FOR /F "tokens=2* delims=	 " %%I IN ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\Bohemia Interactive Studio\ArmA 2" /v "MAIN"') DO (SET _ARMA2=%%J)

IF NOT DEFINED _ARMA2 (GOTO std_PATH_A2) ELSE (GOTO v64_path_a2oa)

:std_PATH_A2
@FOR /F "tokens=2* delims=	 " %%K IN ('REG QUERY "HKLM\SOFTWARE\Bohemia Interactive Studio\ArmA 2" /v "MAIN"') DO (SET _ARMA2=%%L)

IF NOT DEFINED _ARMA2 (GOTO ENDfailA2) ELSE (GOTO v64_path_a2oa)


:v64_path_a2oa
For /F "Tokens=2* skip=2" %%E In ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\Bohemia Interactive Studio\ArmA 2 OA" /v "MAIN"') Do (set _ARMA2OAPATH=%%F)

IF NOT DEFINED _ARMA2OAPATH (GOTO v32_path_a2oa) ELSE (GOTO run)

:v32_path_a2oa
For /F "Tokens=2* skip=2" %%G In ('REG QUERY "HKLM\SOFTWARE\Bohemia Interactive Studio\ArmA 2 OA" /v "MAIN"') Do set (_ARMA2OAPATH=%%H)

IF NOT DEFINED _ARMA2OAPATH (GOTO uac_PATH_A2OA) ELSE (GOTO run)

:uac_PATH_A2OA
@FOR /F "tokens=2* delims=	 " %%M IN ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\Bohemia Interactive Studio\ArmA 2 OA" /v "MAIN"') DO (SET _ARMA2OAPATH=%%N)

IF NOT DEFINED _ARMA2OAPATH (GOTO std_PATH_A2OA) ELSE (GOTO run)

:std_PATH_A2OA
@FOR /F "tokens=2* delims=	 " %%O IN ('REG QUERY "HKLM\SOFTWARE\Bohemia Interactive Studio\ArmA 2 OA" /v "MAIN"') DO (SET _ARMA2OAPATH=%%P)

IF NOT DEFINED _ARMA2OAPATH (GOTO ENDfailA2OA) ELSE (GOTO run)

:run

rem this file copy, copiles, and starts the mission
rem compileing the mission reduces size and helps prevent theft and hacking

for %%I in ("%cd%\..") do set "dir=%%~fI"

xcopy /s/e /y %dir% "%_ARMA2OAPATH%\MPMissions"

SET /P _inputname= Compile (y/n):
IF "%_inputname%"=="y" (GOTO compile) ELSE (GOTO launch)


:compile

FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.fnc" "\t" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.sqf" "\t" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.sqm" "\t" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.hpp" "\t" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.functions" "\t" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.variables" "\t" " "

FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.fnc" "\r\n" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.sqf" "\r\n" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.sqm" "\r\n" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.hpp" "\r\n" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.functions" "\r\n" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.variables" "\r\n" " "

FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.fnc" "\n" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.sqf" "\n" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.sqm" "\n" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.hpp" "\n" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.functions" "\n" " "
FART -r --c-style "%_ARMA2OAPATH%\MPMissions\*.variables" "\n" " "

GOTO launch

:launch

call "%_ARMA2OAPATH%\arma2oaserver.exe" "-mod=%_ARMA2OAPATH%\MPMissions\@inidbi;" "-mod=%_ARMA2%;EXPANSION;ca"  -port=2302 "-config=%_ARMA2OAPATH%\MPMissions\TADST\default\server.cfg" "-cfg=%_ARMA2OAPATH%\MPMissions\TADST\default\basic.cfg" "-profiles=%_ARMA2OAPATH%\MPMissions\TADST\default" -name=default

echo Server is launching
timeout /t 10

:ENDfailA2
cls
echo it appears that Arma 2 is not installed on this machine
pause

:ENDfailA2OA
cls
echo it appears that Arma 2 Operation Arrowhead is not installed on this machine
pause




