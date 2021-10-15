@echo off
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    goto :start 
) ELSE (
    echo Please run as Administrator
	pause >nul
	exit
)
:start
cd c:\
powershell -command "Invoke-WebRequest https://files.catbox.moe/991gz5 -OutFile volumeid.exe"
set /a x1=%random% %%9 +1
set /a x2=%random% %%9 +1
set /a x3=%random% %%9 +1
set /a x4=%random% %%9 +1
set /a x5=%random% %%9 +1
set /a x6=%random% %%9 +1
set /a x7=%random% %%9 +1
set /a x8=%random% %%9 +1
volumeid c: %x1%%x2%%x3%%x4%-%x5%%x6%%x7%%x8%
del /s /q c:\volumeid.exe
shutdown /r /t 0
