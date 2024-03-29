USE $(dbName)
GO
/****** Object:  Table [dbo].[Chain]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chain](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BName1] [varchar](20) NULL,
	[BName2] [varchar](20) NULL,
	[BName3] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dom]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dom](
	[BName] [varchar](20) NOT NULL,
	[UName] [varchar](20) NULL,
	[DbConstr] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funkc]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funkc](
	[UName1] [varchar](20) NULL,
	[BName] [varchar](20) NOT NULL,
	[UName2] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[BName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inv]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inv](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BName1] [varchar](20) NULL,
	[BName2] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Key]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Key](
	[UName1] [varchar](20) NULL,
	[BName] [varchar](20) NOT NULL,
	[UName2] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[BName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rng]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rng](
	[BName] [varchar](20) NOT NULL,
	[UName] [varchar](20) NULL,
	[DbConstr] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sigma]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sigma](
	[Name] [varchar](20) NOT NULL,
	[Type] [char](1) NOT NULL,
	[Kind] [char](1) NOT NULL,
	[LabNull] [char](1) NULL,
	[TabMap] [varchar](20) NULL,
	[AttMap] [varchar](20) NULL,
	[DomMap] [varchar](20) NULL,
	[RngMap] [varchar](20) NULL,
	[FuncType] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spec1]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spec1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BName] [varchar](20) NULL,
	[Const] [varchar](20) NOT NULL,
	[UName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spec2]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spec2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BName] [varchar](20) NULL,
	[UName1] [varchar](20) NULL,
	[UName2] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sub]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sub](
	[UName1] [varchar](20) NOT NULL,
	[UName2] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[UName1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubProp]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubProp](
	[BName1] [varchar](20) NOT NULL,
	[BName2] [varchar](20) NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TotalDom]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalDom](
	[BName] [varchar](20) NOT NULL,
	[UName] [varchar](20) NULL,
	[DbConstr] [char](1) NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TotalRng]    Script Date: 20.09.2019 09:02:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalRng](
	[BName] [varchar](20) NOT NULL,
	[UName] [varchar](20) NULL,
	[DbConstr] [char](1) NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chain] ON 

INSERT [dbo].[Chain] ([Id], [BName1], [BName2], [BName3]) VALUES (1, N'inProceedings', N'ofConf', N'presentedAt')
INSERT [dbo].[Chain] ([Id], [BName1], [BName2], [BName3]) VALUES (2, N'confProceedings', N'includesPaper', N'presentedPaper')
INSERT [dbo].[Chain] ([Id], [BName1], [BName2], [BName3]) VALUES (3, N'inProceedings', N'proceedingsYear', N'paperYear')
INSERT [dbo].[Chain] ([Id], [BName1], [BName2], [BName3]) VALUES (7, N'authorOf', N'presentedAt', N'authorConf')
INSERT [dbo].[Chain] ([Id], [BName1], [BName2], [BName3]) VALUES (8, N'presentedPaper', N'writtenBy', N'confAuthor')
SET IDENTITY_INSERT [dbo].[Chain] OFF
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'_Id_Conference', N'Conference', N'T')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'_Id_Paper', N'Paper', N'T')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'_Id_Person', N'Person', N'T')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'_Id_Proceedings', N'Proceedings', N'T')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'acronym', N'Conference', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'affiliation', N'Person', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'authorConf', N'Person', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'authorOf', N'Person', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'city', N'Conference', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'confAcronym', N'Proceedings', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'confAuthor', N'Conference', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'confKey', N'Conference', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'confName', N'Conference', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'confPCMember', N'Conference', N'T')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'confProceedings', N'Conference', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'confYear', N'Conference', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'country', N'Conference', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'editionNo', N'Conference', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'editor', N'Proceedings', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'includesPaper', N'Proceedings', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'inProceedings', N'Paper', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'name', N'Person', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'ofConf', N'Proceedings', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'pages', N'Paper', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'paperKey', N'Paper', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'paperTitle', N'Paper', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'paperYear', N'Paper', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'pcMemberOf', N'Person', N'T')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'personKey', N'Person', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'presentedAt', N'Paper', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'presentedPaper', N'Conference', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'proceedingsKey', N'Proceedings', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'proceedingsTitle', N'Proceedings', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'proceedingsYear', N'Proceedings', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'publisher', N'Proceedings', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'series', N'Proceedings', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'volume', N'Proceedings', N'N')
INSERT [dbo].[Dom] ([BName], [UName], [DbConstr]) VALUES (N'writtenBy', N'Paper', N'N')
INSERT [dbo].[Funkc] ([UName1], [BName], [UName2]) VALUES (N'Conference', N'acronym', N'String')
INSERT [dbo].[Funkc] ([UName1], [BName], [UName2]) VALUES (N'Paper', N'inProceedings', N'Proceedings')
INSERT [dbo].[Funkc] ([UName1], [BName], [UName2]) VALUES (N'Person', N'name', N'String')
INSERT [dbo].[Funkc] ([UName1], [BName], [UName2]) VALUES (N'Proceedings', N'ofConf', N'Conference')
INSERT [dbo].[Funkc] ([UName1], [BName], [UName2]) VALUES (N'Paper', N'paperTitle', N'String')
INSERT [dbo].[Funkc] ([UName1], [BName], [UName2]) VALUES (N'Person', N'personKey', N'String')
INSERT [dbo].[Funkc] ([UName1], [BName], [UName2]) VALUES (N'Proceedings', N'publisher', N'String')
SET IDENTITY_INSERT [dbo].[Inv] ON 

INSERT [dbo].[Inv] ([Id], [BName1], [BName2]) VALUES (1, N'authorOf', N'writtenBy')
INSERT [dbo].[Inv] ([Id], [BName1], [BName2]) VALUES (2, N'inProceedings', N'includesPaper')
INSERT [dbo].[Inv] ([Id], [BName1], [BName2]) VALUES (3, N'ofConf', N'confProceedings')
INSERT [dbo].[Inv] ([Id], [BName1], [BName2]) VALUES (4, N'presentedAt', N'presentedPaper')
INSERT [dbo].[Inv] ([Id], [BName1], [BName2]) VALUES (7, N'confAuthor', N'authorConf')
INSERT [dbo].[Inv] ([Id], [BName1], [BName2]) VALUES (11, N'pcMemberOf', N'confPCMember')
SET IDENTITY_INSERT [dbo].[Inv] OFF
INSERT [dbo].[Key] ([UName1], [BName], [UName2]) VALUES (N'Conference', N'confKey', N'String')
INSERT [dbo].[Key] ([UName1], [BName], [UName2]) VALUES (N'Paper', N'paperKey', N'String')
INSERT [dbo].[Key] ([UName1], [BName], [UName2]) VALUES (N'Person', N'personKey', N'String')
INSERT [dbo].[Key] ([UName1], [BName], [UName2]) VALUES (N'Proceedings', N'proceedingsKey', N'String')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'_Id_Conference', N'Integer', N'T')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'_Id_Paper', N'Integer', N'T')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'_Id_Person', N'Integer', N'T')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'_Id_Proceedings', N'Integer', N'T')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'acronym', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'affiliation', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'authorConf', N'Conference', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'authorOf', N'Paper', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'city', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'confAcronym', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'confAuthor', N'Person', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'confKey', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'confName', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'confPCMember', N'Person', N'T')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'confProceedings', N'Proceedings', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'confYear', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'country', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'editionNo', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'editor', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'includesPaper', N'Paper', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'inProceedings', N'Proceedings', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'name', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'ofConf', N'Conference', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'pages', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'paperKey', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'paperTitle', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'paperYear', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'pcMemberOf', N'Conference', N'T')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'personKey', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'presentedAt', N'Conference', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'presentedPaper', N'Paper', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'proceedingsKey', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'proceedingsTitle', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'proceedingsYear', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'publisher', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'series', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'volume', N'String', N'N')
INSERT [dbo].[Rng] ([BName], [UName], [DbConstr]) VALUES (N'writtenBy', N'Person', N'N')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'_Id_Conference', N'B', N'E', NULL, N'Conference', NULL, N'Id', N'Id', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'_Id_Paper', N'B', N'E', NULL, N'Paper', NULL, N'Id', N'Id', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'_Id_Person', N'B', N'E', NULL, N'Person', NULL, N'Id', N'Id', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'_Id_Proceedings', N'B', N'E', NULL, N'Proceedings', NULL, N'Id', N'Id', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'ACMAuthor', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'ACMConf', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'ACMPaper', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'ACMProceedings', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'acronym', N'B', N'E', N' ', N'Conference', N'Acronym', N'Id', N'Acronym', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'affiliation', N'B', N'E', N' ', N'Affiliation', NULL, N'PersonId', N'Affiliation', N'DM')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'Author', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'authorConf', N'B', N'I', N' ', NULL, NULL, NULL, NULL, N'OM')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'authorOf', N'B', N'E', N' ', N'AuthorPaper', NULL, N'PersonId', N'PaperId', N'OM')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'city', N'B', N'E', N' ', N'Conference', NULL, N'Id', N'City', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'confAcronym', N'B', N'I', N' ', NULL, NULL, NULL, NULL, N'OF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'confAuthor', N'B', N'I', N' ', NULL, NULL, NULL, NULL, N'OM')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'Conference', N'U', N'E', N'T', N'Conference', NULL, N'Id', NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'confKey', N'B', N'E', N' ', N'Conference', NULL, N'Id', N'DblpKey', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'confName', N'B', N'E', N' ', N'Conference', NULL, N'Id', N'ShortName', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'confPCMember', N'B', N'I', NULL, NULL, NULL, NULL, NULL, N'OM')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'confProceedings', N'B', N'I', N' ', NULL, NULL, NULL, NULL, N'OM')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'confYear', N'B', N'E', N' ', N'Conference', NULL, N'Id', N'Year', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'country', N'B', N'E', N' ', N'Conference', NULL, N'Id', N'Country', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'DBAuthor', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'DBPaper', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'DEXAAuthor', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'DEXAConf', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'DEXAPaper', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'DEXAProceedings', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'editionNo', N'B', N'E', N' ', N'Conference', NULL, N'Id', N'EditionNo', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'editor', N'B', N'E', N' ', N'Proceedings', NULL, N'Id', N'Editor', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'includesPaper', N'B', N'I', N' ', NULL, NULL, NULL, NULL, N'OM')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'inProceedings', N'B', N'E', N' ', N'Paper', NULL, N'Id', N'ProcId', N'OF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'Integer', N'U', N'S', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'KESAuthor', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'KESConf', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'KESPaper', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'KESProceedings', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'name', N'B', N'E', N' ', N'Person', NULL, N'Id', N'Name', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'ofConf', N'B', N'E', N' ', N'Proceedings', NULL, N'Id', N'ConfId', N'OF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'ONTOPaper', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'pages', N'B', N'E', N' ', N'Paper', NULL, N'Id', N'Pages', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'Paper', N'U', N'E', N'T', N'Paper', NULL, N'Id', NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'paperKey', N'B', N'E', N' ', N'Paper', NULL, N'Id', N'DblpKey', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'paperTitle', N'B', N'E', N' ', N'Paper', NULL, N'Id', N'Title', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'paperYear', N'B', N'I', N' ', NULL, N'', NULL, NULL, N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'pcMemberOf', N'B', N'E', NULL, N'PCMember', NULL, N'PersonId', N'ConfId', N'OM')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'Person', N'U', N'E', N'T', N'Person', NULL, N'Id', NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'personKey', N'B', N'E', N' ', N'Person', NULL, N'Id', N'DblpKey', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'presentedAt', N'B', N'I', N' ', NULL, NULL, NULL, NULL, N'OF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'presentedPaper', N'B', N'I', N' ', NULL, NULL, NULL, NULL, N'OM')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'Proceedings', N'U', N'E', N'T', N'Proceedings', NULL, N'Id', NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'proceedingsKey', N'B', N'E', N' ', N'Proceedings', NULL, N'Id', N'DblpKey', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'proceedingsTitle', N'B', N'E', N' ', N'Proceedings', NULL, N'Id', N'BookTitleShort', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'proceedingsYear', N'B', N'E', N' ', N'Proceedings', NULL, N'Id', N'Year', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'publisher', N'B', N'E', N' ', N'Proceedings', NULL, N'Id', N'Publisher', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'PUTAuthor', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'QUERYPaper', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'series', N'B', N'E', N' ', N'Proceedings', NULL, N'Id', N'Series', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'SpringerAuthor', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'SpringerPaper', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'SpringerProceedings', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'String', N'U', N'S', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'TPDLAuthor', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'TPDLConf', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'TPDLPaper', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'TPDLProceedings', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'type', N'B', N'E', N' ', NULL, NULL, NULL, NULL, N'OF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'USAConf', N'U', N'I', N' ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'volume', N'B', N'E', N' ', N'Proceedings', NULL, N'Id', N'Volume', N'DF')
INSERT [dbo].[Sigma] ([Name], [Type], [Kind], [LabNull], [TabMap], [AttMap], [DomMap], [RngMap], [FuncType]) VALUES (N'writtenBy', N'B', N'I', N' ', NULL, NULL, NULL, NULL, N'OM')
SET IDENTITY_INSERT [dbo].[Spec1] ON 

INSERT [dbo].[Spec1] ([Id], [BName], [Const], [UName]) VALUES (1, N'acronym', N'%ACM%', N'ACMConf')
INSERT [dbo].[Spec1] ([Id], [BName], [Const], [UName]) VALUES (2, N'acronym', N'%DEXA%', N'DEXAConf')
INSERT [dbo].[Spec1] ([Id], [BName], [Const], [UName]) VALUES (3, N'publisher', N'%Springer%', N'SpringerProceedings')
INSERT [dbo].[Spec1] ([Id], [BName], [Const], [UName]) VALUES (4, N'acronym', N'%KES%', N'KESConf')
INSERT [dbo].[Spec1] ([Id], [BName], [Const], [UName]) VALUES (5, N'acronym', N'%TPDL%', N'TPDLConf')
INSERT [dbo].[Spec1] ([Id], [BName], [Const], [UName]) VALUES (6, N'country', N'USA', N'USAConf')
INSERT [dbo].[Spec1] ([Id], [BName], [Const], [UName]) VALUES (7, N'affiliation', N'PUT, Poland', N'PUTAuthor')
INSERT [dbo].[Spec1] ([Id], [BName], [Const], [UName]) VALUES (9, N'paperTitle', N'%database%', N'DBPaper')
INSERT [dbo].[Spec1] ([Id], [BName], [Const], [UName]) VALUES (10, N'paperTitle', N'%ontolog%', N'ONTOPaper')
INSERT [dbo].[Spec1] ([Id], [BName], [Const], [UName]) VALUES (11, N'paperTitle', N'%query%', N'QUERYPaper')
SET IDENTITY_INSERT [dbo].[Spec1] OFF
SET IDENTITY_INSERT [dbo].[Spec2] ON 

INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (1, N'authorOf', N'Paper', N'Author')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (2, N'presentedAt', N'ACMConf', N'ACMPaper')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (3, N'presentedAt', N'DEXAConf', N'DEXAPaper')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (4, N'authorOf', N'ACMPaper', N'ACMAuthor')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (5, N'authorOf', N'DEXAPaper', N'DEXAAuthor')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (6, N'inProceedings', N'SpringerProceedings', N'SpringerPaper')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (7, N'authorOf', N'SpringerPaper', N'SpringerAuthor')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (8, N'ofConf', N'DEXAConf', N'DEXAProceedings')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (9, N'ofConf', N'ACMConf', N'ACMProceedings')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (10, N'presentedAt', N'KESConf', N'KESPaper')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (11, N'authorOf', N'KESPaper', N'KESAuthor')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (12, N'ofConf', N'KESConf', N'KESProceedings')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (13, N'presentedAt', N'TPDLConf', N'TPDLPaper')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (14, N'authorOf', N'TPDLPaper', N'TPDLAuthor')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (15, N'ofConf', N'TPDLConf', N'TPDLProceedings')
INSERT [dbo].[Spec2] ([Id], [BName], [UName1], [UName2]) VALUES (16, N'authorOf', N'DBPaper', N'DBAuthor')
SET IDENTITY_INSERT [dbo].[Spec2] OFF
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'ACMAuthor', N'Author')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'ACMConf', N'Conference')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'ACMPaper', N'Paper')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'ACMProceedings', N'Proceedings')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'Author', N'Person')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'DBAuthor', N'Author')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'DBPaper', N'Paper')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'DEXAAuthor', N'Author')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'DEXAConf', N'Conference')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'DEXAPaper', N'Paper')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'DEXAProceedings', N'Proceedings')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'KESAuthor', N'Author')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'KESConf', N'Conference')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'KESPaper', N'Paper')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'KESProceedings', N'Proceedings')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'ONTOPaper', N'Paper')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'PUTAuthor', N'Person')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'QUERYPaper', N'Paper')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'SpringerAuthor', N'Author')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'SpringerPaper', N'Paper')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'SpringerProceedings', N'Proceedings')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'TPDLAuthor', N'Author')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'TPDLConf', N'Conference')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'TPDLPaper', N'Paper')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'TPDLProceedings', N'Proceedings')
INSERT [dbo].[Sub] ([UName1], [UName2]) VALUES (N'USAConf', N'Conference')
INSERT [dbo].[TotalDom] ([BName], [UName], [DbConstr], [Id]) VALUES (N'authorOf', N'Author', N'N', 1)
ALTER TABLE [dbo].[Chain]  WITH CHECK ADD  CONSTRAINT [FK_CHAIN_BNAME1] FOREIGN KEY([BName1])
REFERENCES [dbo].[Sigma] ([Name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chain] CHECK CONSTRAINT [FK_CHAIN_BNAME1]
GO
ALTER TABLE [dbo].[Chain]  WITH CHECK ADD  CONSTRAINT [FK_CHAIN_BNAME2] FOREIGN KEY([BName2])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Chain] CHECK CONSTRAINT [FK_CHAIN_BNAME2]
GO
ALTER TABLE [dbo].[Chain]  WITH CHECK ADD  CONSTRAINT [FK_CHAIN_BNAME3] FOREIGN KEY([BName3])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Chain] CHECK CONSTRAINT [FK_CHAIN_BNAME3]
GO
ALTER TABLE [dbo].[Dom]  WITH CHECK ADD FOREIGN KEY([BName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Dom]  WITH CHECK ADD FOREIGN KEY([UName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Funkc]  WITH CHECK ADD FOREIGN KEY([BName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Funkc]  WITH CHECK ADD FOREIGN KEY([UName1])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Funkc]  WITH CHECK ADD FOREIGN KEY([UName2])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Inv]  WITH CHECK ADD FOREIGN KEY([BName1])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Inv]  WITH CHECK ADD FOREIGN KEY([BName2])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Key]  WITH CHECK ADD FOREIGN KEY([BName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Key]  WITH CHECK ADD FOREIGN KEY([UName1])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Key]  WITH CHECK ADD FOREIGN KEY([UName2])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Rng]  WITH CHECK ADD FOREIGN KEY([BName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Rng]  WITH CHECK ADD FOREIGN KEY([UName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Spec1]  WITH CHECK ADD FOREIGN KEY([BName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Spec1]  WITH CHECK ADD FOREIGN KEY([UName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Spec2]  WITH CHECK ADD FOREIGN KEY([BName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Spec2]  WITH CHECK ADD FOREIGN KEY([UName1])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Spec2]  WITH CHECK ADD FOREIGN KEY([UName2])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Sub]  WITH CHECK ADD FOREIGN KEY([UName1])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[Sub]  WITH CHECK ADD FOREIGN KEY([UName2])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[SubProp]  WITH CHECK ADD  CONSTRAINT [FK_SUBPROP_BNAME1] FOREIGN KEY([BName1])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[SubProp] CHECK CONSTRAINT [FK_SUBPROP_BNAME1]
GO
ALTER TABLE [dbo].[SubProp]  WITH CHECK ADD  CONSTRAINT [FK_SUBPROP_BNAME2] FOREIGN KEY([BName2])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[SubProp] CHECK CONSTRAINT [FK_SUBPROP_BNAME2]
GO
ALTER TABLE [dbo].[TotalDom]  WITH CHECK ADD  CONSTRAINT [FK_TOTALDOM_BNAME] FOREIGN KEY([BName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[TotalDom] CHECK CONSTRAINT [FK_TOTALDOM_BNAME]
GO
ALTER TABLE [dbo].[TotalDom]  WITH CHECK ADD  CONSTRAINT [FK_TOTALDOM_UNAME] FOREIGN KEY([UName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[TotalDom] CHECK CONSTRAINT [FK_TOTALDOM_UNAME]
GO
ALTER TABLE [dbo].[TotalRng]  WITH CHECK ADD  CONSTRAINT [FK_TOTALRng_BNAME] FOREIGN KEY([BName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[TotalRng] CHECK CONSTRAINT [FK_TOTALRng_BNAME]
GO
ALTER TABLE [dbo].[TotalRng]  WITH CHECK ADD  CONSTRAINT [FK_TOTALRng_UNAME] FOREIGN KEY([UName])
REFERENCES [dbo].[Sigma] ([Name])
GO
ALTER TABLE [dbo].[TotalRng] CHECK CONSTRAINT [FK_TOTALRng_UNAME]
GO
ALTER TABLE [dbo].[Sigma]  WITH CHECK ADD CHECK  (([Kind]='S' OR [Kind]='I' OR [Kind]='E'))
GO
ALTER TABLE [dbo].[Sigma]  WITH CHECK ADD CHECK  (([Type]='B' OR [Type]='U'))
GO
