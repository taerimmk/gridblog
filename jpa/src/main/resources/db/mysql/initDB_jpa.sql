create database jpa;

USE jpa;

CREATE TABLE BBS (
  ID middleint not null auto_increment primary key,
  BBS_ID char(20) NOT NULL,
  NTT_NO decimal(20,0) DEFAULT NULL,
  NTT_SJ varchar(2000) DEFAULT NULL,
  NTT_CN mediumtext,
  NTT_LK varchar(2000) DEFAULT NULL,
  NTT_TY char(1) DEFAULT 'A',
  ANSWER_AT char(1) DEFAULT NULL,
  PARNTSCTT_NO decimal(10,0) DEFAULT NULL,
  ANSWER_LC int(11) DEFAULT NULL,
  SORT_ORDR decimal(8,0) DEFAULT NULL,
  RDCNT decimal(10,0) DEFAULT NULL,
  USE_AT char(1) NOT NULL,
  NTCR_ID varchar(20) DEFAULT NULL,
  NTCR_NM varchar(20) DEFAULT NULL,
  PASSWORD varchar(200) DEFAULT NULL,
  ATCH_FILE_ID middleint DEFAULT NULL,
  REGI_DATE datetime NOT NULL,
  REGI_ID middleint NOT NULL,
  UPDT_DATE datetime DEFAULT NULL,
  UPDT_ID middleint DEFAULT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE USER (
ID MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
USER_ID VARCHAR(20) NOT NULL,
NAME VARCHAR(20) NOT NULL,
EMAIL VARCHAR(40) NOT NULL,
STATUS CHAR(1) NOT NULL,
PASSWORD varchar(255) NOT NULL,
ATCH_FILE_ID varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into USER (USER_ID, name, email, status, PASSWORD)
values ('admin','관리자','admin@nokpon.co.kr','A', '1');


insert into NOK_USER (id, name, email, status,unique_id)
values ('admin','관리자','admin@nokpon.co.kr','A','admin')



INSERT INTO `jpa`.`ROLE`(`ROLE`,`REGI_DATE`)VALUES('ROLE_ADMIN',now());
INSERT INTO `jpa`.`USER_ROLE`(`USER`,`ROLE`,`REGI_DATE`)VALUES(1,1,now());


CREATE TABLE `ROLE` (
`ID` MEDIUMINT NOT NULL AUTO_INCREMENT,
`ROLE` varchar(20) NOT NULL,
`REGI_DATE` datetime DEFAULT NULL,
PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `USER_ROLE` (
`ID` MEDIUMINT NOT NULL AUTO_INCREMENT,
`USER` MEDIUMINT NOT NULL,
`ROLE` MEDIUMINT NOT NULL,
`REGI_DATE` datetime DEFAULT NULL,
PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `jpa`.`BBSMST`
(`BBS_NM`,`BBS_INTRCN`,`BBS_TY_CODE`,`BBS_ATTRB_CODE`,`REPLY_POSBL_AT`,`FILE_ATCH_POSBL_AT`,`ATCH_POSBL_FILE_NUMBER`,`ATCH_POSBL_FILE_SIZE`,`USE_AT`,`TMPLAT_ID`,`REGI_DATE`,`REGI_ID`,`UPDT_DATE`,`UPDT_ID`)
VALUES
('일반','일반게시판','BBS','AT0','Y','N',0,0,'Y','',now(),1,now(),1);

INSERT INTO `jpa`.`BBSMST`
(`BBS_NM`,`BBS_INTRCN`,`BBS_TY_CODE`,`BBS_ATTRB_CODE`,`REPLY_POSBL_AT`,`FILE_ATCH_POSBL_AT`,`ATCH_POSBL_FILE_NUMBER`,`ATCH_POSBL_FILE_SIZE`,`USE_AT`,`TMPLAT_ID`,`REGI_DATE`,`REGI_ID`,`UPDT_DATE`,`UPDT_ID`)
VALUES
('동영상','동영상게시판','MOV','AT0','Y','N',0,0,'Y','',now(),1,now(),1);

CREATE TABLE BBSMST (
  ID middleint not null auto_increment primary key,
  BBS_NM varchar(255) NOT NULL,
  BBS_INTRCN varchar(2400) DEFAULT NULL,
  BBS_TY_CODE char(3) NOT NULL,
  BBS_ATTRB_CODE char(3) NOT NULL,
  REPLY_POSBL_AT char(1) DEFAULT NULL,
  FILE_ATCH_POSBL_AT char(1) NOT NULL,
  ATCH_POSBL_FILE_NUMBER decimal(2,0) NOT NULL,
  ATCH_POSBL_FILE_SIZE decimal(8,0) DEFAULT NULL,
  USE_AT char(1) NOT NULL,
  TMPLAT_ID char(20) DEFAULT NULL,
  REGI_DATE datetime NOT NULL,
  REGI_ID middleint NOT NULL,
  UPDT_DATE datetime DEFAULT NULL,
  UPDT_ID middleint DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;