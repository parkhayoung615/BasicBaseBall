CREATE TABLE member (
	id VARCHAR2(20) NOT NULL,
	password VARCHAR(20) NOT NULL,
	email VARCHAR(300) NOT NULL,
	phone VARCHAR2(300) NOT NULL,
	adminOk varchar2(2),
	CONSTRAINT adminOk_check check (adminOk in ('T', 'F')),
	PRIMARY KEY(id)
);

insert into member values('admin', '1234', 'parkhayoung615@gmail.com', '01031236181', 'T');
insert into member values('yydh', '12', 'ys2110103@y-y.hs.kr', '01031236181', 'F');
insert into member values('parkhayoung615', '1234', 'parkhayoung0615@gmail.com', '01012345678', 'F');


select * from member;

drop table member;

delete member;