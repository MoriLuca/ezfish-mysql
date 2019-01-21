-- -- drop database TOOEZ;
create database if not exists TOOEZ;
use TOOEZ;


drop table if exists TOOEZ.PEOPLE_INFO;
drop table if exists TOOEZ.PEOPLE_BASIC;
-- drop table if exists TOOEZ.DBG;

create table if not exists TOOEZ.PEOPLE_BASIC (
	BASIC_ID INT NOT NULL AUTO_INCREMENT,
    primary key (BASIC_ID),
    EMAIL VARCHAR(50),
    unique (EMAIL),
    PASSWORD VARCHAR(64)
)ENGINE=INNODB;

create table if not exists TOOEZ.PEOPLE_INFO (
	BASIC_ID INT,
    primary key (BASIC_ID),
    foreign key (BASIC_ID) references PEOPLE_BASIC(BASIC_ID),
    NAME VARCHAR(50),
    SURNAME VARCHAR(50),
    NICKNAME VARCHAR(50),
    unique (NICKNAME),
    SHOW_PRIVATE_NAME bit(1)
) ENGINE=INNODB ;

create table if not exists TOOEZ.DBG (
	ID INT NOT NULL AUTO_INCREMENT,
	DATE_TIME TIMESTAMP,
    OBJECT varchar(30),
    STATE boolean,
    INFO text,
    MESSAGE text,
    INNER_EXCEPTION text,
    primary key (ID)
)ENGINE=INNODB;

select * from TOOEZ.PEOPLE_BASIC;
select * from TOOEZ.PEOPLE_INFO;
select * from TOOEZ.DBG order by ID desc;

select b.BASIC_ID, b.EMAIL, b.PASSWORD, i.NAME, i.SURNAME, i.NICKNAME from TOOEZ.PEOPLE_BASIC b
join TOOEZ.PEOPLE_INFO i  on i.BASIC_ID = b.BASIC_ID; 

