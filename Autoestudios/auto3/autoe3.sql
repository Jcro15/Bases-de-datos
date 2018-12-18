/*
Tablas
*/
CREATE TABLE staff(
id varchar2(20) not null,
name varchar2(50));

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
tod CHAR(5),
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

/*
Primarias
*/
ALTER TABLE staff ADD CONSTRAINT PK_STAFF PRIMARY KEY(id);
ALTER TABLE room ADD CONSTRAINT PK_ROOM PRIMARY KEY(id);
ALTER TABLE modle ADD CONSTRAINT PK_MODLE PRIMARY KEY(id);
ALTER TABLE event ADD CONSTRAINT PK_EVENT PRIMARY KEY(id);
ALTER TABLE occurs ADD CONSTRAINT PK_OCCURS PRIMARY KEY(event,week);
ALTER TABLE week ADD CONSTRAINT PK_WEEK PRIMARY KEY(id);
ALTER TABLE teaches ADD CONSTRAINT PK_TEACHES PRIMARY KEY(staff,event);
ALTER TABLE student ADD CONSTRAINT PK_STUDENT PRIMARY KEY(id);
ALTER TABLE attends ADD CONSTRAINT PK_ATTENDS PRIMARY KEY(student,event);

/*
Foraneas
*/


ALTER TABLE event ADD CONSTRAINT FK_EVENT_MODLE FOREIGN KEY (modle)REFERENCES modle (id);
ALTER TABLE event ADD CONSTRAINT FK_EVENT_ROOM FOREIGN KEY (room)REFERENCES room (id);
ALTER TABLE attends ADD CONSTRAINT FK_ATTENDS_EVENT FOREIGN KEY (event)REFERENCES event (id);
ALTER TABLE attends ADD CONSTRAINT FK_ATTENDS_STUDENT FOREIGN KEY (student)REFERENCES student (id);
ALTER TABLE teaches ADD CONSTRAINT FK_TEACHES_STAFF FOREIGN KEY (staff)REFERENCES staff (id);
ALTER TABLE teaches ADD CONSTRAINT FK_TEACHES_EVENT FOREIGN KEY (event)REFERENCES event (id);
ALTER TABLE occurs ADD CONSTRAINT FK_OCCURS_EVENT FOREIGN KEY (event)REFERENCES event (id);
ALTER TABLE occurs ADD CONSTRAINT FK_OCCURS_WEEK FOREIGN KEY (week)REFERENCES week (id);

/*
PoblarOK
*/
INSERT into staff values('co.ACg','Cumming, Andrew');
INSERT into staff values('co.ACr','Crerar, Dr Alison');
INSERT into staff values('co.AFA','Armitage, Dr Alistair');
INSERT into staff values('co.AG','Groat, Anne');
INSERT into staff values('co.AL','Lawson, Alistair');
INSERT into staff values('co.AMn','Maclean, Aileen');
INSERT into staff values('co.ASc','Scott, Andrea');
INSERT into staff values('co.ASr','Soutar, Alastair');
INSERT into staff values('co.AV','Varey, Alison');
INSERT into staff values('co.BB','Buchanan, Dr Wm');
INSERT into staff values('co.BC','Cowan, Bruce');
INSERT into staff values('co.BD','Dupee, Dr Brian');
INSERT into staff values('co.BDR','Ritchie, Bryden');
INSERT into staff values('co.BP','Paechter, Ben');
INSERT into staff values('co.CAD','Clem Douglas');
INSERT into staff values('co.CAR','Rickard, Anne');
INSERT into staff values('co.CG','Gregory, Chris');
INSERT into staff values('co.CHd','Hand, Chris');
INSERT into staff values('co.CHt','Hastie, Colin');
INSERT into staff values('co.CM','Macaulay, Catriona');
INSERT into staff values('co.CMD','Dougal, Colin');
INSERT into staff values('co.DB','Benyon, Prof David');
INSERT into staff values('co.ED','Davenport, Lissie');
INSERT into staff values('co.EH','Hart, Emma');
INSERT into staff values('co.FG','Greig, Frank');
INSERT into staff values('co.GM','McCarra, Greg');
INSERT into staff values('co.GR','Russell, Dr Gordon');
INSERT into staff values('co.GS','Scott, Graham');
INSERT into staff values('co.HH','Hall, Hazel');
INSERT into staff values('co.IM','McGregor, Iain');
INSERT into staff values('co.IS','Smith, Ian');
INSERT into staff values('co.JB','Jyoti Bhardwaj');
INSERT into staff values('co.JJ','Jackson, Jim');
INSERT into staff values('co.JKg','Kerridge, Prof Jon');
INSERT into staff values('co.JKy','Kennedy, Jessie');
INSERT into staff values('co.JMc','McGowan, Joyce');
INSERT into staff values('co.JMy','Murray, Jim');
INSERT into staff values('co.JMz','Munoz, Dr Jose');
INSERT into staff values('co.JO','Owens, Dr John');
INSERT into staff values('co.JSv','Savage, Dr John');
INSERT into staff values('co.KB','Barclay, Ken');
INSERT into staff values('co.KC','Chisholm, Ken');
INSERT into staff values('co.KH','Horton, Keith');
INSERT into staff values('co.LM','Morss, Dr Les');
INSERT into staff values('co.LS','Shearey, Lyn');
INSERT into staff values('co.MR','Rutter, Malcolm');
INSERT into staff values('co.MS','Smyth, Michael');
INSERT into staff values('co.PTh','Thompson, Peter');
INSERT into staff values('co.PTr','Turner, Phil');
INSERT into staff values('co.RB','Bain, Dr Bob');
INSERT into staff values('co.RD','Donald, Robert');
INSERT into staff values('co.RK','Kemmer, Rob');
INSERT into staff values('co.RM','McCall, Rod');
INSERT into staff values('co.RR','Rankin, Bob');
INSERT into staff values('co.SC','Cairncross, Sandra');
INSERT into staff values('co.SL','Lawson, Shaun');
INSERT into staff values('co.SM','Mathieson, Stuart');
INSERT into staff values('co.SR','Raeburn, Scott');
INSERT into staff values('co.SRM','Middleton, Steve');
INSERT into staff values('co.SS','Smith, Sally');
INSERT into staff values('co.ST','Turner, Susan');
INSERT into staff values('co.TG','Goh, Teo');
INSERT into staff values('co.TMc','McEwan, Tom');
INSERT into staff values('co.TMu','Musson, Tim');
INSERT into staff values('co.TP','Peng, Taoxin');
INSERT into staff values('co.XL','Lui, Xiaodong');
INSERT into staff values('co.ZZ1','z TBA1');
INSERT into staff values('co.ZZ2','z TBA2');
INSERT into staff values('co.ZZ4','z TBA4');
INSERT into staff values('co.ZZ5','z TBA5');
INSERT into staff values('co.ZZ6','z TBA6');
INSERT into staff values('co.ZZ7','z TBA7');
INSERT into staff values('co.ZZ8','z TBA8');

