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