--����ѧ����
CREATE TABLE Students
(
	StudentId	VARCHAR(20),
	name	VARCHAR(20),
	sex		CHAR(1),
	Age		INT
)

--�����γ̱�
CREATE TABLE Subjects
(
	id INT,
	sname	VARCHAR(20),
	stime	datetime
)

--�������ұ�
CREATE TABLE ClassRoom
(
	id	INT,
	cname	VARCHAR(20),
	TeacherName	VARCHAR(20)
);

--������ϵ��ѡ�α�
CREATE TABLE Elective
(
	id 	INT,
	name	VARCHAR(20),
	Subjects	VARCHAR(20),
	TeacherName	VARCHAR(20),
	Etime	datetime
);

--����ǩ����
CREATE TABLE Checks
(
	id 	INT,
	StudentId	VARCHAR(20),
	sname		VARCHAR(20),
	CHTime		datetime
);


INSERT INTO Students
SELECT '001','��һ��','��','19' union all
SELECT '002','������','Ů','20';