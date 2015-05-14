### Dump
use master-data flag to include the MASTER_LOG_FILE and MASTER_LOG_POS in dump

    mysqldump -u debian-sys-maint -p --single-transaction --routines --triggers --master-data ot_vault |gzip > /var/tmp/dump.gz

### Load dump

    unzip dump.gz
    mysql
    > CREATE DATABASE foo;
    > use foo;
    > source dump

### Begin replication

    CHANGE MASTER TO
    MASTER_HOST='10.0.0.1',
    MASTER_PORT=3306,
    MASTER_USER='rep_user',
    MASTER_PASSWORD='secret',
    MASTER_LOG_FILE='mysql-bin.000001',
    MASTER_LOG_POS=21120604;
