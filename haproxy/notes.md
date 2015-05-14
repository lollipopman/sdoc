echo "show stat" | sudo socat unix-connect:/tmp/haproxy-stats stdio
echo "show stat" | socat unix-connect:/tmp/haproxy-stats stdio | cut -d, -f1-7,18,24 | column -t -s,
