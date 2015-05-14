# install

   - grab latest hpacucli rpm from hp
   - use alien to turn into deb

    apt-get install libstdc++2.10-glibc2.2
    dpkg -i hpacucli_7.85-19_i386.deb

# hpacucli

   - view controllers

        ctrl all show config
        ctrl all show status
        ctrl all show detail

   - specific controller

        ctrl sn=P44940LDAOVZMO show config

   - blink array lights

        ctrl sn=P44940LDAOVZMO array B modify led=on
        ctrl sn=P44940LDAOVZMO physicaldrive 2:2 modify led=off

   - delete array

        ctrl sn=P44940LDAOVZMO array B delete

   - add spare

        ctrl sn=P44940LDAOVZMO array A add spares=2:2