INSERT into modle values('co12001','Rapid Application Development');
INSERT into modle values('co12002','Software Development 1A');
INSERT into modle values('co12003','Professional Skills');
INSERT into modle values('co12004','Applications Workshop');
INSERT into modle values('co12005','Software Development 1B');
INSERT into modle values('co12006','Computer Systems');
INSERT into modle values('co12008','Word Processing and Spreadsheets Elective');
INSERT into modle values('co12009','Information Systems 1a');
INSERT into modle values('co12010','Software Development C');
INSERT into modle values('co12011','Software Development in C');
INSERT into modle values('co12012','Using Electronic Communication Effectively');
INSERT into modle values('co12021','Using Electronic Communication Effectively');
INSERT into modle values('co2.cs22006',NULL);
INSERT into modle values('co22001','Database Systems');
INSERT into modle values('co22002','Software Development');
INSERT into modle values('co22003','Computer Systems');
INSERT into modle values('co22004','Software Engineering');
INSERT into modle values('co22005','Human Computer Interaction');
INSERT into modle values('co22006','Algorithms and Data Structures');
INSERT into modle values('co22007','Web Development');
INSERT into modle values('co22008','Introduction to Databases');
INSERT into modle values('co22009','Software Development (Bridging)');
INSERT into modle values('co22020','Window NT Elective');
INSERT into modle values('co22022','Programming C++');
INSERT into modle values('co32001','Very Large Databases');
INSERT into modle values('co32002','Customer Centred Design');
INSERT into modle values('co32003','Multimedia Technology');
INSERT into modle values('co32004','Multimedia Development Methods');
INSERT into modle values('co32005','Multimedia Systems Design');
INSERT into modle values('co32006','Computer Networks and Distributed Systems');
INSERT into modle values('co32007','Design Patterns');
INSERT into modle values('co32008','Computer Interfacing');
INSERT into modle values('co32010','Network Operating Systems');
INSERT into modle values('co32011','Visual Components and Systems Integration');
INSERT into modle values('co32013','Embedded Systems');
INSERT into modle values('co32014','Computers and Innovation Process');
INSERT into modle values('co32015','Frameworks');
INSERT into modle values('co32016','Group Project');
INSERT into modle values('co32017','Internet Programming');
INSERT into modle values('co32018','Internet Programming 3');
INSERT into modle values('co32020','Professional Studies');
INSERT into modle values('co32021','Group Project');
INSERT into modle values('co32023','Systems Engineering 3');
INSERT into modle values('co32993','Human Computer Interaction 3');
INSERT into modle values('co32M19','Management of Industrial Organisations');
INSERT into modle values('co32XX5','Systems Engineering 3');
INSERT into modle values('co42001','Virtual Environments');
INSERT into modle values('co42002','Multimedia Technology');
INSERT into modle values('co42004','Media Computing');
INSERT into modle values('co42005','Computer Supported Cooperative Working');
INSERT into modle values('co42006','Human Computer Interaction 4');
INSERT into modle values('co42007','Evolutionary Computing');
INSERT into modle values('co42008',NULL);
INSERT into modle values('co42009','Object Oriented Databases');
INSERT into modle values('co42010','Languages and Algorithms');
INSERT into modle values('co42011','Computers and Society');
INSERT into modle values('co42012','Software Architectures');
INSERT into modle values('co42013','Safety Critical Systems');
INSERT into modle values('co42014','Software Management');
INSERT into modle values('co42015','Advanced Distributed Systems');
INSERT into modle values('co42018','Real Time Software Engineering');
INSERT into modle values('co42019','Project');
INSERT into modle values('co42022','Internet Application Development');
INSERT into modle values('co71021','Research Skills');
INSERT into modle values('co71022','Distributed Systems');
INSERT into modle values('co72001','Introduction to Software Development');
INSERT into modle values('co72002','Computer Systems');
INSERT into modle values('co72003','Application Development');
INSERT into modle values('co72004','Software Development');
INSERT into modle values('co72005','Internet Multimedia');
INSERT into modle values('co72006','Object Oriented Software Technology 1');
INSERT into modle values('co72010','Database systems');
INSERT into modle values('co72011','Interactivity and the Internet');
INSERT into modle values('co72012','COBOL');
INSERT into modle values('co72016','Distributed Systems');
INSERT into modle values('co72017','Object Oriented Programming');
INSERT into modle values('co72018','Software Development 2');
INSERT into modle values('co72021','Object Oriented Software Technology');
INSERT into modle values('co72026','Very Large Databases');
INSERT into modle values('co72033','Human Computer Interaction');
INSERT into modle values('co72MMT','Multimedia Technology');
INSERT into modle values('coA6GD04','Using IT in Businesss DBWP');
INSERT into modle values('coA6GF04','Business Information Management');
INSERT into modle values('coh2451847','Microprocessor Fundamentals');
INSERT into modle values('coh6412255','Project Management');
INSERT into modle values('coh641255','Project Management');
INSERT into modle values('coh7400350','Communications Skills');
INSERT into modle values('coh8412465','Computer Applications');
INSERT into modle values('coh8412475','Database');
INSERT into modle values('coh8412505','IT Applications');
INSERT into modle values('coh8412545','Multi User OS');
INSERT into modle values('coh8412555','Multimedia Technology');
INSERT into modle values('coh8412575','Providing Support to Users');
INSERT into modle values('coh8412585','System Development Life Cycle');
INSERT into modle values('coh8412595','Object Oriented Applications');
INSERT into modle values('coh8412605','Standalone CS support');
INSERT into modle values('coh8412615','Systems Development, Introduction');
INSERT into modle values('coh8412625','Event Driven Language');
INSERT into modle values('coh8412635','Procedural Languages COBOL');
INSERT into modle values('coh8413618','Block Structured Programming');
INSERT into modle values('coh8413638','4th Generation Environments');
INSERT into modle values('coh8413758','OO Analysis and Design');
INSERT into modle values('coh8520864','Engineering Programming');
INSERT into modle values('coh8521005','Structured Systems Analysis and Design');
INSERT into modle values('coh8560085',NULL);
INSERT into modle values('coh8560095','Information Systems and Services');

