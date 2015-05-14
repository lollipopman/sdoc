## mount share

    mount -t cifs -o user=jwh,uid=jwh //test01/tmp /mnt

## mount a mac osx lion share

     sudo mount -t cifs //foo/bar /mnt -o "nounix,noserverino,sec=ntlmssp,user=potto,uid=potto"

## set password to never expire

  1. sambaAcctFlags: [UX]
    - X: (no password expiration)
  1. remove sambaPwdMustChange

## graceful restart will not interrupt users

    /etc/init.d/samba reload

## administrator password (otherwise you will get Connection to LDAP server failed for the 1 try!)

    smbpasswd -W

## force user to change password on next logon (ns3)

    smbldap-usermod -B 1 <username>

## force user to change password on next logon (ldap)

    sambaPwdMustChange: 0

## map group (smb)

    net groupmap ntgroup=Development type=domain unixgroup=dvl

## list of mapped groups (smb)

    net groupmap list

## to get ability to add/change/modify user/group using mmc or net command follow the instructions:

    <http://www.iallanis.info/smbldap-tools/docs/samba-ldap-howto/>

## create home directory (on smb)

    /potto/bin/luserinit_smb -u <uid>
