-- -- drop database TOOEZ;
use TOOEZ;
-- create database if not exists TOOEZ;


drop table if exists TOOEZ.PEOPLE;
-- drop table if exists TOOEZ.DBG;

create table if not exists TOOEZ.PEOPLE (
	PEOPLE_ID INT NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(50),
    SURNAME VARCHAR(50),
    NICKNAME VARCHAR(50),
    SHOW_PRIVATE_NAME bit(1),
    PHOTO VARCHAR(50),
    EMAIL VARCHAR(50),
    PASSWORD VARCHAR(64),
    primary key (PEOPLE_ID),
    unique (EMAIL)
);

create table if not exists TOOEZ.DBG (
	ID INT NOT NULL AUTO_INCREMENT,
	DATE_TIME TIMESTAMP,
    OBJECT varchar(30),
    STATE boolean,
    INFO text,
    MESSAGE text,
    INNER_EXCEPTION text,
    primary key (ID)
);

select * from TOOEZ.PEOPLE;
select * from TOOEZ.DBG order by ID desc;