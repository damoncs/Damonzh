--创建学生表
CREATE TABLE Students
(
	StudentId	VARCHAR(20),
	name	VARCHAR(20),
	sex		CHAR(1),
	Age		INT
)

--创建课程表
CREATE TABLE Subjects
(
	id INT,
	sname	VARCHAR(20),
	stime	datetime
)

--创建教室表
CREATE TABLE ClassRoom
(
	id	INT,
	cname	VARCHAR(20),
	TeacherName	VARCHAR(20)
);

--创建关系表选课表
CREATE TABLE Elective
(
	id 	INT,
	name	VARCHAR(20),
	Subjects	VARCHAR(20),
	TeacherName	VARCHAR(20),
	Etime	datetime
);

--创建签到表
CREATE TABLE Checks
(
	id 	INT,
	StudentId	VARCHAR(20),
	sname		VARCHAR(20),
	CHTime		datetime
);


INSERT INTO Students
SELECT '001','丁一宇','男','19' union all
SELECT '002','伊恩惠','女','20';