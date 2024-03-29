USE $(dbName)
GO
/****** Object:  Table [dbo].[TransLog]    Script Date: 20.09.2019 09:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Token] [char](36) NOT NULL,
	[Kind] [varchar](20) NULL,
	[JsonStr] [varchar](max) NULL,
	[CreateTime] [datetime] NULL,
	[LastAccess] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

