CREATE DATABASE STUDENTDB
GO
USE STUDENTDB
GO
CREATE TABLE STUDENT
(
SNO CHAR(10)  PRIMARY KEY,
SNAME CHAR(20) NOT NULL,
SSEX CHAR(2) NOT NULL DEFAULT '男',
SMAJOR CHAR(20) NOT NULL,
SDEPT CHAR(20) NOT NULL,
SAGE TINYINT,
TEL CHAR(15),
EMAIL VARCHAR(30),
CHECK(SSEX='男' OR SSEX='女'),
CHECK(SAGE>=1 AND SAGE<=80)
)
GO
CREATE TABLE TEACHER
(
TNO CHAR(10)  PRIMARY KEY,
TNAME CHAR(20) NOT NULL,
TSEX CHAR(2) NOT NULL DEFAULT '男',
TDEPT CHAR(20) NOT NULL,
TAGE TINYINT,
TPROT CHAR(10),
TEL CHAR(15),
EMAIL VARCHAR(30),
CHECK(TSEX='男' OR TSEX='女'),
CHECK(TAGE>=1 AND TAGE<=80),
CHECK(TPROT IN('讲师' ,'副教授','教授')),
)
GO
CREATE TABLE COURSE
(
CNO CHAR(10)  PRIMARY KEY,
CNAME CHAR(20) NOT NULL,
CCREDIT TINYINT,
XKLB CHAR(4),
CHECK(CCREDIT>=1 AND CCREDIT<=10),
CHECK(XKLB IN('选修' ,'必修')),
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
       
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2003001','刘建中','男','计算机科学学院',48,'教授','15000000000','liujianzhong@163.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2003002','周福','男','计算机科学学院',45,'副教授','15200000000','zhoufu@163.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2006001','陈萍','女','管理学院',39,'讲师','15300000000','chenping@sina.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2006002','汪琴仙','女','管理学院',46,'副教授','15900000000','wqingxian@126.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2008001','李成','男','管理学院',35,'讲师','18100000000','lichen@sina.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2008002','张连山','男','管理学院',47,'教授','13100000000','zlianshan@126.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2009001','周庆','女','理学院',46,'副教授','13500000000','zhouqing@sina.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2010001','王敏','男','理学院',34,'讲师','18900000000','wangmin@163.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2011001','方雄','男','计算机科学学院',32,'讲师','13100000000','fangxiong@126.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2012001','陈培平','男','理学院',50,'教授','13900000000','cpeiping@sina.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2012002','祝波','男','石油工程学院',43,'副教授','13400000000','zhubo@163.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2013001','林学富','男','石油工程学院',36,'讲师','18200000000','lxuefu@126.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2014001','张爱芳','女','石油工程学院',46,'教授','13400000000','zaifang@sina.com')
INSERT Teacher (Tno, Tname, Tsex, Tdept,Tage,Tprot,Tel,EMAIL) VALUES ('2014002','唐正如','女','石油工程学院',48,'教授','13300000000','tzhengru@163.com')


GO

INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('G2016001','李素素','女','行政管理','管理学院',22,'15600000000','susu@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('G2016002','朱萍','女','行政管理','管理学院',21,'15300000000','zhuping@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('G2016003','叶家裕','男','财务管理','管理学院',20,'15800000000','jiayu@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('G2016004','邓家如','女','财务管理','管理学院',20,'15600000000','jiaru@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('G2016005','高晓','女','财务管理','管理学院',21,'15400000000','gaoxiao@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('J2016001','杨华','男','计算机应用','计算机科学学院',20,'15200000000','yanghua@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('J2016002','刘全珍','女','计算机应用','计算机科学学院',21,'15300000000','liuqunz@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('J2016003','王国','男','计算机科学','计算机科学学院',21,'15500000000','wangguo@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('J2016004','孙荣','男','计算机科学','计算机科学学院',21,'15400000000','sunrong@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('J2016005','胡娟','女','信息安全','计算机科学学院',20,'15500000000','hujuan@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016001','张茂桦','男','光电子学','理学院',20,'18100000000','zmaohua@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016002','方杰','男','光电子学','理学院',21,'18200000000','fangjie@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016003','刘可','女','基础数学','理学院',20,'18300000000','liuke@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016004','黄一秋','男','基础数学','理学院',21,'18600000000','hyiqiu@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016005','唐治','男','理论力学','理学院',20,'18200000000','tangzhi@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('L2016006','韩云','男','理论力学','理学院',20,'18300000000','hanyun@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('S2016001','徐川','男','石油工程','石油工程学院',20,'18000000000','xuchuan@126.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('S2016002','汤洪','男','石油工程','石油工程学院',21,'18100000000','tanghong@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('S2016003','马秋婷','女','油气储运','石油工程学院',20,'18600000000','mqiuting@163.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('S2016004','周英','女','油气储运','石油工程学院',20,'18700000000','zhouying@sina.com')
INSERT Student (Sno, Sname, Ssex,Smajor,Sdept,Sage,Tel,EMAIL) VALUES ('S2016005','曹林','男','油气储运','石油工程学院',21,'13200000000','caolin@126.com')

GO

INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B001','操作系统',4,'必修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B002','计算机组成原理',2,'必修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B003','程度设计思想',3,'必修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B004','企业文化',3,'必修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B005','会计学',3,'必修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B006','高等数学',2,'必修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B007','线性代数',3,'必修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B008','大学英语',4,'必修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('B009','马克思主义哲学',4,'必修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('X001','大学生就业指导',1,'选修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('X002','大学生心理指导',1,'选修')
INSERT Course (Cno, Cname, Ccredit,XKLB) VALUES ('X003','大学生思想修养',1,'选修')

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