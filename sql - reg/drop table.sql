IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblRegiss]') AND type in (N'U'))
DROP TABLE [dbo].[TblRegiss]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblStudents]') AND type in (N'U'))
DROP TABLE [dbo].[TblStudents]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblSubjects]') AND type in (N'U'))
DROP TABLE [dbo].[TblSubjects]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TblRegisDetails]') AND type in (N'U'))
DROP TABLE [dbo].[TblRegisDetails]
GO