INSERT into room values('co.117','117','20','co.117+118');
INSERT into room values('co.117+118','118','40',NULL);
INSERT into room values('co.B7','B7','60',NULL);
INSERT into room values('co.G74','G74','120',NULL);
INSERT into room values('co.G75+G76','G75+G76','40',NULL);
INSERT into room values('co.G78+G82','G78+G82','100',NULL);
INSERT into room values('co.G82','G82','50',NULL);
INSERT into room values('co.LB42','LB42','36','co.LB42+LB46');
INSERT into room values('co.LB42+LB46','LB42+LB46','76',NULL);
INSERT into room values('co.LB46','LB46','40',NULL);
INSERT into room values('co.LB47','LB47','40',NULL);
INSERT into room values('cr.131','131','40',NULL);
INSERT into room values('cr.132','132','60',NULL);
INSERT into room values('cr.201','201','20',NULL);
INSERT into room values('cr.202','202','30',NULL);
INSERT into room values('cr.203','203','40',NULL);
INSERT into room values('cr.204','204','40',NULL);
INSERT into room values('cr.B1','B1','125',NULL);
INSERT into room values('cr.B10','B10','40',NULL);
INSERT into room values('cr.B11','B11','40',NULL);
INSERT into room values('cr.B12','B12','40',NULL);
INSERT into room values('cr.B13','B13','40',NULL);
INSERT into room values('cr.B2','B2','60',NULL);
INSERT into room values('cr.B8','B8','40',NULL);
INSERT into room values('cr.B9','B9','20',NULL);
INSERT into room values('cr.G116','G116','60',NULL);
INSERT into room values('cr.G2','G2','20',NULL);
INSERT into room values('cr.G3','G3','20',NULL);
INSERT into room values('cr.G6','G6','30',NULL);
INSERT into room values('cr.G80','G80','40',NULL);
INSERT into room values('cr.G90','G90','30','cr.G90+116');
INSERT into room values('cr.G90+116','G90+116','60',NULL);
INSERT into room values('cr.SMH','St Margaret Hall','240',NULL);

