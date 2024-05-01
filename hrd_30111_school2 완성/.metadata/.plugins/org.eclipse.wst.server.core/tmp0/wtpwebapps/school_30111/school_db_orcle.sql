drop table TBL_STUDENT_202210;

create table TBL_STUDENT_202210(
	stuid char(8) not null,
	sname varchar2(20),
	dept_name varchar2(20),
	jumin char(13),
	phone char(13),
	email char(30),
	primary key (stuid)
);

insert into TBL_STUDENT_202210 values('20220011', '김한국', '사회복지과', '0301013111111', '010-1111-1111', 'hankuk@naver.com' );
insert into TBL_STUDENT_202210 values('20220012', '홍길동', '관광과', '0202013222222', '010-2222-2222', 'hongkil@naver.com' );
insert into TBL_STUDENT_202210 values('20220013', '김미자', '패션디자인과', '0203014333333', '010-3333-3333', 'kimja@naver.com' );
insert into TBL_STUDENT_202210 values('20220014', '윤한얼', '물리치료과', '020401444444', '010-4444-4444', 'yoon@naver.com' );
insert into TBL_STUDENT_202210 values('20220015', '김성진', '모던음악과', '0205013555555', '010-5555-5555', 'kimsj@naver.com' );
insert into TBL_STUDENT_202210 values('20220016', '조민지', '건축과', '0206014666666', '010-6666-6666', 'jmg@naver.com' );


drop table TBL_SCORE_202210;

create table TBL_SCORE_202210(
	sid char(8) not null,
	subcode char(4),
	midscore number,
	finalscore number,
	attend number,
	report number,
	etc number,
	primary key (sid)
);

insert into TBL_SCORE_202210 values('20220011', 'A001' ,80, 90,100,100,100);
insert into TBL_SCORE_202210 values('20220012', 'A001' ,85, 90,90,90,80);
insert into TBL_SCORE_202210 values('20220013', 'A001' ,75, 90,80,77,80);
insert into TBL_SCORE_202210 values('20220014', 'A002' ,90, 90,100,100,70);
insert into TBL_SCORE_202210 values('20220015', 'A002' ,70, 70,80,80,90);
insert into TBL_SCORE_202210 values('20220016', 'A002' ,96, 95,100,100,90);


drop table TBL_SUBJECT_202210;

create table TBL_SUBJECT_202210(
	subcode char(4) not null,
	subname varchar2(30),
	proname varchar2(20),
	primary key(subcode)
);

insert into TBL_SUBJECT_202210 values('A001', '자바', '정명석');
insert into TBL_SUBJECT_202210 values('A002', 'C언어', '김미숙');
insert into TBL_SUBJECT_202210 values('A003', '데이터베이스', '서길동');
insert into TBL_SUBJECT_202210 values('A004', '웹프로그래밍', '이건원');
insert into TBL_SUBJECT_202210 values('A005', '영어', '박태민');



SELECT * FROM TBL_SCORE_202210 WHERE sid = '123';
