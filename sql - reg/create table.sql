CREATE TABLE TblStudents 
(
    StudentID bigint NOT NULL,
    StdName NVARCHAR(100),
    StdAddress NVARCHAR (300),
    ZipCode NVARCHAR (20),
    Telephone NVARCHAR (10),

    PRIMARY KEY (StudentID),

);

CREATE TABLE TblSubjects
(
    SubjectID bigint NOT NULL,
    CategoryID INT,
    SubjectName NVARCHAR (50),
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
    SubjectID bigint,
    Grade INT,

    PRIMARY KEY (RegisID),
    FOREIGN KEY (SubjectID) REFERENCES TblSubjects(SubjectID)
);