INSERT into event values('co12004.L01','co12004','L','Wednesday','11:00','1','cr.SMH');
INSERT into event values('co12004.L02','co12004','L','Monday','17:00','1','cr.B13');
INSERT into event values('co12004.T01','co12004','T','Monday','11:00','2','co.G78+G82');
INSERT into event values('co12004.T02','co12004','T','Tuesday','15:00','2','co.B7');
INSERT into event values('co12004.T03','co12004','T','Tuesday','13:00','2','co.G78+G82');
INSERT into event values('co12004.T04','co12004','T','Wednesday','13:00','2','co.LB42+LB46');
INSERT into event values('co12004.T05','co12004','T','Wednesday','09:00','2','co.117+118');
INSERT into event values('co12004.T06','co12004','T','Tuesday','13:00','2','co.LB47');
INSERT into event values('co12005.L01','co12005','L','Monday','14:00','1','cr.SMH');
INSERT into event values('co12005.L02','co12005','L','Friday','10:00','1','cr.SMH');
INSERT into event values('co12005.T01','co12005','T','Tuesday','11:00','2','co.G78+G82');
INSERT into event values('co12005.T02','co12005','T','Monday','11:00','2','cr.G90+116');
INSERT into event values('co12005.T03','co12005','T','Tuesday','10:00','2','co.LB47');
INSERT into event values('co12005.T04','co12005','T','Wednesday','14:00','2','co.B7');
INSERT into event values('co12005.T05','co12005','T','Monday','15:00','2','co.117+118');
INSERT into event values('co12006.L01','co12006','L','Wednesday','10:00','1','cr.SMH');
INSERT into event values('co12006.L02','co12006','L','Thursday','09:00','2','cr.G6');
INSERT into event values('co12006.L03','co12006','L','Wednesday','13:00','1','cr.SMH');
INSERT into event values('co12006.T01','co12006','T','Tuesday','14:00','2','co.LB42+LB46');
INSERT into event values('co12006.T02','co12006','T','Thursday','13:00','2','co.G82');
INSERT into event values('co12006.T03','co12006','T','Monday','15:00','2','co.LB47');
INSERT into event values('co12006.T04','co12006','T','Monday','11:00','2','co.LB42+LB46');
INSERT into event values('co12006.T05','co12006','T','Monday','09:00','2','co.117+118');
INSERT into event values('co12006.T06','co12006','T','Thursday','14:00','2','co.117+118');
INSERT into event values('co12008.L01','co12008','L','Tuesday','11:00','2','co.G74');
INSERT into event values('co12008.T01','co12008','T','Monday','13:00','2','cr.G90+116');
INSERT into event values('co12008.T02','co12008','T','Friday','14:00','2','cr.G90+116');
INSERT into event values('co12011.L01','co12011','L','Monday','09:00','2','cr.G3');
INSERT into event values('co12011.T01','co12011','T','Thursday','13:00','2','co.LB47');
INSERT into event values('co12012.L01','co12012','L','Wednesday','12:00','1','cr.B10');
INSERT into event values('co12012.T01','co12012','T','Wednesday','13:00','2','co.G75+G76');
INSERT into event values('co22005.L01','co22005','L','Thursday','12:00','2','cr.SMH');
INSERT into event values('co22005.T01','co22005','T','Thursday','14:00','1','cr.G116');
INSERT into event values('co22005.T02','co22005','T','Wednesday','13:00','1','co.B7');
INSERT into event values('co22005.T03','co22005','T','Wednesday','11:00','1','co.G78+G82');
INSERT into event values('co22005.T04','co22005','T','Tuesday','09:00','1','co.LB42+LB46');
INSERT into event values('co22005.T05','co22005','T','Friday','09:00','1','cr.B8');
INSERT into event values('co22005.T06','co22005','T','Wednesday','11:00','1','cr.B8');
INSERT into event values('co22005.T07','co22005','T','Wednesday','14:00','1','cr.B2');
INSERT into event values('co22005.T08','co22005','T','Tuesday','11:00','1','cr.B2');
INSERT into event values('co22005.T09','co22005','T','Thursday','16:00','1','co.G78+G82');
INSERT into event values('co22005.T10','co22005','T','Friday','10:00','1','cr.B13');
INSERT into event values('co22006.L01','co22006','L','Friday','15:00','2','cr.B1');
INSERT into event values('co22006.L02','co22006','L','Thursday','10:00','1','cr.G2');
INSERT into event values('co22006.L03','co22006','L','Thursday','15:00','1','cr.G3');
INSERT into event values('co22006.T01','co22006','T','Monday','13:00','2','co.LB47');
INSERT into event values('co22006.T02','co22006','T','Monday','15:00','2','co.LB46');
INSERT into event values('co22006.T03','co22006','T','Monday','15:00','2','cr.G90+116');
INSERT into event values('co22006.T04','co22006','T','Wednesday','15:00','2','co.G78+G82');
INSERT into event values('co22007.L01','co22007','L','Monday','09:00','2','cr.SMH');
INSERT into event values('co22007.T01','co22007','T','Friday','11:00','2','co.LB47');
INSERT into event values('co22007.T02','co22007','T','Monday','13:00','2','co.B7');
INSERT into event values('co22007.T03','co22007','T','Tuesday','10:00','2','co.B7');
INSERT into event values('co22007.T04','co22007','T','Tuesday','15:00','2','co.LB47');
INSERT into event values('co22007.T05','co22007','T','Thursday','17:00','1','co.B7');
INSERT into event values('co22007.T06','co22007','T','Thursday','14:00','2','co.B7');
INSERT into event values('co22008.L01','co22008','L','Thursday','15:00','2',NULL);
INSERT into event values('co22008.L02','co22008','L','Tuesday','18:00','2','cr.G3');
INSERT into event values('co22008.T01','co22008','T','Tuesday','13:00','1',NULL);
INSERT into event values('co22008.T02','co22008','T','Tuesday','20:00','1','co.117');
INSERT into event values('co22008.T03','co22008','T','Wednesday','09:00','1',NULL);
INSERT into event values('co22008.T04','co22008','T','Tuesday','12:00','1','co.117+118');
INSERT into event values('co22008.T05','co22008','T','Thursday','17:00','1',NULL);
INSERT into event values('co22009.L01','co22009','L','Wednesday','12:00','2','cr.132');
INSERT into event values('co22009.T01','co22009','T','Wednesday','15:00','2','cr.G90+116');
INSERT into event values('co22009.T02','co22009','T','Wednesday','09:00','2','cr.G90');
INSERT into event values('co22020.L01','co22020','L','Friday','13:00','2','cr.B1');
INSERT into event values('co22020.T01','co22020','T','Thursday','12:00','2',NULL);
INSERT into event values('co22020.T02','co22020','T','Friday','15:00','2',NULL);
INSERT into event values('co22020.T03','co22020','T','Tuesday','13:00','2',NULL);
INSERT into event values('co22020.T04','co22020','T','Friday','11:00','2','co.LB47');
INSERT into event values('co22020.T05','co22020','T','Friday','09:00','2',NULL);
INSERT into event values('co22022.L01','co22022','L','Friday','10:00','2','cr.B8');
INSERT into event values('co22022.T01','co22022','T','Friday','09:00','1','cr.G90+116');
INSERT into event values('co32003.L01','co32003','L','Tuesday','13:00','2','cr.G6');
INSERT into event values('co32003.T01','co32003','T','Friday','11:00','1','co.G78+G82');
INSERT into event values('co32005.L01','co32005','L','Friday','15:00','2','cr.B2');
INSERT into event values('co32005.T04','co32005','T','Wednesday','10:00','1','co.B7');
INSERT into event values('co32005.T05','co32005','T','Thursday','12:00','1','co.LB46');
INSERT into event values('co32011.L01','co32011','L','Thursday','11:00','1','cr.SMH');
INSERT into event values('co32011.L02','co32011','L','Thursday','13:00','1','cr.B1');
INSERT into event values('co32011.T01','co32011','T','Thursday','12:00','1','co.G75+G76');
INSERT into event values('co32011.T02','co32011','T','Tuesday','10:00','1','co.G78+G82');
INSERT into event values('co32011.T03','co32011','T','Tuesday','11:00','1','co.LB42+LB46');
INSERT into event values('co32014.L01','co32014','L','Tuesday','14:00','2','cr.B1');
INSERT into event values('co32014.T01','co32014','T','Wednesday','09:00','1','cr.G80');
INSERT into event values('co32014.T02','co32014','T','Monday','16:00','1','cr.131');
INSERT into event values('co32014.T03','co32014','T','Tuesday','16:00','1','cr.B13');
INSERT into event values('co32015.L01','co32015','L','Tuesday','13:00','2','cr.204');
INSERT into event values('co32015.T01','co32015','T','Friday','14:00','1','co.117+118');
INSERT into event values('co32016.L01','co32016','L','Tuesday','12:00','1','cr.B1');
INSERT into event values('co32018.L01','co32018','L','Tuesday','09:00','2','cr.132');
INSERT into event values('co32018.T01','co32018','T','Friday','13:00','1','cr.G90+116');
INSERT into event values('co32021.L01','co32021','L','Wednesday','09:00','1','cr.132');
INSERT into event values('co32023.L01','co32023','L','Monday','11:00','2','cr.B11');
INSERT into event values('co32023.T01','co32023','T','Wednesday','12:00','1','cr.G3');
INSERT into event values('co42001.L01','co42001','L','Wednesday','14:00','2','cr.G6');
INSERT into event values('co42001.T01','co42001','T','Thursday','16:00','1','co.LB42+LB46');
INSERT into event values('co42002.L01','co42002','L','Tuesday','15:00','2','cr.131');
INSERT into event values('co42002.T01','co42002','T','Tuesday','13:00','1','co.B7');
INSERT into event values('co42005.L01','co42005','L','Tuesday','10:00','2','cr.131');
INSERT into event values('co42005.T01','co42005','T','Thursday','15:00','1','co.LB47');
INSERT into event values('co42009.L01','co42009','L','Monday','14:00','2','cr.B8');
INSERT into event values('co42009.T01','co42009','T','Friday','13:00','1','co.117+118');
INSERT into event values('co42010.L01','co42010','L','Thursday','15:00','2','cr.132');
INSERT into event values('co42010.T01','co42010','T','Tuesday','12:00','1','cr.G90+116');
INSERT into event values('co42010.T02','co42010','T','Thursday','17:00','1','co.117+118');
INSERT into event values('co42013.L01','co42013','L','Thursday','09:00','2','cr.B2');
INSERT into event values('co42013.T01','co42013','T','Thursday','11:00','1','co.G78+G82');
INSERT into event values('co42015.L01','co42015','L','Tuesday','16:00','2','cr.G80');
INSERT into event values('co42015.T01','co42015','T','Thursday','10:00','1','co.G75+G76');
INSERT into event values('co42019.L01','co42019','L','Friday','16:00','1','cr.SMH');
INSERT into event values('co42022.L01','co42022','L','Thursday','13:00','2','cr.B9');
INSERT into event values('co42022.T01','co42022','T','Thursday','11:00','1','co.117+118');
INSERT into event values('co72002.L01','co72002','L','Monday','10:00','2','cr.B12');
INSERT into event values('co72002.T01','co72002','T','Monday','12:00','1','co.LB47');
INSERT into event values('co72003.L01','co72003','L','Monday','14:00','2','cr.B12');
INSERT into event values('co72003.T01','co72003','T','Monday','16:00','1','co.LB42');
INSERT into event values('co72004.L01','co72004','L','Thursday','13:00','2','cr.203');
INSERT into event values('co72004.T01','co72004','T','Thursday','15:00','1','cr.G116');
INSERT into event values('co72006.L01','co72006','L','Wednesday','09:00','2','cr.B11');
INSERT into event values('co72006.T01','co72006','T','Wednesday','12:00','1','co.G75+G76');
INSERT into event values('co72011.L01','co72011','L','Monday','15:00','2','cr.SMH');
INSERT into event values('co72011.T01','co72011','T','Friday','09:00','1','co.B7');
INSERT into event values('co72011.T02','co72011','T','Monday','13:00','1','co.LB46');
INSERT into event values('co72011.T03','co72011','T','Thursday','13:00','1','co.LB46');
INSERT into event values('co72011.T04','co72011','T','Monday','14:00','1','co.LB46');
INSERT into event values('co72011.T05','co72011','T','Friday','09:00','1','cr.B10');
INSERT into event values('co72011.T06','co72011','T','Monday','13:00','1','cr.B10');
INSERT into event values('co72011.T07','co72011','T','Thursday','13:00','1','cr.B10');
INSERT into event values('co72011.T08','co72011','T','Monday','14:00','1','cr.B10');
INSERT into event values('co72011.T09','co72011','T','Friday','13:00','1','co.LB47');
INSERT into event values('co72012.L01','co72012','L','Thursday','09:00','2','cr.B1');
INSERT into event values('co72012.T01','co72012','T','Friday','12:00','1','co.LB42+LB46');
INSERT into event values('co72012.T02','co72012','T','Wednesday','12:00','1','cr.G90+116');
INSERT into event values('co72012.T03','co72012','T','Thursday','12:00','1','co.G78+G82');
INSERT into event values('co72013.L01','co72010','L','Wednesday','14:00','2','cr.SMH');
INSERT into event values('co72013.L02','co72010','L','Tuesday','09:00','2','cr.B8');
INSERT into event values('co72013.T01','co72010','T','Wednesday','09:00','1','co.B7');
INSERT into event values('co72013.T02','co72010','T','Tuesday','12:00','1','co.LB42+LB46');
INSERT into event values('co72013.T03','co72010','T','Tuesday','11:00','1','co.G75+G76');
INSERT into event values('co72013.T04','co72010','T','Wednesday','16:00','1','co.LB42+LB46');
INSERT into event values('co72013.T05','co72010','T','Thursday','10:00','1','co.LB42+LB46');
INSERT into event values('co72013.T06','co72010','T','Wednesday','13:00','1','co.117+118');
INSERT into event values('co72016.L01','co72016','L','Tuesday','10:00','2','cr.B13');
INSERT into event values('co72016.T01','co72016','T','Tuesday','09:00','1','co.G75+G76');
INSERT into event values('co72017.L01','co72017','L','Tuesday','10:00','2','cr.202');
INSERT into event values('co72017.T01','co72017','T','Friday','11:00','1','co.G75+G76');
INSERT into event values('co72018.L01','co72018','L','Thursday','11:00','2','cr.B1');
INSERT into event values('co72018.T01','co72018','T','Thursday','10:00','1','co.G78+G82');
INSERT into event values('co72018.T02','co72018','T','Monday','12:00','1','co.B7');
INSERT into event values('co72021.L01','co72021','L','Tuesday','13:00','2','cr.SMH');
INSERT into event values('co72021.T01','co72021','T','Monday','14:00','1','co.LB42');
INSERT into event values('co72023.L01','co72005','L','Friday','14:00','2','cr.SMH');
INSERT into event values('co72023.L02','co72005','L','Tuesday','18:00','2','cr.131');
INSERT into event values('co72023.T01','co72005','T','Thursday','14:00','1','co.LB46');
INSERT into event values('co72023.T02','co72005','T','Thursday','16:00','1','co.B7');
INSERT into event values('co72023.T03','co72005','T','Thursday','11:00','1','co.B7');
INSERT into event values('co72023.T04','co72005','T','Friday','16:00','1','co.B7');
INSERT into event values('co72023.T05','co72005','T','Friday','17:00','1','co.B7');
INSERT into event values('co72023.T06','co72005','T','Tuesday','20:00','1','co.B7');
INSERT into event values('co72026.L01','co72026','L','Monday','15:00','2','cr.G6');
INSERT into event values('co72026.L02','co72026','L','Tuesday','18:00','2','cr.201');
INSERT into event values('co72026.T01','co72026','T','Monday','13:00','1','co.117+118');
INSERT into event values('co72026.T02','co72026','T','Tuesday','20:00','1','co.LB42');
INSERT into event values('co72033.L01','co72033','L','Tuesday','14:00','2','cr.132');
INSERT into event values('co72033.T01','co72033','T','Tuesday','16:00','1','co.G78+G82');
INSERT into event values('coh2451.L01','coh2451847','L','Wednesday','11:00','1','cr.B13');
INSERT into event values('coh2451.T01','coh2451847','T','Wednesday','09:00','2',NULL);
INSERT into event values('coh6412255.L01','coh6412255','L','Monday','09:00','1','cr.204');
INSERT into event values('coh6412255.T01','coh6412255','T','Wednesday','15:00','2','cr.B10');
INSERT into event values('coh8412555.L01','coh8412555','L','Wednesday','09:00','1','cr.B2');
INSERT into event values('coh8412555.L02','coh8412555','L','Thursday','09:00','1','cr.G80');
INSERT into event values('coh8412555.T01','coh8412555','T','Thursday','16:00','2','cr.G90+116');
INSERT into event values('coh8412555.T02','coh8412555','T','Tuesday','09:00','2','co.117+118');
INSERT into event values('coh8412575.L01','coh8412575','L','Wednesday','11:00','2','cr.B2');
INSERT into event values('coh8412575.T01','coh8412575','T','Tuesday','14:00','2','co.G75+G76');
INSERT into event values('coh8412575.T02','coh8412575','T','Monday','11:00','2','co.117+118');
INSERT into event values('coh8412585.L01','coh8412585','L','Wednesday','12:00','1','cr.SMH');
INSERT into event values('coh8412585.T01','coh8412585','T','Tuesday','16:00','2','co.117');
INSERT into event values('coh8412585.T02','coh8412585','T','Monday','14:00','2','cr.G2');
INSERT into event values('coh8412585.T03','coh8412585','T','Tuesday','09:00','2','cr.G2');
INSERT into event values('coh8412605.L01','coh8412605','L','Wednesday','14:00','2','cr.B1');
INSERT into event values('coh8412605.T01','coh8412605','T','Wednesday','16:00','2','co.117+118');
INSERT into event values('coh8412605.T02','coh8412605','T','Tuesday','15:00','2','co.117+118');
INSERT into event values('coh8412605.T03','coh8412605','T','Friday','14:00','2','co.G78+G82');
INSERT into event values('coh8412615.L01','coh8412615','L','Friday','09:00','1','cr.B1');
INSERT into event values('coh8412615.T01','coh8412615','T','Friday','15:00','2','co.G75+G76');
INSERT into event values('coh8412615.T02','coh8412615','T','Thursday','15:00','2','co.G75+G76');
INSERT into event values('coh8412615.T03','coh8412615','T','Tuesday','11:00','2','co.117+118');
INSERT into event values('coh8412615.T04','coh8412615','T','Tuesday','14:00','2','cr.203');
INSERT into event values('coh8412615.T05','coh8412615','T','Wednesday','16:00','2','cr.B12');
INSERT into event values('coh8412615.T06','coh8412615','T','Monday','16:00','2','cr.G2');
INSERT into event values('coh8412635.L01','coh8412635','L','Thursday','14:00','1','cr.B1');
INSERT into event values('coh8412635.L02','coh8412635','L','Friday','12:00','1','cr.B1');
INSERT into event values('coh8412635.T01','coh8412635','T','Monday','15:00','2','co.G78+G82');
INSERT into event values('coh8412635.T02','coh8412635','T','Friday','10:00','2','co.117+118');
INSERT into event values('coh8412635.T03','coh8412635','T','Thursday','11:00','2','co.LB47');
INSERT into event values('coh8412635.T04','coh8412635','T','Tuesday','10:00','2','cr.G90+116');
INSERT into event values('coh8412635.T05','coh8412635','T','Friday','15:00','2','co.LB47');
INSERT into event values('coh8412635.T06','coh8412635','T','Tuesday','14:00','2','cr.G90');
INSERT into event values('coh8521005.L01','coh8521005','L','Thursday','11:00','1','cr.G80');
INSERT into event values('coh8521005.T01','coh8521005','T','Friday','13:00','2','cr.G6');
INSERT into event values('coh8521005.T02','coh8521005','T','Friday','10:00','2','cr.G2');
INSERT into event values('coh8560095.L01','coh8560095','L','Thursday','17:00','1','cr.B1');
INSERT into event values('coh8560095.T01','coh8560095','T','Thursday','15:00','2','cr.G6');
INSERT into event values('coh8560095.T02','coh8560095','T','Thursday','11:00','2','cr.G6');
INSERT into event values('coh8560095.T03','coh8560095','T','Wednesday','10:00','2','cr.B9');


