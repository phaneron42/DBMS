create database chal;
use chal;
create table lib(book_name varchar(80), book_id int , author_name varchar(80));
insert into lib values("a",4,"sarthak"),("b",5,"sahu"),("c",6,"martand");
create table LIBAUDIT(Descript varchar(40), User_id varchar(60));
DELIMITER $$
CREATE trigger trig
before update on lib
for each row
Begin
declare user_id varchar(60);
set user_id= current_user();
insert into LIBAUDIT values  (user_id,"Updated");
end $$
delimiter ;
drop database chal;
select* from lib;
alter table lib;
update lib set book_id=7 where book_name = "a";
set sql_safe_updates=0;
select * from lib;
select * from LIBAUDIT;
