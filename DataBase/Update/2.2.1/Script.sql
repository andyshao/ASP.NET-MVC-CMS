ALTER TABLE dbo.SectionContentTitle ADD TitleLevel NVARCHAR(10)
GO
DELETE FROM dbo.Language WHERE LanKey = N'SectionContentTitle@TitleLevel'
INSERT INTO dbo.Language( LanKey ,LanID ,LanValue ,Module ,LanType)VALUES  ( N'SectionContentTitle@TitleLevel' ,2052 , N'�ȼ�' , N'SectionContentTitle' ,N'EntityProperty')
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageView](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PageUrl] [nvarchar](500) NULL,
	[PageTitle] [nvarchar](200) NULL,
	[IPAddress] [nvarchar](50) NULL,
	[SessionID] [nvarchar](50) NULL,
	[UserAgent] [nvarchar](500) NULL,
	[Referer] [nvarchar](1000) NULL,
	[RefererName] [nvarchar](255) NULL,
	[KeyWords] [nvarchar](255) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreatebyName] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdateBy] [nvarchar](50) NULL,
	[LastUpdateByName] [nvarchar](100) NULL,
	[LastUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_PageView] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DataArchived](
	[ID] [nvarchar](50) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreatebyName] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdateBy] [nvarchar](50) NULL,
	[LastUpdateByName] [nvarchar](100) NULL,
	[LastUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_DataArchived] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationSetting](
	[SettingKey] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreatebyName] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdateBy] [nvarchar](50) NULL,
	[LastUpdateByName] [nvarchar](100) NULL,
	[LastUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_ApplicationSetting] PRIMARY KEY CLUSTERED 
(
	[SettingKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
DELETE FROM dbo.Language WHERE LanKey=N'ApplicationSetting@SettingKey'
INSERT INTO dbo.Language( LanKey ,LanID ,LanValue ,Module ,LanType) VALUES  ( N'ApplicationSetting@SettingKey' , 2052 , N'��' , N'ApplicationSetting' ,N'EntityProperty' )
GO