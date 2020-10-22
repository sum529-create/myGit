DROP TABLE LECTURE;
DROP TABLE ENROLL;
DROP TABLE STUDENT;
DROP TABLE PROFESSOR;
DROP TABLE COURSE;

CREATE TABLE PROFESSOR(
    PRO_NUM NUMBER PRIMARY KEY,
    PRO_NAME VARCHAR2(20),
    PRO_MAJOR VARCHAR2(20)
);

CREATE TABLE STUDENT(
    STD_ID NUMBER PRIMARY KEY,
    STD_NAME VARCHAR2(20),
    STD_ADDRESS VARCHAR2(20),
    STD_GRADE NUMBER,
    STD_PRO_NUM NUMBER REFERENCES PROFESSOR(PRO_NUM)
 );

CREATE TABLE COURSE(
    CRS_NUM NUMBER PRIMARY KEY,
    CRS_NAME VARCHAR2(20),
    CRS_POINT NUMBER
);
 
CREATE TABLE ENROLL(
    ENR_NUM NUMBER PRIMARY KEY,
    STD_ID NUMBER REFERENCES STUDENT(STD_ID),
    CRS_NUM NUMBER REFERENCES COURSE(CRS_NUM),
    ENR_DATE DATE
);
 
CREATE TABLE LECTURE(
    LEC_NUM NUMBER PRIMARY KEY,
    PRO_NUM NUMBER REFERENCES PROFESSOR(PRO_NUM),
    ENR_NUM NUMBER REFERENCES ENROLL(ENR_NUM),
    LEC_NAME VARCHAR2(20),
    LEC_CLASS VARCHAR2(20)
);

-- SYSDATE 현재 날짜 입력

INSERT INTO PROFESSOR VALUES(101, '로건', '컴퓨터공학');
INSERT INTO STUDENT VALUES(201601, '사만다', '신촌', 4, 101);
INSERT INTO COURSE VALUES(456, '자료구조', 3);
INSERT INTO ENROLL VALUES(123, 201601, 456, '20-10-22');
INSERT INTO LECTURE VALUES(111, 101, 123, '과기대', 'A01');

INSERT INTO PROFESSOR VALUES(102, '줄리아', '시각디자인과');
INSERT INTO STUDENT VALUES(201701, '앨리스', '일산', 3, 102);
INSERT INTO COURSE VALUES(789, '사물의 이해', 2);
INSERT INTO ENROLL VALUES(124, 201701, 789, '20-10-21');
INSERT INTO LECTURE VALUES(222, 102, 124, '종합관', 'B01');

INSERT INTO PROFESSOR VALUES(103, '마틸다', '국어국문학과');
INSERT INTO STUDENT VALUES(201801, '로빈슨', '파주', 2, 103);
INSERT INTO COURSE VALUES(753, '문학의 기초', 3);
INSERT INTO ENROLL VALUES(125, 201801, 753, '20-10-20');
INSERT INTO LECTURE VALUES(333, 103, 125, '인문대', 'C01');

SELECT * FROM PROFESSOR;
SELECT * FROM STUDENT;
SELECT * FROM COURSE;
SELECT * FROM ENROLL;
SELECT * FROM LECTURE;

