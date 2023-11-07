Set WshShell = CreateObject("WScript.Shell")

WshShell.Run "cmd /c navicat_reset_trial.bat", 0, True

WshShell.Run "navicat.exe", 0, True