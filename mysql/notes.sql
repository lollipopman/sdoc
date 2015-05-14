-- show table info

describe <table name>;

-- list current process

show processlist;

-- delete binary log files

reset master;

-- create temporary table

CREATE TEMPORARY TABLE
cde_temp_cust(
  cust VARCHAR(25) NULL,
  trader VARCHAR(25) NULL,
  broker VARCHAR(25) NULL,
  date DATE NOT NULL
);

-- updates

UPDATE top3_profile SET admin_group=9991 WHERE ipon = '20080509' AND list_name = 'herman_list_1';

-- inserts
insert into Device
  (KioskID,DeviceID,Description,PortType,DeviceType,DeviceTypeID,DevicePath,CashInDevice,Status,Enabled,DeviceManager,Model)
values
  ('AtmDev2',3,'JADAK BILL Scanner','USB','BILL_SCANNER',4,'',0.00,-1,'Y','','FM204')

-- show indexes

SHOW INDEX FROM top3_sell;

-- drop index

DROP INDEX PRIMARY ON top3_sell;

-- create index

CREATE UNIQUE INDEX idx_flname_age ON buyers(first_name,last_name,age);

-- drop primary key

ALTER TABLE top3_sell DROP PRIMARY KEY;

-- add primary key

ALTER TABLE top3_sell ADD PRIMARY KEY (sell_date, sell_number);

-- load data from csv file

truncate User;

LOAD DATA INFILE "/var/tmp/usernames.csv"
INTO TABLE User
FIELDS TERMINATED BY ','
ENCLOSED BY '\"'
;

-- add user, must be followed by flush privileges to take affect

GRANT ALL PRIVILEGES ON *.* TO 'crs'@'192.168.105.183' IDENTIFIED BY 'eevukeat';
FLUSH PRIVILEGES;

GRANT SELECT,UPDATE,INSERT,DELETE on corp_treasury.* to
'nobody'@'192.168.40.12' IDENTIFIED BY 'web';
FLUSH PRIVILEGES;

GRANT LOCK TABLES,SELECT,UPDATE,INSERT,DELETE on potto.* to
'fix_engine'@'192.168.105.8' IDENTIFIED BY 'ombiddibo';
FLUSH PRIVILEGES;

GRANT EXECUTE,SELECT,UPDATE,INSERT,DELETE on cfi.* to 'cfi_web'@'192.168.40.12'
IDENTIFIED BY 'bovjit';
FLUSH PRIVILEGES;

GRANT LOCK TABLES,SELECT,UPDATE,INSERT,DELETE on potto.* to
'fix_engine'@'192.168.139.93' IDENTIFIED BY 'opitvurrid';
FLUSH PRIVILEGES;
