## Adding aliases for a relay host

In /etc/postfix/main.cf remove the `alias_maps` and `alias_database` like so:

        #alias_maps = hash:/etc/aliases
        #alias_database = hash:/etc/aliases
        virtual_alias_maps = hash:/etc/postfix/virtual

Then add something like this to `/etc/psotfix/virtual_aliases`:

        root    realuser@example.tld
        user    realuser@example.tld

To make that active run:

        sudo postmap /etc/postfix/virtual
        sudo service postfix reload
