### Console
    telnet localhost 5582

- Reload groups

    module:reload("groups")
    printf 'module:reload("groups")\n'|nc localhost 5582

- List Users

    c2s:show("example.com")
