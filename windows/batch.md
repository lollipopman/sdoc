rem Hack to grab current directory where script was called
pushd %~dp0
dir
SecureW2_Enterprise_Client_359.exe /PEAP 1 /TTLS 1 /GTC 1 /Service 1 /Tray 1 /S /Q
echo "Install Complete"
pause
