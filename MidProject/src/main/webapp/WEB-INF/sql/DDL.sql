--학과 테이블
CREATE TABLE DEPARTMENT(
D_ID VARCHAR2(30) PRIMARY KEY,
D_NAME VARCHAR2(50) NOT NULL,
D_PHONE VARCHAR2(15)
);

--학생 테이블
CREATE TABLE STUDENT (
S_ID VARCHAR2(30) PRIMARY KEY,
S_NAME VARCHAR2(10) NOT NULL,
S_PASSWORD VARCHAR2(30) NOT NULL,
S_BIRTH VARCHAR2(10),
S_GRADE NUMBER(1) NOT NULL,
S_SEMESTER NUMBER(1) NOT NULL,
S_PHONE VARCHAR2(15),
S_IMG VARCHAR2(500),
S_SCORE NUMBER(2) DEFAULT 20 NOT NULL,

D_ID VARCHAR2(30) NOT NULL,
CONSTRAINT FK_S_D_ID FOREIGN KEY (D_ID)
REFERENCES DEPARTMENT(D_ID),

S_STATUS NUMBER(1) DEFAULT 1 NOT NULL
);

--교수 테이블
CREATE TABLE Professor (
P_ID VARCHAR2(25) PRIMARY KEY,
P_NAME VARCHAR2(10) NOT NULL,
p_password VARCHAR2(30) NOT NULL,
P_BIRTH VARCHAR2(10),
P_PHONE VARCHAR2(15),
P_IMG VARCHAR2(500),

D_ID VARCHAR2(30) NOT NULL,
CONSTRAINT FK_P_D_ID FOREIGN KEY (D_ID)
REFERENCES DEPARTMENT(D_ID)
);

--공지 테이블
CREATE TABLE BOARD (
BD_ID NUMBER PRIMARY KEY,
BD_TITLE VARCHAR2(200) NOT NULL,
BD_CONTENT VARCHAR2(4000) NOT NULL,
BD_DATE DATE DEFAULT SYSDATE NOT NULL,

BD_WRITER VARCHAR2(25) NOT NULL,
CONSTRAINT FK_BD_P_ID FOREIGN KEY (BD_WRITER)
REFERENCES Professor(P_ID)
);

--강의 테이블
CREATE TABLE LECTURE (
L_ID NUMBER(3) PRIMARY KEY,
L_NAME VARCHAR2(100) NOT NULL,
L_CREDIT NUMBER(1) NOT NULL,
L_DAY VARCHAR2(20) NOT NULL,
L_START VARCHAR2(10) NOT NULL,
L_END VARCHAR2(10) NOT NULL,
L_ROOM VARCHAR2(50),
P_ID VARCHAR2(25) NOT NULL,
l_capacity NUMBER(3) NOT NULL,

CONSTRAINT FK_L_P_ID FOREIGN KEY(P_ID)
REFERENCES Professor(P_ID)
);

--담당 테이블
CREATE TABLE CHARGE (
S_ID VARCHAR2(30) PRIMARY KEY,
P_ID VARCHAR2(25) NOT NULL,

CONSTRAINT FK_CH_S_ID FOREIGN KEY(S_ID) REFERENCES STUDENT(S_ID),
CONSTRAINT FK_CH_P_ID FOREIGN KEY(P_ID) REFERENCES PROFESSOR(P_ID)
);

--수강 테이블
CREATE TABLE COURSE (
L_ID NUMBER(3),
S_ID VARCHAR2(30),
C_YEAR NUMBER(4) NOT NULL,
C_SEMESTER NUMBER(1) NOT NULL,
C_MID NUMBER(3),
C_FINAL NUMBER(3),
C_SCORE VARCHAR2(10),

CONSTRAINT L_ID_S_ID_GROUP_PK PRIMARY KEY(L_ID, S_ID, c_year, c_semester),
CONSTRAINT FK_CO_L_ID FOREIGN KEY(L_ID) REFERENCES LECTURE(L_ID),
CONSTRAINT FK_CO_S_ID FOREIGN KEY(S_ID) REFERENCES STUDENT(S_ID)
);

--DROP TABLE department CASCADE CONSTRAINTS;
--DROP TABLE student CASCADE CONSTRAINTS;
--DROP TABLE professor CASCADE CONSTRAINTS;
--DROP TABLE board CASCADE CONSTRAINTS;
--DROP TABLE lecture CASCADE CONSTRAINTS;
--DROP TABLE course CASCADE CONSTRAINTS;
--DROP TABLE charge CASCADE CONSTRAINTS;