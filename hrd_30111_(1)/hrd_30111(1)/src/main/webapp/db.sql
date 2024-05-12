drop table TBL_TEACHER_202201;
CREATE TABLE TBL_TEACHER_202201(
	teacher_code char(3) not null,
	teacher_name varchar(15),
	class_name varchar(20),
	class_price int(8),
	teach_resist_date varchar(8),
	primary key(teacher_code)
);

INSERT INTO TBL_TEACHER_202201 VALUES('100', '이초급', '초급반', 100000, '20220101');
INSERT INTO TBL_TEACHER_202201 VALUES('200', '김중급', '중급반', 200000, '20220102');
INSERT INTO TBL_TEACHER_202201 VALUES('300', '박고급', '고급반', 300000, '20220103');
INSERT INTO TBL_TEACHER_202201 VALUES('400', '청심화', '심화반', 400000, '20220104');

select * from TBL_TEACHER_202201;



drop table TBL_MEMBER_202201;

CREATE TABLE TBL_MEMBER_202201(
	c_no char(5) not null,
	c_name varchar(15),
	phone varchar(11),
	address varchar(50),
	grade varchar(6),
	primary key(c_no)
);

INSERT INTO TBL_MEMBER_202201 VALUES('10001', '홍길동', '01011112222', '서울시 강남구', '일반');
INSERT INTO TBL_MEMBER_202201 VALUES('10002', '장발장', '01022223333', '성남시 분당구', '일반');
INSERT INTO TBL_MEMBER_202201 VALUES('10003', '임꺽정', '01033334444', '대전시 유성구', '일반');
INSERT INTO TBL_MEMBER_202201 VALUES('10004', '성춘향', '01044445555', '부산시 서구', 'VIP');
INSERT INTO TBL_MEMBER_202201 VALUES('10005', '이몽룡', '01055556666', '대구시 북구', 'VIP');


drop table TBL_CLASS_202201;


CREATE TABLE TBL_CLASS_202201(
	resist_month varchar(6) not null,
	c_no char(5) not null,
	class_area varchar(15),
	tuition int(8),
	teacher_code char(3),
	primary key(resist_month, c_no)
);

INSERT INTO TBL_CLASS_202201 VALUES('202203', '10001', '서울본원', 100000, '100');
INSERT INTO TBL_CLASS_202201 VALUES('202203', '10002', '성남분원', 100000, '100');
INSERT INTO TBL_CLASS_202201 VALUES('202203', '10003', '대전본원', 200000, '200');
INSERT INTO TBL_CLASS_202201 VALUES('202203', '20001', '부산본원', 150000, '300');
INSERT INTO TBL_CLASS_202201 VALUES('202203', '20002', '대구본원', 200000, '400');
