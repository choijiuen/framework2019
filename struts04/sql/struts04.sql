--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-7岿-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table STRUTS04
--------------------------------------------------------

  CREATE TABLE "SCOTT"."STRUTS04" 
   (	"NUM" NUMBER, 
	"SUB" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"NALJA" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SCOTT.STRUTS04
SET DEFINE OFF;
Insert into SCOTT.STRUTS04 (NUM,SUB,NAME,CONTENT,NALJA) values (1,'test1','tester','test',to_date('19/07/18','RR/MM/DD'));
Insert into SCOTT.STRUTS04 (NUM,SUB,NAME,CONTENT,NALJA) values (2,'test2','tester','test',to_date('19/07/18','RR/MM/DD'));
Insert into SCOTT.STRUTS04 (NUM,SUB,NAME,CONTENT,NALJA) values (3,'test3','tester','test',to_date('19/07/18','RR/MM/DD'));
Insert into SCOTT.STRUTS04 (NUM,SUB,NAME,CONTENT,NALJA) values (4,'test4','tester','test',to_date('19/07/18','RR/MM/DD'));