INSERT into student values('co.12008.Ea','WP and SS Elective','50',NULL);
INSERT into student values('co.12008.Eb','WP and SS Elective','50',NULL);
INSERT into student values('co.12012.E','UEC Elective','32',NULL);
INSERT into student values('co.22022.E','C++ Elective','40',NULL);
INSERT into student values('co1.BAe','BAe','15',NULL);
INSERT into student values('co1.CO','Computing 1st Year','150',NULL);
INSERT into student values('co1.CO.a','Computing 1st Year a','20','co1.CO');
INSERT into student values('co1.CO.c','Computing 1st Year c','20','co1.CO');
INSERT into student values('co1.CO.d','Computing 1st Year d','20','co1.CO');
INSERT into student values('co1.CO.e','Computing 1st Year e','20','co1.CO');
INSERT into student values('co1.CO.f','Computing 1st Year f','20','co1.CO');
INSERT into student values('co1.CO.h','Computing 1st Year h','20','co1.CO');
INSERT into student values('co1.CO.i','Computing 1st Year i','20','co1.CO');
INSERT into student values('co1.CO.j','Computing 1st Year j','20','co1.CO');
INSERT into student values('co1.IS','BSc Information Systems 1st Year','40',NULL);
INSERT into student values('co1.IS.a','BSc Information Systems 1st Year a','20','co1.IS');
INSERT into student values('co1.IS.b','BSc Information Systems 1st Year b','20','co1.IS');
INSERT into student values('co1.SE.pt','Software Engineering p/t 1','2',NULL);
INSERT into student values('co2.CO','Computing 2nd Year','100',NULL);
INSERT into student values('co2.CO.a','Computing 2nd Year a','20','co2.CO');
INSERT into student values('co2.CO.b','Computing 2nd Year b','20','co2.CO');
INSERT into student values('co2.CO.c','Computing 2nd Year c','20','co2.CO');
INSERT into student values('co2.CO.d','Computing 2nd Year d','20','co2.CO');
INSERT into student values('co2.CO.e','Computing 2nd Year e','20','co2.CO');
INSERT into student values('co2.CO.i','Computing 2nd Year Bridging','20',NULL);
INSERT into student values('co2.CO.j','Computing 2nd Year Bridging','20',NULL);
INSERT into student values('co2.CO.k','Computing 2nd Year Bridging','20',NULL);
INSERT into student values('co2.IS','Information Systems 2nd Year','20',NULL);
INSERT into student values('co2.NT.Ea','NT Elective','20',NULL);
INSERT into student values('co2.NT.Eb','NT Elective','20',NULL);
INSERT into student values('co2.NT.Ec','NT Elective','20',NULL);
INSERT into student values('co2.NT.Ed','NT Elective','20',NULL);
INSERT into student values('co2.NT.Ee','NT Elective','20',NULL);
INSERT into student values('co2.SE.pt','Software Engineering p/t 2','10',NULL);
INSERT into student values('co3.CO','BEng3 SoC year 3 (non SWE)','2',NULL);
INSERT into student values('co3.DMM','DEBS 3 Multimedia','15',NULL);
INSERT into student values('co3.DNC','DEBS Network Computing Year 3','27',NULL);
INSERT into student values('co3.DST','DEBS 3 Software Technology','4',NULL);
INSERT into student values('co3.IS','BSc3 Information Systems','0',NULL);
INSERT into student values('co3.MM','BEng3 Multimedia (non SWE)','20',NULL);
INSERT into student values('co3.ND','BEng3 Network and DS (non SWE)','15',NULL);
INSERT into student values('co3.SE','BEng3 Software Engineering (non SWE)','35',NULL);
INSERT into student values('co3.SE.pt','BEng3 Software Engineering p/t','5',NULL);
INSERT into student values('co4.CO','BSc4 Computing','25',NULL);
INSERT into student values('co4.DNC','DEBS 4 Network Computing','5',NULL);
INSERT into student values('co4.IS','BSc4 Information Systems','5',NULL);
INSERT into student values('co4.MM','BEng4 Multimedia Systems','22',NULL);
INSERT into student values('co4.ND','BEng4 Network and Distributing Systems','5',NULL);
INSERT into student values('co4.SE','BEng4 Software Engineering','30',NULL);
INSERT into student values('co4.SE.pt','BEng4 Software Engineering p/t','5',NULL);
INSERT into student values('co5.SE.pt','BEng5 Software Engineering p/t','5',NULL);
INSERT into student values('coh.HND1','HND Year 1','80',NULL);
INSERT into student values('coh.HND1a','HND Computing Year 1 a','20','coh.HND1');
INSERT into student values('coh.HND1b','HND Computing Year 1 b','20','coh.HND1');
INSERT into student values('coh.HND1c','HND Computing Year 1 c','20','coh.HND1');
INSERT into student values('coh.HND1d','HND Computing Year 1 d','20','coh.HND1');
INSERT into student values('coh.HND2','HND Computing Year 2','30',NULL);
INSERT into student values('coh.HND2a','HND Computing Year 2 a','15','coh.HND2');
INSERT into student values('coh.HND2b','HND Computing Year 2 b','15','coh.HND2');
INSERT into student values('com.IS','PgD Information Systems','115',NULL);
INSERT into student values('com.IS.a','PgD Information Systems a (HCI)','25','com.IS');
INSERT into student values('com.IS.b','PgD Information Systems b (DS)','15','com.IS');
INSERT into student values('com.IS.d','PgD Information Systems d (BT)','29','com.IS');
INSERT into student values('com.IS.e','PgD Information Systems e (OOP)','29','com.IS');
INSERT into student values('com.IS.th','PgD Information System pt. Thurs','5',NULL);
INSERT into student values('com.IS.tu','PgD Information System pt. Tues','5',NULL);
INSERT into student values('com.ITeC','PgD IT and e-Commerce','25',NULL);
INSERT into student values('com.ITeC.feb',NULL,'20',NULL);
INSERT into student values('com.ITeC.pt1','PgD IT and e-Commerce Oct pt','20',NULL);
INSERT into student values('com.ITeC.pt2','PgD IT and e-Commerce','25',NULL);
INSERT into student values('com.ITeC.z1','PgD IT and e-Commerce Oct evening','20',NULL);
INSERT into student values('com.ITeC.z2','PgD IT and e-Commerce Feb evening','19',NULL);
INSERT into student values('com.ITeC.z3','PgD IT and e-Commerce eve sem 3','20',NULL);
INSERT into student values('com.ITFS','PgD IT and Financial Services','25',NULL);
INSERT into student values('com.MM','PgD Multimedia FT Oct','128',NULL);
INSERT into student values('com.MM.a','PgD Multimedia a','32','com.MM');
INSERT into student values('com.MM.b','PgD Multimedia b','32','com.MM');
INSERT into student values('com.MM.c','PgD Multimedia c','32','com.MM');
INSERT into student values('com.MM.d','PgD Multimedia d','30','com.MM');
INSERT into student values('com.MM.feb','PgD Multimedia Feb intake','25',NULL);
INSERT into student values('com.MM.pt1','PgD Multimedia pt sem 1','8',NULL);
INSERT into student values('com.MM.pt2','PgD Multimedia p/t sem 2','4',NULL);
INSERT into student values('com.MM.pt3','PgD Multimedia sem 3','8',NULL);
INSERT into student values('com.MM.pt4','PgD Multimedia Oct. p/t sem 4','20',NULL);
INSERT into student values('com.SE','PgD Software Engineering','35',NULL);
INSERT into student values('com.SE.th','PgD Software Engineering pt th','5',NULL);
INSERT into student values('com.SE.tu','PgD Software Engineering pt tu','5',NULL);
INSERT into student values('com.ST','PgD Software Technology','45',NULL);
INSERT into student values('com.ST.a','PgD Software Technology a (HCI)','10','com.ST');
INSERT into student values('com.ST.b','PgD Software Technology b (DS)','10','com.ST');
INSERT into student values('com.ST.th','PgD Software Technology pt. Thurs','5',NULL);
INSERT into student values('com.ST.tu','PgD Software Technology pt. Tues','5',Null);










