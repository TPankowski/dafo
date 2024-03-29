USE [DAFO_ONTO]
GO
/****** Object:  Table [dbo].[mv_MaxSuperClasses]    Script Date: 20.09.2019 09:07:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mv_MaxSuperClasses](
	[Id] [int] NOT NULL,
	[UName] [varchar](20) NULL,
	[UNameMax] [varchar](20) NULL,
	[Level] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mv_SubTypeAll]    Script Date: 20.09.2019 09:07:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mv_SubTypeAll](
	[Id] [int] NOT NULL,
	[UName] [varchar](20) NULL,
	[Level] [int] NULL,
	[Kind] [char](1) NULL,
	[Parent] [varchar](20) NULL,
	[MaxType] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (1, N'Conference', N'Conference', 0)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (2, N'ACMConf', N'Conference', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (3, N'DEXAConf', N'Conference', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (4, N'KESConf', N'Conference', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (5, N'TPDLConf', N'Conference', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (6, N'USAConf', N'Conference', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (7, N'Paper', N'Paper', 0)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (8, N'ACMPaper', N'Paper', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (9, N'DBPaper', N'Paper', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (10, N'DEXAPaper', N'Paper', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (11, N'KESPaper', N'Paper', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (12, N'ONTOPaper', N'Paper', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (13, N'QUERYPaper', N'Paper', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (14, N'SpringerPaper', N'Paper', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (15, N'TPDLPaper', N'Paper', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (16, N'Person', N'Person', 0)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (17, N'Author', N'Person', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (18, N'PUTAuthor', N'Person', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (19, N'ACMAuthor', N'Person', 2)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (20, N'DBAuthor', N'Person', 2)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (21, N'DEXAAuthor', N'Person', 2)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (22, N'KESAuthor', N'Person', 2)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (23, N'SpringerAuthor', N'Person', 2)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (24, N'TPDLAuthor', N'Person', 2)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (25, N'Proceedings', N'Proceedings', 0)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (26, N'ACMProceedings', N'Proceedings', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (27, N'DEXAProceedings', N'Proceedings', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (28, N'KESProceedings', N'Proceedings', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (29, N'SpringerProceedings', N'Proceedings', 1)
INSERT [dbo].[mv_MaxSuperClasses] ([Id], [UName], [UNameMax], [Level]) VALUES (30, N'TPDLProceedings', N'Proceedings', 1)
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (1, N'Conference', 0, N'E', N'Conference', N'Conference')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (2, N'ACMConf', 1, N'I', N'Conference', N'Conference')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (3, N'DEXAConf', 1, N'I', N'Conference', N'Conference')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (4, N'KESConf', 1, N'I', N'Conference', N'Conference')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (5, N'TPDLConf', 1, N'I', N'Conference', N'Conference')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (6, N'USAConf', 1, N'I', N'Conference', N'Conference')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (7, N'Paper', 0, N'E', N'Paper', N'Paper')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (8, N'ACMPaper', 1, N'I', N'Paper', N'Paper')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (9, N'DBPaper', 1, N'I', N'Paper', N'Paper')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (10, N'DEXAPaper', 1, N'I', N'Paper', N'Paper')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (11, N'KESPaper', 1, N'I', N'Paper', N'Paper')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (12, N'ONTOPaper', 1, N'I', N'Paper', N'Paper')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (13, N'QUERYPaper', 1, N'I', N'Paper', N'Paper')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (14, N'SpringerPaper', 1, N'I', N'Paper', N'Paper')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (15, N'TPDLPaper', 1, N'I', N'Paper', N'Paper')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (16, N'Person', 0, N'E', N'Person', N'Person')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (17, N'Author', 1, N'I', N'Person', N'Person')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (18, N'PUTAuthor', 1, N'I', N'Person', N'Person')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (19, N'ACMAuthor', 2, N'I', N'Author', N'Person')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (20, N'DBAuthor', 2, N'I', N'Author', N'Person')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (21, N'DEXAAuthor', 2, N'I', N'Author', N'Person')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (22, N'KESAuthor', 2, N'I', N'Author', N'Person')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (23, N'SpringerAuthor', 2, N'I', N'Author', N'Person')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (24, N'TPDLAuthor', 2, N'I', N'Author', N'Person')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (25, N'Proceedings', 0, N'E', N'Proceedings', N'Proceedings')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (26, N'ACMProceedings', 1, N'I', N'Proceedings', N'Proceedings')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (27, N'DEXAProceedings', 1, N'I', N'Proceedings', N'Proceedings')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (28, N'KESProceedings', 1, N'I', N'Proceedings', N'Proceedings')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (29, N'SpringerProceedings', 1, N'I', N'Proceedings', N'Proceedings')
INSERT [dbo].[mv_SubTypeAll] ([Id], [UName], [Level], [Kind], [Parent], [MaxType]) VALUES (30, N'TPDLProceedings', 1, N'I', N'Proceedings', N'Proceedings')
