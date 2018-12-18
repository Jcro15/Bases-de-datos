CREATE TABLE STAFF(
    id varchar2(20) not null,
    name varchar2(50) not null,
    hojas_de_vida xmltype not null
    );
    
Alter table STAFF add constraint PK_STAFF  
    primary key(id);
    
Create table room (
id varchar2(20)NOT NULL,
name varchar2(50),
capacity NUMBER(11),
parent varchar2(20));

CREATE TABLE student(
id varchar2(20) not null,
name varchar2(50),
sze NUMBER(11),
parent varchar2(20));

CREATE TABLE event(
id varchar2(20) not null,
modle varchar2(20),
kind char(1) ,
dow varchar2(15),
tod number(2),
duration number(11),
room varchar2(20));

CREATE TABLE modle(
id varchar2(20) not null,
name varchar2(50));

CREATE TABLE attends(
student varchar2(20) not null,
event varchar2(20)NOT NULL);

CREATE TABLE teaches(
staff varchar2(20) not null,
event varchar2(20)NOT NULL);


Create table week(
id varchar2(20) not null,
wkstart date );

Create table occurs(
event varchar2(20) Not null,
week varchar2(20) Not null);