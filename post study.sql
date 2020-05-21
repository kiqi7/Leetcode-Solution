CREATE TABLE STUDEN
(SNO VARCHAR(3) NOT NULL,
SNAME VARCHAR(4) NOT NULL,
SSEX VARCHAR(2) NOT NULL,
SBIRTHDAY DATETIME,
CLASS VARCHAR(5));

ALTER TABLE studen
ADD CONSTRAINT primary key (sno);
ALTER TABLE course
ADD constraint primary key (cno);
ALTER TABLE score
ADD constraint primary key (sno, cno);
ALTER TABLE teacher
ADD constraint primary key (tno);
ALTER TABLE course
ADD constraint foreign key (tno) references teacher (tno);
ALTER TABLE score
ADD constraint foreign key (cno) references course (cno);