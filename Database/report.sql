USE [ann77429_annamshop]
GO
/****** Object:  Table [ann77429_annamshop].[Report]    Script Date: 3/9/2016 12:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_annamshop].[Report](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseTitle] [int] NOT NULL,
	[CourseLeader] [nvarchar](50) NULL,
	[Studentcount] [int] NULL,
	[StatisticalData] [nvarchar](max) NULL,
	[GradeDistributionData] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Created] [nvarchar](50) NULL,
	[Modified] [nvarchar](50) NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [ann77429_annamshop].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Course] FOREIGN KEY([CourseTitle])
REFERENCES [dbo].[Course] ([IDCourse])
GO
ALTER TABLE [ann77429_annamshop].[Report] CHECK CONSTRAINT [FK_Report_Course]
GO