INSERT into attends values('co.12008.Ea','co12008.L01');
INSERT into attends values('co.12008.Ea','co12008.T01');
INSERT into attends values('co.12008.Eb','co12008.L01');
INSERT into attends values('co.12008.Eb','co12008.T02');
INSERT into attends values('co.12012.E','co12012.L01');
INSERT into attends values('co.12012.E','co12012.T01');
INSERT into attends values('co.22022.E','co22022.L01');
INSERT into attends values('co.22022.E','co22022.T01');
INSERT into attends values('co1.BAe','co12004.L01');
INSERT into attends values('co1.BAe','co12004.T05');
INSERT into attends values('co1.BAe','co12006.L02');
INSERT into attends values('co1.BAe','co12006.T04');
INSERT into attends values('co1.BAe','co12011.L01');
INSERT into attends values('co1.BAe','co12011.T01');
INSERT into attends values('co1.CO','co12004.L01');
INSERT into attends values('co1.CO','co12005.L01');
INSERT into attends values('co1.CO','co12005.L02');
INSERT into attends values('co1.CO','co12006.L01');
INSERT into attends values('co1.CO','co12006.L03');
INSERT into attends values('co1.CO.a','co12004.T01');
INSERT into attends values('co1.CO.a','co12005.T01');
INSERT into attends values('co1.CO.a','co12006.T01');
INSERT into attends values('co1.CO.c','co12004.T01');
INSERT into attends values('co1.CO.c','co12005.T01');
INSERT into attends values('co1.CO.c','co12006.T01');
INSERT into attends values('co1.CO.d','co12004.T02');
INSERT into attends values('co1.CO.d','co12005.T02');
INSERT into attends values('co1.CO.d','co12006.T02');
INSERT into attends values('co1.CO.e','co12004.T02');
INSERT into attends values('co1.CO.e','co12005.T02');
INSERT into attends values('co1.CO.e','co12006.T02');
INSERT into attends values('co1.CO.f','co12004.T06');
INSERT into attends values('co1.CO.f','co12005.T03');
INSERT into attends values('co1.CO.f','co12006.T03');
INSERT into attends values('co1.CO.h','co12004.T06');
INSERT into attends values('co1.CO.h','co12005.T03');
INSERT into attends values('co1.CO.h','co12006.T03');
INSERT into attends values('co1.CO.i','co12004.T03');
INSERT into attends values('co1.CO.i','co12005.T04');
INSERT into attends values('co1.CO.i','co12006.T04');
INSERT into attends values('co1.CO.j','co12004.T03');
INSERT into attends values('co1.CO.j','co12005.T04');
INSERT into attends values('co1.CO.j','co12006.T04');
INSERT into attends values('co1.IS','co12004.L01');
INSERT into attends values('co1.IS.a','co12004.T04');
INSERT into attends values('co1.IS.b','co12004.T04');
INSERT into attends values('co1.SE.pt','co12004.L02');
INSERT into attends values('co1.SE.pt','co12004.T01');
INSERT into attends values('co1.SE.pt','co12005.L01');
INSERT into attends values('co1.SE.pt','co12005.T05');

