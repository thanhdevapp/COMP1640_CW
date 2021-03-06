
GO
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK_Student_asp_User]
GO
ALTER TABLE [dbo].[Report] DROP CONSTRAINT [FK_Report_asp_User3]
GO
ALTER TABLE [dbo].[Report] DROP CONSTRAINT [FK_Report_asp_User2]
GO
ALTER TABLE [dbo].[Report] DROP CONSTRAINT [FK_Report_asp_User1]
GO
ALTER TABLE [dbo].[Report] DROP CONSTRAINT [FK_Report_asp_User]
GO
ALTER TABLE [dbo].[Profile] DROP CONSTRAINT [FK_Profile_asp_User]
GO
ALTER TABLE [dbo].[Grade] DROP CONSTRAINT [FK_Grade_Student]
GO
ALTER TABLE [dbo].[Grade] DROP CONSTRAINT [FK_Grade_Course1]
GO
ALTER TABLE [dbo].[Course] DROP CONSTRAINT [FK_Course_asp_User2]
GO
ALTER TABLE [dbo].[Course] DROP CONSTRAINT [FK_Course_asp_User1]
GO
ALTER TABLE [dbo].[Course] DROP CONSTRAINT [FK_Course_asp_User]
GO
ALTER TABLE [dbo].[Class] DROP CONSTRAINT [FK_Class_Course]
GO
ALTER TABLE [dbo].[asp_User_Group] DROP CONSTRAINT [FK__asp_User___useri__25869641]
GO
ALTER TABLE [dbo].[asp_User_Group] DROP CONSTRAINT [FK__asp_User___group__24927208]
GO
ALTER TABLE [dbo].[asp_Group_Role] DROP CONSTRAINT [FK__asp_Group__roleN__239E4DCF]
GO
ALTER TABLE [dbo].[asp_Group_Role] DROP CONSTRAINT [FK__asp_Group__group__22AA2996]
GO
ALTER TABLE [dbo].[Report] DROP CONSTRAINT [DF_Report_Modified]
GO
ALTER TABLE [dbo].[Report] DROP CONSTRAINT [DF_Report_Created]
GO
ALTER TABLE [dbo].[asp_Role] DROP CONSTRAINT [DF__asp_Role__status__21B6055D]
GO
ALTER TABLE [dbo].[asp_Group] DROP CONSTRAINT [DF__asp_Group__statu__20C1E124]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[Student]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[Report]
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[Profile]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[Grade]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[Course]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[Class]
GO
/****** Object:  Table [dbo].[asp_User_Group]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[asp_User_Group]
GO
/****** Object:  Table [dbo].[asp_User]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[asp_User]
GO
/****** Object:  Table [dbo].[asp_Role]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[asp_Role]
GO
/****** Object:  Table [dbo].[asp_Group_Role]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[asp_Group_Role]
GO
/****** Object:  Table [dbo].[asp_Group]    Script Date: 09/03/2016 5:32:21 PM ******/
DROP TABLE [dbo].[asp_Group]
GO
/****** Object:  Table [dbo].[asp_Group]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_Group](
	[id] [int] NOT NULL,
	[name] [nvarchar](128) NOT NULL,
	[description] [nvarchar](1024) NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK__asp_Grou__3213E83F574E4F1F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_Group_Role]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_Group_Role](
	[roleName] [nvarchar](128) NOT NULL,
	[groupid] [int] NOT NULL,
 CONSTRAINT [PK__asp_Grou__F9183898A2A3FC6B] PRIMARY KEY CLUSTERED 
(
	[roleName] ASC,
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_Role]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_Role](
	[name] [nvarchar](128) NOT NULL,
	[description] [nvarchar](1024) NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK__asp_Role__72E12F1AAC9EB89A] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_User]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_User](
	[account] [nvarchar](32) NOT NULL,
	[password] [nvarchar](32) NOT NULL,
	[userName] [nvarchar](128) NOT NULL,
	[email] [nvarchar](128) NULL,
 CONSTRAINT [PK__asp_User__EA162E10AE33DC1F] PRIMARY KEY CLUSTERED 
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_User_Group]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_User_Group](
	[userid] [nvarchar](32) NOT NULL,
	[groupid] [int] NOT NULL,
 CONSTRAINT [PK__asp_User__832DF2AFDD5708E7] PRIMARY KEY CLUSTERED 
(
	[userid] ASC,
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Class]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[IDClass] [int] NOT NULL,
	[Subject] [varchar](45) NULL,
	[CourseID] [int] NULL,
	[Department] [varchar](45) NULL,
	[Title] [varchar](45) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[IDClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[IDCourse] [int] IDENTITY(1,1) NOT NULL,
	[CMID] [nvarchar](32) NULL,
	[Dates] [varchar](45) NULL,
	[Credits] [int] NULL,
	[Days] [int] NULL,
	[BTime] [datetime] NULL,
	[ETime] [datetime] NULL,
	[Location] [nvarchar](50) NULL,
	[FID] [nvarchar](32) NULL,
	[CLID] [nvarchar](32) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[IDCourse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeID] [int] IDENTITY(1,1) NOT NULL,
	[StudentGrade] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[TotalScore] [int] NULL,
	[GradeLetter] [nvarchar](50) NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profile]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile](
	[ProfileID] [int] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](32) NULL,
	[fullname] [nvarchar](50) NULL,
	[phone] [nvarchar](11) NULL,
	[address] [nvarchar](200) NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Report]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[Studentcount] [int] NULL,
	[StatisticalData] [nvarchar](max) NULL,
	[GradeDistributionData] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CLID] [nvarchar](32) NULL,
	[CMID] [nvarchar](32) NULL,
	[PVCID] [nvarchar](32) NULL,
	[DLTID] [nvarchar](32) NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 09/03/2016 5:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[IDStudent] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[account] [nvarchar](32) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[IDStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[asp_Group] ADD  CONSTRAINT [DF__asp_Group__statu__20C1E124]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[asp_Role] ADD  CONSTRAINT [DF__asp_Role__status__21B6055D]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Report] ADD  CONSTRAINT [DF_Report_Created]  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[Report] ADD  CONSTRAINT [DF_Report_Modified]  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[asp_Group_Role]  WITH CHECK ADD  CONSTRAINT [FK__asp_Group__group__22AA2996] FOREIGN KEY([groupid])
REFERENCES [dbo].[asp_Group] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[asp_Group_Role] CHECK CONSTRAINT [FK__asp_Group__group__22AA2996]
GO
ALTER TABLE [dbo].[asp_Group_Role]  WITH CHECK ADD  CONSTRAINT [FK__asp_Group__roleN__239E4DCF] FOREIGN KEY([roleName])
REFERENCES [dbo].[asp_Role] ([name])
GO
ALTER TABLE [dbo].[asp_Group_Role] CHECK CONSTRAINT [FK__asp_Group__roleN__239E4DCF]
GO
ALTER TABLE [dbo].[asp_User_Group]  WITH CHECK ADD  CONSTRAINT [FK__asp_User___group__24927208] FOREIGN KEY([groupid])
REFERENCES [dbo].[asp_Group] ([id])
GO
ALTER TABLE [dbo].[asp_User_Group] CHECK CONSTRAINT [FK__asp_User___group__24927208]
GO
ALTER TABLE [dbo].[asp_User_Group]  WITH CHECK ADD  CONSTRAINT [FK__asp_User___useri__25869641] FOREIGN KEY([userid])
REFERENCES [dbo].[asp_User] ([account])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[asp_User_Group] CHECK CONSTRAINT [FK__asp_User___useri__25869641]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([IDCourse])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Course]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_asp_User] FOREIGN KEY([CMID])
REFERENCES [dbo].[asp_User] ([account])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_asp_User]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_asp_User1] FOREIGN KEY([CLID])
REFERENCES [dbo].[asp_User] ([account])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_asp_User1]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_asp_User2] FOREIGN KEY([FID])
REFERENCES [dbo].[asp_User] ([account])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_asp_User2]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Course1] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([IDCourse])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Course1]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Student] FOREIGN KEY([StudentGrade])
REFERENCES [dbo].[Student] ([IDStudent])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Student]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_asp_User] FOREIGN KEY([account])
REFERENCES [dbo].[asp_User] ([account])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_asp_User]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_asp_User] FOREIGN KEY([CLID])
REFERENCES [dbo].[asp_User] ([account])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_asp_User]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_asp_User1] FOREIGN KEY([CMID])
REFERENCES [dbo].[asp_User] ([account])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_asp_User1]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_asp_User2] FOREIGN KEY([PVCID])
REFERENCES [dbo].[asp_User] ([account])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_asp_User2]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_asp_User3] FOREIGN KEY([DLTID])
REFERENCES [dbo].[asp_User] ([account])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_asp_User3]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_asp_User] FOREIGN KEY([account])
REFERENCES [dbo].[asp_User] ([account])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_asp_User]
GO
