sudo apt-get install auditd
sudo auditctl -a exit,always -F arch=b64 -F a0=2 -F a1=2 -S socket -k SOCKET
sudo ausearch -i -ts today -k SOCKET
strace -f -x -e trace=network dig mbuki-mvuki.org
