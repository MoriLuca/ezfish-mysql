use TOOEZ;

select * from TOOEZ.PEOPLE_BASIC;
select * from TOOEZ.PEOPLE_INFO;
select * from TOOEZ.DBG order by ID desc;

select b.BASIC_ID, b.EMAIL, b.PASSWORD, i.NAME, i.SURNAME, i.NICKNAME from TOOEZ.PEOPLE_BASIC b
join TOOEZ.PEOPLE_INFO i  on i.BASIC_ID = b.BASIC_ID; 