@echo off
title Pro@ANDROXUS360
mode 1000
color ac
echo '							'
echo '   NEED SOME PROTECTION_?	'
echo ' 							'
echo '							'
pause
cls
echo =============================================================================
echo ======WARNING THIS PROGRAM IS PERFECTLY WORKS WITH WINDOWS 10 or 8!!=========
echo ========CLOSE THIS PROGRAM IF YOU'RE USING ANOTHER VERSION!!=================
echo =============================================================================
:Begin
pause
cls
echo Please Be Advise That My Program is Only PROTECT you From Tricky Ransomwares
echo =============================================================================
echo =========WARNING THIS PROGRAM NEEDS AN ADMINISTRATIVE RIGHTS=================
echo =============================================================================
echo This Program Will do some dirty jobs, like :
echo 1. Checking That You're Vulnerable or Not (2 Steps in it)
echo 2. Trying to Close 2 Flawed Ports
echo 3. Enable Firewall to All Profile
echo 4. Adding a Little Trap for Ransomware in Registry Key...lol 
echo 5. Completely DISABLE SMBv1 Server and Client
echo 6. Adding more Trap for Ransomware in Registry Key...lol
echo 7. Restarting Computer to Takes the Effects...
echo .
echo . 
echo Once This is Started, KEEP FOLLOWING THE INSTRUCTION HERE!
echo Are You F##Kin Sure want to continue???
echo 1. Yes
echo 2. HELL NOPE!
echo 3. Please dont do something stupid on my computer, im not really got into computer stuffs... [ONLY STEPS 5 AND 6 WILL BE PERFORMED]
SET input=nothing
set /p input=Choice : 
IF %%input%%==1 CALL :1
IF %%input%%==2 exit
IF %%input%%==3 CALL :5
:1
cls
title Pro@ANDROXUS360 - Checking...
echo if there are some results here, it means you're likely VULNERABLE!
pause
powershell get-smbserverconfiguration
echo if "Enable SMB Protocol 1" is true, it means You're HIGHLY VULNERABLE!
pause
CALL :2
:2
cls
title Pro@ANDROXUS360 - Closing 2 Ports...
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=in action=block protocol=TCP localport=445
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=in action=block protocol=UDP localport=445
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=out action=block protocol=TCP localport=445
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=out action=block protocol=UDP localport=445
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=in action=block protocol=TCP localport=139
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=in action=block protocol=UDP localport=139
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=out action=block protocol=TCP localport=139
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=out action=block protocol=UDP localport=139
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=in action=block protocol=TCP localport=3389
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=in action=block protocol=UDP localport=3389
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=out action=block protocol=TCP localport=3389
netsh advfirewall firewall add rule name="4NDR0XUS SMB PROTECT1" dir=out action=block protocol=UDP localport=3389
echo SUCCESS!
pause
CALL :3
:3
title Pro@ANDROXUS360 - Enabling Firewall...
netsh advfirewall set domainprofile state on
netsh advfirewall set privateprofile state on
echo SUCCESS!
pause
CALL :4
:4
title Pro@ANDROXUS360 - Adding a Little Trap...
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SMB1" /t REG_DWORD /d "0" /f
echo SUCCESS!
pause
CALL :5
:5
title Pro@ANDROXUS360 - Disabling SMBv1...
powershell disable-windowsoptionalfeature -online -featurename smb1protocol
echo SUCCESS!
CALL :6
:6
title Pro@ANDROXUS360 - Adding More Trap...
Reg.exe add "HKCU\SOFTWARE\Microsoft\Office\11.0\Word\Security" /v "VBAWarnings" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Office\12.0\Word\Security" /v "VBAWarnings" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Office\14.0\Word\Security" /v "VBAWarnings" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Office\15.0\Word\Security" /v "VBAWarnings" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Office\16.0\Excel\Security" /v "VBAWarnings" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Office\16.0\Outlook\Security" /v "VBAWarnings" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Office\16.0\PowerPoint\Security" /v "VBAWarnings" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Office\16.0\Word\Security" /v "VBAWarnings" /t REG_DWORD /d "3" /f
echo SUCCESS!
pause
CALL :7
:7
title Pro@ANDROXUS360
echo Your Computer Needs Restarting to Take Effects, Please Close Any Opened Program Before Continue...
pause
msg * IF THIS PROGRAM NOT WORKING PLEASE TELL ME VIA JOGI GROUP!
shutdown /c "Need Restarting to takes effects" /r /t 30
exit
