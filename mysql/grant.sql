FLUSH PRIVILEGES;

-- executed commands
GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'192.168.139.60'
IDENTIFIED BY 'potto';

GRANT SELECT,UPDATE,INSERT,DELETE on corp_treasury.* to 'nobody'@'192.168.40.12'
IDENTIFIED BY 'web';

GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'192.168.139.58'
IDENTIFIED BY 'potto';

GRANT SELECT,UPDATE,INSERT,DELETE on corp.* to 'nobody'@'192.168.40.12'
IDENTIFIED BY 'bbbweb';

GRANT SELECT,UPDATE,INSERT,DELETE on potto.* to 'merrill'@'192.168.40.12'
IDENTIFIED BY 'autobid';

GRANT SELECT,UPDATE,INSERT,DELETE on potto.* to 'merrill'@'192.168.50.10'
IDENTIFIED BY 'autobid';

GRANT SELECT,UPDATE,INSERT,DELETE on potto.* to 'mrscript'@'testdb01.example.com'
IDENTIFIED BY 'ekhuabva';

GRANT SELECT,UPDATE,INSERT,DELETE on bbb.* to 'morgan'@'192.168.50.10' IDENTIFIED BY 'autobid';

GRANT SELECT,UPDATE,INSERT,DELETE on bbb.* to 'merrill'@'192.168.50.10' IDENTIFIED BY 'autobid';

GRANT SELECT,UPDATE,INSERT,DELETE on bbb.* to 'merrill'@'192.168.40.12' IDENTIFIED BY 'autobid';

GRANT LOCK TABLES,SELECT,UPDATE,INSERT,DELETE on bbb.* to 'morgan'@'192.168.40.12' IDENTIFIED BY 'autobid';

GRANT ALL PRIVILEGES ON *.* TO 'kt'@'testdb02.example.com';

GRANT ALL PRIVILEGES ON *.* TO 'sun'@'colossus.example.com' IDENTIFIED BY 'yobmafou';

GRANT ALL PRIVILEGES ON *.* TO 'sun'@'openvpn.example.com' IDENTIFIED BY 'yobmafou';

delete from user where Host = '192.168.105.201';

GRANT SELECT,UPDATE,INSERT,DELETE on potto.* to 'offermapping'@'192.168.105.7'
IDENTIFIED BY 'RealTimeTheOldWay';

GRANT SELECT,UPDATE,INSERT,DELETE,CREATE TEMPORARY TABLES on credit_derivs_loan.* to 'creditderivs'@'192.168.50.110'
IDENTIFIED BY 'creditderivs';

GRANT SELECT,UPDATE,INSERT,DELETE,CREATE TEMPORARY TABLES on credit_derivs_loan.* to 'creditderivsloan'@'192.168.50.110'
IDENTIFIED BY 'creditderivsloan';

GRANT LOCK TABLES,SELECT,UPDATE,INSERT,DELETE on credit_derivs_loan.* to 'creditderivsloan'@'192.168.50.110'
IDENTIFIED BY 'creditderivsloan';

-- here we go, here we go

GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'192.168.139.58' IDENTIFIED BY 'potto';

-- bidsource
GRANT SELECT,UPDATE,INSERT,DELETE on *.* to 'nobody'@'test02.example.com'
IDENTIFIED BY 'bbbweb';

GRANT SELECT,UPDATE,INSERT,DELETE on *.* to 'nobody'@'192.168.50.85'
IDENTIFIED BY 'bbbweb';

-- www
GRANT SELECT,UPDATE,INSERT,DELETE on *.* to 'nobody'@'192.168.50.60'
IDENTIFIED BY 'bbbweb';
GRANT SELECT,UPDATE,INSERT,DELETE on *.* to 'nobody'@'192.168.50.61'
IDENTIFIED BY 'bbbweb';

-- giantss
GRANT SELECT,UPDATE,INSERT,DELETE on potto.* to 'offermapping'@'192.168.105.7'
IDENTIFIED BY 'RealTimeTheOldWay';

GRANT SELECT,UPDATE,INSERT,DELETE on potto.* to 'offermapping'@'192.168.105.8'
IDENTIFIED BY 'RealTimeTheOldWay';

GRANT SELECT,UPDATE,INSERT,DELETE on potto.* to 'dbadmin'@'192.168.105.7'
IDENTIFIED BY 'potto';

GRANT SELECT,UPDATE,INSERT,DELETE on potto.* to 'dbadmin'@'192.168.105.8'
IDENTIFIED BY 'potto';

