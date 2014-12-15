Set WshShell = CreateObject("WScript.Shell" )
WshShell.Run chr(34) &amp; "C:\ncat\nc.bat" &amp; Chr(34), 0
Set WshShell = Nothing
