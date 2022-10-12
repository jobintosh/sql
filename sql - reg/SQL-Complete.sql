CREATE DATABASE  DbRegis_002
  COLLATE Thai_CI_AS;    
go

CREATE TABLE TblStudents 
(
    StudentID bigint NOT NULL,
    StdName NVARCHAR(254),
    StdAddress NVARCHAR (254),
    ZipCode NVARCHAR (254),
    Telephone NVARCHAR (254),

    PRIMARY KEY (StudentID),

);

CREATE TABLE TblSubjects
(
    SubjectID bigint NOT NULL,
    CategoryID INT,
    SubjectName NVARCHAR (254),
    Credit int,
    Sub_Limit int,

    PRIMARY KEY (SubjectID),
);

CREATE TABLE TblRegis
(
    RegisID bigint NOT NULL,
    StudentID bigint NOT NULL,
    RegisDate DATETIME,

    PRIMARY KEY (RegisID),
    FOREIGN KEY (StudentID) REFERENCES TblStudents(StudentID)
);

CREATE TABLE TblRegisDetails
(
    RegisID bigint NOT NULL,
    SubjectID bigint NOT NULL,
    Grade INT,

    PRIMARY KEY (RegisID),
    FOREIGN KEY (SubjectID) REFERENCES TblSubjects(SubjectID)
);

INSERT INTO TblStudents (StudentID, StdName, StdAddress, ZipCode, Telephone)
VALUES ('5711011940003','มนัสวีร์ ศรีขวัญใจ','18/18 ถ.บางนา-ตราด กม.18 บางพลีสมุทรปราการ','10540','3370361');
INSERT INTO TblStudents (StudentID, StdName, StdAddress, ZipCode, Telephone)
VALUES ('5711011940004','ธงไชย ศิริรัศมีวงศา','18/18 ถ.บางนา-ตราด กม.18 บางพลี สมุทรปราการ','10250','(662) 332-6503)');
INSERT INTO TblStudents (StudentID, StdName, StdAddress, ZipCode, Telephone)
VALUES ('5711011940005','กฤษฏา ศิริบูรพารัตน์ ','275 หมู่1 ถ.เพชรเกษม บางแคเหนือ ภาษีเจริญกทม','10110','240-3700)');
INSERT INTO TblStudents (StudentID, StdName, StdAddress, ZipCode, Telephone)
VALUES ('5711011940006 ','ณัฎฐวัตร แสนศิริ',' 1770 ถ.เพชรบุรีตัดใหม่ ห้วยขวาง กทม. ','10900','(662) 537-2000)');
INSERT INTO TblStudents (StudentID, StdName, StdAddress, ZipCode, Telephone)
VALUES ('5711011940008','ภัทรภร นุ่นสังข์','69/428 หมู่ 8 ถ.รัตนาธิเบศร์ บางกระสอ อ.เมืองนนทบุรี','10400','276-1040');
INSERT INTO TblStudents (StudentID, StdName, StdAddress, ZipCode, Telephone)
VALUES ('5711011940009','ธัญญ์นภัส เลิศพันธ์ทวี','อาคารบุญผ่อง ชั้น 18 1193 ถ.พหลโยธิน พญาไท กทม','10900','(662) 561-1036)');
INSERT INTO TblStudents (StudentID, StdName, StdAddress, ZipCode, Telephone)
VALUES ('5711011940010','ชิติพัทธ์ บุญประคอง','เลขที่ 2199, 2201, 2203, 2205, 2207 ถ.ลาดพร้าว แขวงวังทองหลาง บางกะปิ กรุงเทพ','10110','(662) 249-0141-5');
INSERT INTO TblStudents (StudentID, StdName, StdAddress, ZipCode, Telephone)
VALUES ('5711011940011','ชินวัตร นาลงาม','อาคารชาญอิสระทาวเวอร์ 2 ชั้น 1 2922/209 ถ.เพชรบุรีตัดใหม่ บางกะปิ กทม','10900','(662) 512-2271-3');
INSERT INTO TblStudents (StudentID, StdName, StdAddress, ZipCode, Telephone)
VALUES ('5711011940012','สุภาพร เขียวหวาน','อาคารสินธร ชั้น 10 132 ถ.วิทยุ ปทุมวันกรุงเทพฯ','10220','(662) 521-0368)');	

INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122201','2','Programming','3','60');
INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122202','2','Webprogramming','3','50');
INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122203','4','Database Management','3 ','50');
INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122204','4','Database Administration','3','120');
INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122205','2','Seminar','3','60');
INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122206','2','Operation System','3','40');
INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122207','1','Data Mining','3',' 50');
INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122208','3','Data Communication','3','30');
INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122209','2','Network Security','3','40');
INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122210','3','Advance Programming','3','60');


INSERT INTO TblRegis (RegisID, StudentID, RegisDate)
values ('10265','5711011940003','2011-08-08');
INSERT INTO TblRegis (RegisID, StudentID, RegisDate)
values ('10278','5711011940004','2011-08-11');
INSERT INTO TblRegis (RegisID, StudentID, RegisDate)
values ('10289','5711011940005','2011-08-11');
INSERT INTO TblRegis (RegisID, StudentID, RegisDate)
values ('10290','5711011940006','2011-08-12');
INSERT INTO TblRegis (RegisID, StudentID, RegisDate)
values ('10311','5711011940012','2011-08-14');
INSERT INTO TblRegis (RegisID, StudentID, RegisDate)
values ('10323','5711011940008','2011-08-15');
INSERT INTO TblRegis (RegisID, StudentID, RegisDate)
values ('10362','5711011940009',' 2011-08-22');
INSERT INTO TblRegis (RegisID, StudentID, RegisDate)
values ('10363','5711011940010',' 2011-08-25');


INSERT INTO TblRegisDetails (RegisID, SubjectID, Grade)
values ('10265','4122205','');
INSERT INTO TblRegisDetails (RegisID, SubjectID, Grade)
values ('10278','4122206','');
INSERT INTO TblRegisDetails (RegisID, SubjectID, Grade)
values ('10289','4122210','');
INSERT INTO TblRegisDetails (RegisID, SubjectID, Grade)
values ('10290','4122201','');