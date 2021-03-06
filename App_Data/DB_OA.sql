USE [db_OA]
GO
/****** Object:  Table [dbo].[rule]    Script Date: 08/20/2016 19:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [text] NULL,
 CONSTRAINT [PK_rule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[signstate]    Script Date: 08/20/2016 19:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[signstate](
	[signstateid] [int] NOT NULL,
	[describestate] [varchar](20) NOT NULL,
	[time] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vote]    Script Date: 08/20/2016 19:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vote](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[voteTitle] [varchar](20) NULL,
	[voteContent] [text] NULL,
	[voteQty] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dept]    Script Date: 08/20/2016 19:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dept](
	[deptID] [int] IDENTITY(1,1) NOT NULL,
	[deptName] [varchar](50) NOT NULL,
	[memo] [text] NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[deptID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[note]    Script Date: 08/20/2016 19:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[note](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[content] [text] NULL,
	[noteTime] [datetime] NULL,
	[notePerson] [varchar](20) NULL,
 CONSTRAINT [PK_message] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]    Script Date: 08/20/2016 19:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[sex] [varchar](6) NOT NULL,
	[birthday] [smalldatetime] NOT NULL,
	[learn] [varchar](20) NOT NULL,
	[post] [varchar](10) NOT NULL,
	[dept] [varchar](50) NOT NULL,
	[job] [varchar](50) NOT NULL,
	[tel] [varchar](20) NOT NULL,
	[address] [varchar](100) NOT NULL,
	[email] [varchar](50) NULL,
	[state] [varchar](20) NOT NULL,
	[photoPath] [text] NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sysUser]    Script Date: 08/20/2016 19:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sysUser](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](20) NOT NULL,
	[userPwd] [varchar](20) NOT NULL,
	[loginTime] [datetime] NULL,
	[system] [bit] NULL,
	[sign] [bit] NULL,
 CONSTRAINT [PK_sysUser] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sign]    Script Date: 08/20/2016 19:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sign](
	[signid] [int] IDENTITY(1,1) NOT NULL,
	[datetime] [datetime] NOT NULL,
	[employeeName] [varchar](20) NOT NULL,
	[late] [bit] NOT NULL,
	[quit] [bit] NOT NULL,
 CONSTRAINT [PK_sign] PRIMARY KEY CLUSTERED 
(
	[signid] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[notice]    Script Date: 08/20/2016 19:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[notice](
	[noticeID] [int] IDENTITY(1,1) NOT NULL,
	[noticeTitle] [varchar](40) NOT NULL,
	[noticeTime] [datetime] NOT NULL,
	[noticePerson] [varchar](20) NOT NULL,
	[noticeContent] [text] NOT NULL,
 CONSTRAINT [PK_notice] PRIMARY KEY CLUSTERED 
(
	[noticeID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[file]    Script Date: 08/20/2016 19:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[file](
	[fileID] [int] IDENTITY(1,1) NOT NULL,
	[fileSender] [varchar](20) NOT NULL,
	[fileAccepter] [varchar](20) NOT NULL,
	[fileTitle] [varchar](50) NOT NULL,
	[fileTime] [datetime] NOT NULL,
	[fileContent] [text] NOT NULL,
	[path] [varchar](100) NOT NULL,
	[examine] [varchar](10) NOT NULL,
	[fileName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_bumf] PRIMARY KEY CLUSTERED 
(
	[fileID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'file', @level2type=N'COLUMN',@level2name=N'fileID'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'file', @level2type=N'COLUMN',@level2name=N'fileSender'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'file', @level2type=N'COLUMN',@level2name=N'fileAccepter'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'公文标题' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'file', @level2type=N'COLUMN',@level2name=N'fileTitle'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'公文时间' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'file', @level2type=N'COLUMN',@level2name=N'fileTime'
GO
/****** Object:  Default [DF_file_examine]    Script Date: 08/20/2016 19:11:58 ******/
ALTER TABLE [dbo].[file] ADD  CONSTRAINT [DF_file_examine]  DEFAULT (0) FOR [examine]
GO
/****** Object:  Default [DF_file_sign]    Script Date: 08/20/2016 19:11:58 ******/
ALTER TABLE [dbo].[file] ADD  CONSTRAINT [DF_file_sign]  DEFAULT (0) FOR [fileName]
GO
/****** Object:  Default [DF_sysUser_system]    Script Date: 08/20/2016 19:11:58 ******/
ALTER TABLE [dbo].[sysUser] ADD  CONSTRAINT [DF_sysUser_system]  DEFAULT (0) FOR [system]
GO
/****** Object:  Default [DF_sysUser_sign]    Script Date: 08/20/2016 19:11:58 ******/
ALTER TABLE [dbo].[sysUser] ADD  CONSTRAINT [DF_sysUser_sign]  DEFAULT (0) FOR [sign]
GO
/****** Object:  Default [DF_vote_voteQty]    Script Date: 08/20/2016 19:11:58 ******/
ALTER TABLE [dbo].[vote] ADD  CONSTRAINT [DF_vote_voteQty]  DEFAULT (0) FOR [voteQty]
GO
/****** Object:  ForeignKey [FK_employee_dept]    Script Date: 08/20/2016 19:11:58 ******/
ALTER TABLE [dbo].[employee]  WITH NOCHECK ADD  CONSTRAINT [FK_employee_dept] FOREIGN KEY([dept])
REFERENCES [dbo].[dept] ([deptName])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_dept]
GO
/****** Object:  ForeignKey [FK_file_employee]    Script Date: 08/20/2016 19:11:58 ******/
ALTER TABLE [dbo].[file]  WITH NOCHECK ADD  CONSTRAINT [FK_file_employee] FOREIGN KEY([fileSender])
REFERENCES [dbo].[employee] ([name])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[file] CHECK CONSTRAINT [FK_file_employee]
GO
/****** Object:  ForeignKey [FK_notice_employee]    Script Date: 08/20/2016 19:11:58 ******/
ALTER TABLE [dbo].[notice]  WITH NOCHECK ADD  CONSTRAINT [FK_notice_employee] FOREIGN KEY([noticePerson])
REFERENCES [dbo].[employee] ([name])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[notice] CHECK CONSTRAINT [FK_notice_employee]
GO
/****** Object:  ForeignKey [FK_sign_employee]    Script Date: 08/20/2016 19:11:58 ******/
ALTER TABLE [dbo].[sign]  WITH NOCHECK ADD  CONSTRAINT [FK_sign_employee] FOREIGN KEY([employeeName])
REFERENCES [dbo].[employee] ([name])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[sign] CHECK CONSTRAINT [FK_sign_employee]
GO
/****** Object:  ForeignKey [FK_sysUser_employee]    Script Date: 08/20/2016 19:11:58 ******/
ALTER TABLE [dbo].[sysUser]  WITH NOCHECK ADD  CONSTRAINT [FK_sysUser_employee] FOREIGN KEY([userName])
REFERENCES [dbo].[employee] ([name])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[sysUser] CHECK CONSTRAINT [FK_sysUser_employee]
GO
