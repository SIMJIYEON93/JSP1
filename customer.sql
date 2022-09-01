
create table CUSTOMER (
    idx int auto_increment PRIMARY key,
    name varchar(20) not null,
    password varchar(10) not null,
    email varchar(30) not null,
    addr varchar(30),
    gender varchar(10) not null,
    age tinyint,
    hobby varchar(30)
    );

   
-- varchar의 크기는 문자수
insert into CUSTOMER (name,password,email,addr,gender,age,hobby)
values('이하니','12345678','honey@naver.com','서울','여','10','농구');

select * from CUSTOMER;

TRUNCATE TABLE CUSTOMER;