-- PSQL

-- help
\?

-- connect to database
\c <database>

-- describe table, index, sequence, or view
\d [Name]

--information
\d{t|i|s|v|S} [PATTERN] (add "+" for more detail)
   list tables/indexes/sequences/views/system tables

-- list tables
\dt

-- list databases
\l

-- list functions
\df

-- list roles
\du

-- update
update media set volretention = 604800;

-- creat tablespace on disk
create tablespace vol_01 location '/postgresql/data';

-- list tablespaces
select * from pg_tablespace;

-- create database on tablespace
create database foo tablespace=vol_01;

-- create table
create table weather (
    city            varchar(80),
    temp_lo         int,           -- low temperature
    temp_hi         int,           -- high temperature
    prcp            real,          -- precipitation
    date            date
);

create table countlog (
    count           int,
    time            time
);

create table monkeys (
    name         varchar(200),
    species      varchar(200)
);

-- insert data
insert into weather (city, temp_lo, temp_hi, prcp, date) VALUES ('nyc', 10, 100, 30.0,10-31-2008);

-- create user
-- password not necessary with ident
-- ident sameuser: means the users UNIX login must match their
-- db login
create user potto with password 'monkey';

-- set or change password
alter role potto password 'monkey'
alter role root superuser;

-- create group
create role dbadmin;

-- grant all on database to group
grant all on database foo to dbadmin;
grant all on database bar to dbadmin;

-- make user a member of a group
grant dbadmin to potto;

-- limit rows
select * from foo limit 10;

-- truncate table
truncate table foo;

-- change owner of table
alter table foo owner to dbadmin;

-- autovacuums
select relname, last_autovacuum from pg_stat_user_tables where last_autovacuum is not null order by last_autovacuum desc;
