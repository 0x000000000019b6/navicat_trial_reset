@echo off

echo Delete HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Update
reg delete HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Update /f

echo Delete HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\RegistrationXXX

for /f %%i in ('"REG QUERY "HKEY_CURRENT_USER\Software\PremiumSoft\Navicat" /s | findstr /L Registration"') do (
    reg delete %%i /va /f
)

echo Delete Info folder under HKEY_CURRENT_USER\Software\Classes\CLSID

for /f %%i in ('"REG QUERY "HKEY_CURRENT_USER\Software\Classes\CLSID" /s | findstr /E Info"') do (
     reg delete %%i /va /f
)

echo Delete ShellFolder under HKEY_CURRENT_USER\Software\Classes\CLSID

for /f %%i in ('"REG QUERY "HKEY_CURRENT_USER\Software\Classes\CLSID" /s | findstr /E ShellFolder"') do (
     reg delete %%i /va /f
)