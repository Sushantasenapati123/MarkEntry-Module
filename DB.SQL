USE [Final]
GO
/****** Object:  Table [dbo].[Assement_Mark]    Script Date: 09-09-2023 17:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assement_Mark](
	[slno] [int] IDENTITY(1,1) NOT NULL,
	[empid] [int] NULL,
	[mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[slno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batch_Allocate]    Script Date: 09-09-2023 17:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch_Allocate](
	[Batch_Allocate_id] [int] IDENTITY(1,1) NOT NULL,
	[Batch_id] [int] NULL,
	[Technology_id] [int] NULL,
	[Employee_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Batch_Allocate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batch_Master]    Script Date: 09-09-2023 17:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch_Master](
	[Batch_id] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Name] [varchar](50) NULL,
	[Batch_Start_Date] [date] NULL,
	[Batch_strength] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Batch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Master]    Script Date: 09-09-2023 17:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Master](
	[Employee_id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Name] [varchar](50) NULL,
	[Employee_Phone] [varchar](50) NULL,
	[Employee_Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technology_Master]    Script Date: 09-09-2023 17:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology_Master](
	[Technology_id] [int] IDENTITY(1,1) NOT NULL,
	[Teeechnology_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Technology_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assement_Mark] ON 

INSERT [dbo].[Assement_Mark] ([slno], [empid], [mark]) VALUES (1, 1, 55)
INSERT [dbo].[Assement_Mark] ([slno], [empid], [mark]) VALUES (2, 6, 78)
INSERT [dbo].[Assement_Mark] ([slno], [empid], [mark]) VALUES (3, 4, 60)
SET IDENTITY_INSERT [dbo].[Assement_Mark] OFF
GO
SET IDENTITY_INSERT [dbo].[Batch_Allocate] ON 

INSERT [dbo].[Batch_Allocate] ([Batch_Allocate_id], [Batch_id], [Technology_id], [Employee_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Batch_Allocate] ([Batch_Allocate_id], [Batch_id], [Technology_id], [Employee_id]) VALUES (2, 1, 5, 2)
INSERT [dbo].[Batch_Allocate] ([Batch_Allocate_id], [Batch_id], [Technology_id], [Employee_id]) VALUES (3, 1, 1, 3)
INSERT [dbo].[Batch_Allocate] ([Batch_Allocate_id], [Batch_id], [Technology_id], [Employee_id]) VALUES (4, 1, 3, 4)
INSERT [dbo].[Batch_Allocate] ([Batch_Allocate_id], [Batch_id], [Technology_id], [Employee_id]) VALUES (5, 1, 4, 5)
INSERT [dbo].[Batch_Allocate] ([Batch_Allocate_id], [Batch_id], [Technology_id], [Employee_id]) VALUES (6, 1, 2, 6)
SET IDENTITY_INSERT [dbo].[Batch_Allocate] OFF
GO
SET IDENTITY_INSERT [dbo].[Batch_Master] ON 

INSERT [dbo].[Batch_Master] ([Batch_id], [Batch_Name], [Batch_Start_Date], [Batch_strength]) VALUES (1, N'FY 22-23 Batch 1', CAST(N'2023-04-04' AS Date), 6)
INSERT [dbo].[Batch_Master] ([Batch_id], [Batch_Name], [Batch_Start_Date], [Batch_strength]) VALUES (2, N'FY 22-23 Batch 2', CAST(N'2023-04-04' AS Date), 67)
INSERT [dbo].[Batch_Master] ([Batch_id], [Batch_Name], [Batch_Start_Date], [Batch_strength]) VALUES (3, N'FY 22-23 Batch 3', CAST(N'2023-04-04' AS Date), 46)
SET IDENTITY_INSERT [dbo].[Batch_Master] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee_Master] ON 

INSERT [dbo].[Employee_Master] ([Employee_id], [Employee_Name], [Employee_Phone], [Employee_Email]) VALUES (1, N'Sunil Sarangi', N'9861098610', N'sunil@gmail.com')
INSERT [dbo].[Employee_Master] ([Employee_id], [Employee_Name], [Employee_Phone], [Employee_Email]) VALUES (2, N'Rabi Mohanty', N'9771497714', N'rabi@gmail.com')
INSERT [dbo].[Employee_Master] ([Employee_id], [Employee_Name], [Employee_Phone], [Employee_Email]) VALUES (3, N'Harish Jha', N'9861198611', N'harish@gmail.com')
INSERT [dbo].[Employee_Master] ([Employee_id], [Employee_Name], [Employee_Phone], [Employee_Email]) VALUES (4, N'Rama Mishra', N'9861298612', N'rama@gmail.com')
INSERT [dbo].[Employee_Master] ([Employee_id], [Employee_Name], [Employee_Phone], [Employee_Email]) VALUES (5, N'Puirna Mishra', N'9861398613', N'Purna@gmail.com')
INSERT [dbo].[Employee_Master] ([Employee_id], [Employee_Name], [Employee_Phone], [Employee_Email]) VALUES (6, N'Rosa Sahoo', N'9861498614', N'rosa@gmail.com')
SET IDENTITY_INSERT [dbo].[Employee_Master] OFF
GO
SET IDENTITY_INSERT [dbo].[Technology_Master] ON 

INSERT [dbo].[Technology_Master] ([Technology_id], [Teeechnology_Name]) VALUES (1, N'Dot Net')
INSERT [dbo].[Technology_Master] ([Technology_id], [Teeechnology_Name]) VALUES (2, N'Python')
INSERT [dbo].[Technology_Master] ([Technology_id], [Teeechnology_Name]) VALUES (3, N'Java')
INSERT [dbo].[Technology_Master] ([Technology_id], [Teeechnology_Name]) VALUES (4, N'PHP')
INSERT [dbo].[Technology_Master] ([Technology_id], [Teeechnology_Name]) VALUES (5, N'Database')
SET IDENTITY_INSERT [dbo].[Technology_Master] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_EMPLOYEE_MARKLIST]    Script Date: 09-09-2023 17:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_EMPLOYEE_MARKLIST](
@ACTION VARCHAR(2),
@Technology_id INT=0,
@Batch_id INT=0,
@empid INT=0,
@mark int=0,
@P_MSGOUT INT=0 OUTPUT
)
AS
BEGIN
SET NOCOUNT ON;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET XACT_ABORT ON;
BEGIN TRY
BEGIN TRANSACTION
IF(@ACTION='BB')--FILL BATCH
BEGIN
SELECT Batch_id,Batch_Name FROM Batch_Master
END
IF(@ACTION='BT')--FILL TECHNOLOGY
BEGIN
SELECT Technology_id,Teeechnology_Name FROM Technology_Master
END
IF(@ACTION='BE')--FILL EMPLOYEE
BEGIN
SELECT E.Employee_id,E.Employee_Name FROM Employee_Master E
INNER JOIN Batch_Allocate B ON E.Employee_id=B.Employee_id
WHERE B.Technology_id=@Technology_id AND B.Batch_id=@Batch_id
END
IF(@ACTION='IM')--INSERT EMPLOYEE MARK
BEGIN
IF((SELECT COUNT(1) FROM Assement_Mark WHERE empid=@empid)>0)
BEGIN
SET @P_MSGOUT=4
END
ELSE
BEGIN
INSERT INTO Assement_Mark VALUES(@empid,@mark)

SET @P_MSGOUT=5
END
END
IF(@ACTION='VM')--VIEW MARK BATCH WISE
BEGIN
SELECT BM.Batch_Name,CONVERT(DATE,BM.Batch_Start_Date,106) AS Batch_Start_Date,T.Teeechnology_Name,EM.Employee_Name,AM.mark,
CASE
WHEN AM.MARK<60 THEN 'F'
WHEN AM.MARK<79 THEN 'A'
WHEN AM.MARK<89 THEN 'E'
WHEN AM.MARK<100 THEN 'O'
END AS GRADE,
CASE
WHEN AM.MARK>=70 THEN 'ELIGIBLE'
ELSE 'NOT-ELIGIBLE'
END AS STATUS
FROM Employee_Master EM
INNER JOIN Batch_Allocate B ON EM.Employee_id=B.Employee_id
INNER JOIN Batch_Master BM ON B.Batch_id=BM.Batch_id
INNER JOIN Technology_Master T ON T.Technology_id=B.Technology_id
INNER JOIN Assement_Mark AM ON EM.Employee_id=AM.empid
WHERE B.Batch_id=@Batch_id
END
COMMIT TRANSACTION
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
SET @P_MSGOUT=0
ROLLBACK TRANSACTION
END
--select * from TrapException
INSERT INTO TrapException
VALUES 
(
ERROR_MESSAGE(),
CONVERT(VARCHAR, ERROR_LINE()),
GETDATE(),
ERROR_PROCEDURE()
)
END CATCH
END
GO
