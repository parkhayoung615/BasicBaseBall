-- dict, mark, member
CREATE TABLE mark (
	id VARCHAR2(20) NOT NULL,
	dict_num number NOT NULL,
	member_id varchar2(20) NOT NULL,
	PRIMARY KEY(id)
);

insert into mark values('admin12', 3, 'admin');

select d.position, d.title from mark m, dict d, member b
	where m.member_id = b.id
	AND b.id = 'admin';
	
select d.position, d.title from mark m, dict d, member b where m.member_id = b.id AND b.id = 'admin';
-- yn, contect, title
select DECODE(d.yn,'Y', '승인', 'N', '승인대기중', 'O', '취소') 특기, d.contents, d.title from mark m, dict d, member b where m.member_id = b.id AND b.id = 'admin';

	
select * from mark m, dict d, member b
	where m.dict_num = d.id
	AND m.member_id = b.id
	AND b.id = 'admin';


select * from mark;

drop table mark;

delete mark;