-- dropbox
GRANT LOCK TABLES,SELECT,UPDATE,INSERT,DELETE on bbb.* to 'morgan'@'192.168.50.10' IDENTIFIED BY 'autobid';
GRANT LOCK TABLES,SELECT,UPDATE,INSERT,DELETE on bbb.* to 'merrill'@'192.168.50.10' IDENTIFIED BY 'autobid';
GRANT LOCK TABLES,SELECT,UPDATE,INSERT,DELETE on potto.* to 'morgan'@'192.168.50.10' IDENTIFIED BY 'autobid';
GRANT LOCK TABLES,SELECT,UPDATE,INSERT,DELETE on potto.* to 'merrill'@'192.168.50.10' IDENTIFIED BY 'autobid';

-- muniweb
GRANT LOCK TABLES,SELECT,UPDATE,INSERT,DELETE on potto.* to 'merrill'@'192.168.50.64' IDENTIFIED BY 'autobid';
GRANT LOCK TABLES,SELECT,UPDATE,INSERT,DELETE on potto.* to 'merrill'@'192.168.50.65' IDENTIFIED BY 'autobid';

GRANT SELECT,UPDATE,INSERT,DELETE on *.* to 'nobody'@'192.168.50.64' IDENTIFIED BY 'bbbweb';
GRANT SELECT,UPDATE,INSERT,DELETE on *.* to 'nobody'@'192.168.50.65' IDENTIFIED BY 'bbbweb';

-- mq
GRANT DROP,CREATE,SELECT,UPDATE,INSERT,DELETE on potto.* to 'mq'@'192.168.250.91' IDENTIFIED BY 'realtimedata';

GRANT ALL PRIVILEGES ON *.* TO 'avilensky'@'192.168.105.201' IDENTIFIED BY 'potto';

GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'192.168.250.90'
IDENTIFIED BY 'potto';


-- delete binary log files
GRANT SELECT ON potto.* TO 'facts_web'@'192.168.40.14' IDENTIFIED BY 'f14m';
GRANT SELECT ON potto.* TO 'facts_web'@'192.168.40.11' IDENTIFIED BY 'f14m';

GRANT SELECT ON potto.* TO 'facts_web'@'192.168.40.12' IDENTIFIED BY 'f14m';

GRANT SELECT,UPDATE,INSERT,DELETE on potto.* to 'merrill'@'192.168.40.12'
IDENTIFIED BY 'autobid';


GRANT SELECT ON ccs.* TO 'weblogic'@'192.168.7.201'
IDENTIFIED BY 'unlogic';

GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'192.168.50.76'
IDENTIFIED BY 'potto';


-- sparta
GRANT EXECUTE,SELECT,UPDATE,INSERT,DELETE on cfi.* to 'cfi_web'@'192.168.40.12' IDENTIFIED BY 'bovjit';
GRANT EXECUTE,SELECT,UPDATE,INSERT,DELETE on corp.* to 'cfi_web'@'192.168.40.12' IDENTIFIED BY 'bovjit';
GRANT EXECUTE,SELECT,UPDATE,INSERT,DELETE on potto.* to 'mfi_web'@'192.168.40.12' IDENTIFIED BY 'nejcej';

GRANT ALL PRIVILEGES ON corp.* TO 'jsp'@'192.168.50.64'
IDENTIFIED BY 'potto';

-- cds
GRANT SELECT,UPDATE,INSERT,DELETE on corp.* to 'cderivs'@'192.168.40.16' IDENTIFIED BY 'cderivs';
GRANT SELECT,UPDATE,INSERT,DELETE on corp.* to 'cderivs'@'192.168.40.11' IDENTIFIED BY 'cderivs';

-- corporate bids wanted
GRANT ALL on ccs.* to 'cfi_web'@'192.168.50.64' IDENTIFIED BY 'bovjit';

-- corporate bids wanted
GRANT SELECT on mysql.time_zone to 'nagios'@'192.168.139.63' IDENTIFIED BY 'nagios';

GRANT ALL on redmine.* to 'redmine'@localhost IDENTIFIED BY 'payease2010';

GRANT ALL PRIVILEGES ON centraldev.* TO 'root'@'192.168.1.63' IDENTIFIED BY 'payease';

GRANT SELECT, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'ot_replication'@'10.1.20.53' IDENTIFIED BY 'secret';

GRANT REPLICATION CLIENT on *.* TO nagios@localhost IDENTIFIED BY 'secret';

GRANT REPLICATION CLIENT on *.* TO nagios@10.2.20.53 IDENTIFIED BY 'secret';

REVOKE FILE,PROCESS ON *.* FROM nagios@10.2.20.53
REVOKE FILE,PROCESS ON *.* FROM nagios@localhost
