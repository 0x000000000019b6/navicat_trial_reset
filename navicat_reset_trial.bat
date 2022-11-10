@echo off

for /f %%i in ('"REG QUERY "HKEY_CURRENT_USER\Software\PremiumSoft\Navicat" /s | findstr /L Registration"') do (
	echo Delete Registration: %%i
    reg delete %%i /va /f
)
echo.


for /f %%i in ('"REG QUERY "HKEY_CURRENT_USER\Software\Classes\CLSID" /s | findstr /E Info"') do (
	echo Delete Info folder under: %%i
    reg delete %%i /va /f
)
echo.

echo Finish

pause