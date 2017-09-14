@echo off
Color a
echo Executing script
ping -n 2 localhost > nul
echo Processing dependencies
choice /M "Do you wish to generate An OpenVPN Encryption Key"
If Errorlevel 2 Goto No
If Errorlevel 1 Goto Yes

:No
ping -n 2 localhost > nul
Echo Quiting Now 
:End


:Yes
Echo Executing Generating Script
ping -n 2 localhost > nul
"C:\Program Files\OpenVPN\bin\openvpn.exe" --pause-exit --verb 3 --genkey --secret "C:\Program Files\OpenVPN\config\key.txt"
ping -n 2 localhost > nul
Echo Key Generated sucessfully
:End