INSERT into teaches values('co.ACg','co12005.T01');
INSERT into teaches values('co.ACg','co42010.L01');
INSERT into teaches values('co.ACg','co42010.T01');
INSERT into teaches values('co.ACg','co42010.T02');
INSERT into teaches values('co.ACg','co72013.L01');
INSERT into teaches values('co.ACg','co72013.L02');
INSERT into teaches values('co.ACg','co72013.T03');
INSERT into teaches values('co.ACg','co72013.T04');
INSERT into teaches values('co.ACg','co72013.T05');
INSERT into teaches values('co.ACg','co72023.T02');
INSERT into teaches values('co.ACr','co72033.L01');
INSERT into teaches values('co.ACr','co72033.T01');
INSERT into teaches values('co.AFA','co22020.L01');
INSERT into teaches values('co.AFA','co22020.T04');
INSERT into teaches values('co.AFA','co22020.T05');
INSERT into teaches values('co.AL','co32011.L01');
INSERT into teaches values('co.AL','co32011.T01');
INSERT into teaches values('co.AL','co32011.T02');
INSERT into teaches values('co.AL','co32011.T03');
INSERT into teaches values('co.AL','co42019.L01');
INSERT into teaches values('co.AMn','co12004.L01');
INSERT into teaches values('co.AMn','co12004.T05');
INSERT into teaches values('co.ASc','co42015.L01');
INSERT into teaches values('co.ASc','co42015.T01');
INSERT into teaches values('co.ASr','co12006.L01');
INSERT into teaches values('co.ASr','co12006.L02');
INSERT into teaches values('co.ASr','co12006.L03');
INSERT into teaches values('co.ASr','co12006.T02');
INSERT into teaches values('co.ASr','co12006.T04');
INSERT into teaches values('co.ASr','co12006.T05');
INSERT into teaches values('co.ASr','coh8412585.L01');
INSERT into teaches values('co.ASr','coh8412585.T01');
INSERT into teaches values('co.ASr','coh8412585.T02');
INSERT into teaches values('co.ASr','coh8412585.T03');
INSERT into teaches values('co.ASr','coh8412615.L01');
INSERT into teaches values('co.ASr','coh8412615.T01');
INSERT into teaches values('co.ASr','coh8412615.T02');
INSERT into teaches values('co.ASr','coh8412615.T03');
INSERT into teaches values('co.ASr','coh8412615.T04');
INSERT into teaches values('co.ASr','coh8412615.T05');
INSERT into teaches values('co.ASr','coh8412615.T06');
INSERT into teaches values('co.ASr','coh8521005.L01');
INSERT into teaches values('co.ASr','coh8521005.T01');
INSERT into teaches values('co.ASr','coh8521005.T02');
INSERT into teaches values('co.AV','co32021.L01');
INSERT into teaches values('co.BC','co32023.L01');
INSERT into teaches values('co.BC','co32023.T01');
INSERT into teaches values('co.BC','co72003.L01');
INSERT into teaches values('co.BC','co72003.T01');
INSERT into teaches values('co.CHt','co12005.T03');



