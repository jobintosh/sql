INSERT INTO  TblStudents (StudentID, StdName, StdAddress, ZipCode, Telephone)
VALUES ('5711011940003','มนัสวีร์ ศรีขวัญใจ','18/18 ถ.บางนา-ตราด กม.18 บางพลีสมุทรปราการ','10540','3370361');

INSERT INTO TblSubjects (SubjectID, CategoryID, SubjectName, Credit, Sub_Limit)
VALUES ('4122205','2','Programming','3','60');

INSERT INTO TblRegis (RegisID, StudentID, RegisDate)
VALUES ('10265','5711011940003','2011-08-08');

INSERT INTO TblRegisDetails (RegisID, SubjectID, Grade)
VALUES ('10265','4122205','');
