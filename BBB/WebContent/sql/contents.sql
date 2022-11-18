CREATE TABLE dict (
	id number PRIMARY KEY,
	position varchar2(300),
	title varchar2(300),
	contents varchar2(1500),
	yn VARCHAR2(2),
	write varchar2(50),
	CONSTRAINT yn_check check (yn in ('Y', 'N', 'O'))
	-- Y : 승인 / N : 승인 대기중 / O : 반려
);

SELECT * FROM dict WHERE yn = 'Y' ORDER BY id desc, position desc;
SELECT * FROM dict WHERE position like '%투수%' ORDER BY id desc, position desc;

select DECODE(d.yn,'Y', '승인', 'N', '승인대기중', 'O', '취소') yn, d.contents, d.title from dict d, member b where b.id = 'admin' AND d.write = b.id AND yn = 'N';

select * from dict order by id;

CREATE SEQUENCE dict_seq
	START WITH 1
	MINVALUE 1
;

SELECT dict_seq.nextval FROM DUAL;

INSERT INTO dict values(DICT_SEQ.NEXTVAL, '포수, 투수, 공식', '배터리', '투수와 포수를 묶어서 말할 때 쓰는 단어', 'Y', 'admin');
INSERT INTO dict values(DICT_SEQ.NEXTVAL, '비공식', '가을야구', '포스트시즌, KBO 포스트시즌', 'Y', 'admin');
INSERT INTO dict values(DICT_SEQ.NEXTVAL, '타자', '도루', '베이스에 있는 주자가 공과 상관없이 다음 베이스로 가는 것', 'Y', 'admin');
INSERT INTO dict values(DICT_SEQ.NEXTVAL, '타자', '고의사구', '고의적인 볼넷으로 타자를 1루로 출루시키는 것', 'Y', 'admin');
INSERT INTO dict values(DICT_SEQ.NEXTVAL, '비공식', '엘롯기', 'KBO 리그에서 LG 트윈스, 롯데 자이언츠, KIA 타이거즈의 첫 글자를 딴 신조어', 'Y', 'admin');
INSERT INTO dict values(DICT_SEQ.NEXTVAL, '공식', '풀카운트', '볼카운트가 3볼 2스트라이크인 상태를 뜻한다.', 'Y', 'admin');
INSERT INTO dict values(DICT_SEQ.NEXTVAL, '포수', '프레이밍', '포수가 투수의 공을 포구 할 때 심판에게 유리한 판정을 받기 위해 글러브를 움직이는 행위', 'Y', 'admin');
INSERT INTO dict values(DICT_SEQ.NEXTVAL, '공식', '볼', '투수의 공이 스트라이크 존을 벗어나고 타자가 해당 공에 스윙을 하지 않았을 때 주어지는 판정.', 'Y', 'admin');
INSERT INTO dict values(DICT_SEQ.NEXTVAL, '공식', '볼넷', '타자가 타석에서 4개의 볼 카운트를 얻어내 1루로 나가는 것을 뜻한다.', 'Y', 'admin');

DROP TABLE dict;
delete dict;

DROP SEQUENCE dict_seq;



CREATE TABLE contact (
	id number PRIMARY KEY,
	name varchar2(100),
	email varchar2(100),
	contact varchar2(100),
	message varchar2(200)
);

CREATE SEQUENCE contact_seq;

INSERT INTO contact values(CONTACT_SEQ.NEXTVAL, '하뇽뇽', 'parkhayoung615@gmail.com', '01031236181', '야이바부야너주거');
INSERT INTO contact values(CONTACT_SEQ.NEXTVAL, '박하영', 'ys2110103@y-y.hs.kr', '01012345678', '어너내일죽어');
INSERT INTO contact values(CONTACT_SEQ.NEXTVAL, '하녕냥', 'parkhayoung0615@gmail.com', '01018181818', '너를좋아한게죄라면죈데그게죄라고할수잇어씨 팔');

DROP TABLE contact;

DROP SEQUENCE contact_seq;