INSERT into week values('01',TO_DATE('02-10-2000','DD-MM-YYYY'));
INSERT into week values('02',TO_DATE('10-09-2000','DD-MM-YYYY'));
INSERT into week values('03',TO_DATE('16-10-2000','DD-MM-YYYY'));
INSERT into week values('04',TO_DATE('23-10-2000','DD-MM-YYYY'));
INSERT into week values('05',TO_DATE('30-10-2000','DD-MM-YYYY'));
INSERT into week values('06',TO_DATE('06-11-2000','DD-MM-YYYY'));
INSERT into week values('07',TO_DATE('13-11-2000','DD-MM-YYYY'));
INSERT into week values('08',TO_DATE('20-11-2000','DD-MM-YYYY'));
INSERT into week values('09',TO_DATE('27-11-2000','DD-MM-YYYY'));
INSERT into week values('10',TO_DATE('04-12-2000','DD-MM-YYYY'));
INSERT into week values('11',TO_DATE('11-12-2000','DD-MM-YYYY'));
INSERT into week values('12',TO_DATE('18-12-2000','DD-MM-YYYY'));
INSERT into week values('13',TO_DATE('08-01-2001','DD-MM-YYYY'));
INSERT into week values('14',TO_DATE('15-01-2001','DD-MM-YYYY'));
INSERT into week values('15',TO_DATE('22-01-2001','DD-MM-YYYY'));





INSERT into occurs values('co12004.L01','01');
INSERT into occurs values('co12004.L01','02');
INSERT into occurs values('co12004.L01','03');
INSERT into occurs values('co12004.L01','04');
INSERT into occurs values('co12004.L01','05');
INSERT into occurs values('co12004.L01','06');
INSERT into occurs values('co12004.L01','07');
INSERT into occurs values('co12004.L01','08');
INSERT into occurs values('co12004.L01','10');
INSERT into occurs values('co12004.L01','11');
INSERT into occurs values('co12004.L01','12');
INSERT into occurs values('co12004.L01','13');
INSERT into occurs values('co12004.L02','01');
INSERT into occurs values('co12004.L02','02');
INSERT into occurs values('co12004.L02','03');
INSERT into occurs values('co12004.L02','04');
INSERT into occurs values('co12004.L02','05');
INSERT into occurs values('co12004.L02','06');
INSERT into occurs values('co12004.L02','07');
INSERT into occurs values('co12004.L02','08');
INSERT into occurs values('co12004.L02','10');
INSERT into occurs values('co12004.L02','11');
INSERT into occurs values('co12004.L02','12');
INSERT into occurs values('co12004.L02','13');
INSERT into occurs values('co12004.T01','01');
INSERT into occurs values('co12004.T01','02');
INSERT into occurs values('co12004.T01','03');
INSERT into occurs values('co12004.T01','04');
INSERT into occurs values('co12004.T01','05');
INSERT into occurs values('co12004.T01','06');
INSERT into occurs values('co12004.T01','07');
INSERT into occurs values('co12004.T01','08');
INSERT into occurs values('co12004.T01','10');
INSERT into occurs values('co12004.T01','11');
INSERT into occurs values('co12004.T01','12');
INSERT into occurs values('co12004.T01','13');
INSERT into occurs values('co12004.T02','01');
INSERT into occurs values('co12004.T02','02');
INSERT into occurs values('co12004.T02','03');
INSERT into occurs values('co12004.T02','04');
INSERT into occurs values('co12004.T02','05');
INSERT into occurs values('co12004.T02','06');
INSERT into occurs values('co12004.T02','07');
INSERT into occurs values('co12004.T02','08');
INSERT into occurs values('co12004.T02','10');
INSERT into occurs values('co12004.T02','11');
INSERT into occurs values('co12004.T02','12');
INSERT into occurs values('co12004.T02','13');
INSERT into occurs values('co12004.T03','01');
INSERT into occurs values('co12004.T03','02');

/*
Atributos
*/
ALTER table room ADD CONSTRAINT ck_room_capacity CHECK(capacity>0);
ALTER table student ADD CONSTRAINT ck_student_sze CHECK(sze>=0);
ALTER table event ADD CONSTRAINT ck_event_kind CHECK(kind='L' or kind='T');
ALTER table event ADD CONSTRAINT ck_student_duration CHECK(duration>=0);
/*
poblar NoOK
*/
INSERT into occurs values('co12004.T03','02');
INSERT into occurs values('co12.T03','02');
INSERT into week values('15',TO_DATE('22-01-2002','DD-MM-YYYY'));
INSERT into week values('15',TO_DATE('22-01-2001','DD-MM-YYYY'));
INSERT into teaches values('co.BC','co72003.T01');
INSERT into teaches values('co','co12005.T03');
INSERT into attends values('co1.SE.pt','co12005.L01');
INSERT into attends values('co1.t','co12005.T05');
INSERT into student values('com.ST.tu','PgD Software Technology pt. Tues','5');
INSERT into room values('cr.204','204','40',NULL);
INSERT into event values('coh8412575.L01','coh8412575','L','Wednesday','11:00','2','cr.B2');
INSERT into modle values('coh8560095','Information Systems and Services');
INSERT into staff values('co.CG','Gregory, Chris');

/*
XPoblar
*/
delete from occurs;
delete from week;
delete from attends;
delete from teaches;
delete from event;
delete from room;
delete from staff;
delete from student;
delete from modle;


/*
XTablas
*/
drop table occurs;
drop table week;
drop table attends;
drop table teaches;
drop table event;
drop table room;
drop table staff;
drop table student;
drop table modle;

