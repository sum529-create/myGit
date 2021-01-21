DROP SEQUENCE MEMBER_SEQ;
CREATE SEQUENCE MEMBER_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 999
NOCYCLE
NOCACHE;

DROP TABLE MEMBER;
CREATE TABLE MEMBER
(
	NO NUMBER PRIMARY KEY,
	ID VARCHAR2(50),
	NAME VARCHAR2(100),
	GENDER VARCHAR2(10),
	ADDRESS VARCHAR2(200)
);

INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'USER1', '사용자1', '남', '서울');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'USER2', '사용자2', '여', '강원');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'USER3', '사용자3', '남', '제주');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'USER4', '사용자4', '여', '부산');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'USER5', '사용자5', '남', '인천');