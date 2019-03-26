CREATE DATABASE STUDENTDB
GO
USE STUDENTDB
GO
CREATE TABLE STUDENT
(
SNO CHAR(10)  PRIMARY KEY,
SNAME CHAR(20) NOT NULL,
SSEX CHAR(2) NOT NULL DEFAULT '��',
SMAJOR CHAR(20) NOT NULL,
SDEPT CHAR(20) NOT NULL,
SAGE TINYINT,
TEL CHAR(15),
EMAIL VARCHAR(30),
CHECK(SSEX='��' OR SSEX='Ů'),
CHECK(SAGE>=1 AND SAGE<=80)
)
GO
CREATE TABLE TEACHER
(
TNO CHAR(10)  PRIMARY KEY,
TNAME CHAR(20) NOT NULL,
TSEX CHAR(2) NOT NULL DEFAULT '��',
TDEPT CHAR(20) NOT NULL,
TAGE TINYINT,
TPROT CHAR(10),
TEL CHAR(15),
EMAIL VARCHAR(30),
CHECK(TSEX='��' OR TSEX='Ů'),
CHECK(TAGE>=1 AND TAGE<=80),
CHECK(TPROT IN('��ʦ' ,'������','����')),
)
GO
CREATE TABLE COURSE
(
CNO CHAR(10)  PRIMARY KEY,
CNAME CHAR(20) NOT NULL,
CCREDIT TINYINT,
XKLB CHAR(4),
CHECK(CCREDIT>=1 AND CCREDIT<=10),
CHECK(XKLB IN('ѡ��' ,'����')),
)

GO
CREATE TABLE SC
(
SNO CHAR(10) ,
TNO CHAR(10) ,
CNO CHAR(10) ,
GRADE NUMERIC(3),
PRIMARY KEY(SNO,TNO,CNO),
FOREIGN KEY(SNO) REFERENCES STUDENT(SNO),
FOREIGN KEY(TNO) REFERENCES TEACHER(TNO),
FOREIGN KEY(CNO) REFERENCES COURSE(CNO)
)

GO       
       
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2003001','������','��','�������ѧѧԺ',48,'����','15000000000','liujianzhong@163.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2003002','�ܸ�','��','�������ѧѧԺ',45,'������','15200000000','zhoufu@163.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2006001','��Ƽ','Ů','����ѧԺ',39,'��ʦ','15300000000','chenping@sina.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2006002','������','Ů','����ѧԺ',46,'������','15900000000','wqingxian@126.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2008001','���','��','����ѧԺ',35,'��ʦ','18100000000','lichen@sina.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2008002','����ɽ','��','����ѧԺ',47,'����','13100000000','zlianshan@126.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2009001','����','Ů','��ѧԺ',46,'������','13500000000','zhouqing@sina.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2010001','����','��','��ѧԺ',34,'��ʦ','18900000000','wangmin@163.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2011001','����','��','�������ѧѧԺ',32,'��ʦ','13100000000','fangxiong@126.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2012001','����ƽ','��','��ѧԺ',50,'����','13900000000','cpeiping@sina.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2012002','ף��','��','ʯ�͹���ѧԺ',43,'������','13400000000','zhubo@163.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2013001','��ѧ��','��','ʯ�͹���ѧԺ',36,'��ʦ','18200000000','lxuefu@126.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2014001','�Ű���','Ů','ʯ�͹���ѧԺ',46,'����','13400000000','zaifang@sina.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2014002','������','Ů','ʯ�͹���ѧԺ',48,'����','13300000000','tzhengru@163.com')


GO

INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('G2016001','������','Ů','��������','����ѧԺ',22,'15600000000','susu@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('G2016002','��Ƽ','Ů','��������','����ѧԺ',21,'15300000000','zhuping@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('G2016003','Ҷ��ԣ','��','�������','����ѧԺ',20,'15800000000','jiayu@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('G2016004','�˼���','Ů','�������','����ѧԺ',20,'15600000000','jiaru@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('G2016005','����','Ů','�������','����ѧԺ',21,'15400000000','gaoxiao@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('J2016001','�','��','�����Ӧ��','�������ѧѧԺ',20,'15200000000','yanghua@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('J2016002','��ȫ��','Ů','�����Ӧ��','�������ѧѧԺ',21,'15300000000','liuqunz@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('J2016003','����','��','�������ѧ','�������ѧѧԺ',21,'15500000000','wangguo@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('J2016004','����','��','�������ѧ','�������ѧѧԺ',21,'15400000000','sunrong@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('J2016005','����','Ů','��Ϣ��ȫ','�������ѧѧԺ',20,'15500000000','hujuan@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016001','��ï��','��','�����ѧ','��ѧԺ',20,'18100000000','zmaohua@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016002','����','��','�����ѧ','��ѧԺ',21,'18200000000','fangjie@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016003','����','Ů','������ѧ','��ѧԺ',20,'18300000000','liuke@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016004','��һ��','��','������ѧ','��ѧԺ',21,'18600000000','hyiqiu@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016005','����','��','������ѧ','��ѧԺ',20,'18200000000','tangzhi@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016006','����','��','������ѧ','��ѧԺ',20,'18300000000','hanyun@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('S2016001','�촨','��','ʯ�͹���','ʯ�͹���ѧԺ',20,'18000000000','xuchuan@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('S2016002','����','��','ʯ�͹���','ʯ�͹���ѧԺ',21,'18100000000','tanghong@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('S2016003','������','Ů','��������','ʯ�͹���ѧԺ',20,'18600000000','mqiuting@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('S2016004','��Ӣ','Ů','��������','ʯ�͹���ѧԺ',20,'18700000000','zhouying@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('S2016005','����','��','��������','ʯ�͹���ѧԺ',21,'13200000000','caolin@126.com')

GO

INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B001','����ϵͳ',4,'����')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B002','��������ԭ��',2,'����')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B003','�̶����˼��',3,'����')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B004','��ҵ�Ļ�',3,'����')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B005','���ѧ',3,'����')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B006','�ߵ���ѧ',2,'����')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B007','���Դ���',3,'����')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B008','��ѧӢ��',4,'����')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B009','���˼������ѧ',4,'����')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('X001','��ѧ����ҵָ��',1,'ѡ��')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('X002','��ѧ������ָ��',1,'ѡ��')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('X003','��ѧ��˼������',1,'ѡ��')

GO

INSERT SC (Sno,Tno,Cno,Grade) VALUES ('G2016001','2006001','B004',80)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('G2016001','2008001','B008',88)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('J2016001','2003001','B001',90)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('J2016005','2011001','B003',87)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('J2016001','2011001','B002',91)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('J2016004','2003002','B008',50)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('J2016004','2011001','B002',85)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('G2016003','2006002','B005',86)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('G2016003','2008002','X001',91)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('L2016001','2009001','B007',80)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('L2016002','2009001','B007',92)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('L2016004','2009001','B007',83)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('L2016005','2010001','B006',78)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('L2016001','2010001','B006',48)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('L2016006','2003002','B008',86)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('S2016001','2012002','B008',85)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('S2016002','2012002','B008',79)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('S2016003','2012002','B008',80)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('S2016001','2013001','B006',90)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('S2016004','2013001','B006',86)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('S2016005','2014001','X003',92)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('S2016003','2014001','X003',88)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('G2016002','2008002','X002',84)
INSERT SC (Sno,Tno,Cno,Grade) VALUES ('G2016005','2008002','X003',87)
GO