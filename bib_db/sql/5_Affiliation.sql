USE $(dbName)
GO
/****** Object:  Table [dbo].[Affiliation]    Script Date: 20.09.2019 08:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Affiliation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NULL,
	[Affiliation] [varchar](80) NULL,
	[AffilPos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Affiliation] ON 

INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (1, 1, N'PUT, Poland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (2, 2, N'University of California, San Diego, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (3, 3, N'University of Lyon, France', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (4, 4, N'Free University of Bozen-Bolzano, Italy', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (5, 5, N'University of California, San Diego, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (6, 6, N'INRIA, France', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (7, 7, N'INRIA, France', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (8, 8, N'University of Washington, Seattle, Washington, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (9, 9, N'University of Washington, Seattle, Washington, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (10, 10, N'Pontificia Universidad Catolica de Chile, Chile', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (11, 11, N'University of Edinburgh, UK', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (12, 12, N'University at Buffalo, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (13, 13, N'University of Bayreuth, Germany', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (14, 14, N'University of Warsaw, Poland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (15, 15, N'University of Warsaw, Poland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (16, 16, N'University of Warsaw, Poland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (17, 17, N'Université de Mons, Belgium', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (18, 18, N'University of Lille, France', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (19, 19, N'Free University of Bozen-Bolzano, Italy', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (20, 20, N'University of Edinburgh, UK', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (21, 21, N'University of Pennsylvania, Philadelphia, PA, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (22, 22, N'Tel Aviv University, Israel', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (23, 23, N'Tel Aviv University, Israel', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (24, 24, N'University of Lille, France', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (25, 25, N'INRIA, France', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (26, 26, N'Universtity of Athens, Greece', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (27, 27, N'University of Chile, Chile', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (28, 28, N'University of Oxford, UK', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (29, 29, N'Gdynia Maritime University, Poland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (30, 30, N'University of Warwick, UK', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (31, 31, N'IBM United Kingdom Laboratories, Hursley, UK', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (32, 32, N'University of Klagenfurt, Austria', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (33, 33, N'IBM Almaden Research Center', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (34, 34, N'Rice University, Texas, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (35, 35, N'Sapienza University of Rome, Italy', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (36, 36, N'University of Oxford, UK', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (37, 37, N'IBM Almaden Research Center', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (38, 38, N'PUT, Poland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (39, 39, N'Gdynia Maritime University, Poland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (40, 40, N'University of California, Santa Cruz, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (41, 41, N'ETH Zürich, Switzerland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (42, 50, N'Google', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (43, 51, N'Sapienza University of Rome, Italy', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (44, 52, N'University of Oxford, UK', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (45, 53, N'University of Massachusetts, Amherst, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (46, 54, N'PUT, Poland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (47, 55, N'IBM Almaden Research Center', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (48, 56, N'Hasselt University, Belgium', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (49, 57, N'Ilogs GmbH, Klagenfurt, Austria', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (50, 58, N'University of Oxford, UK', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (51, 60, N'University of California, Berkeley, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (52, 64, N'University of Chile, Chile', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (53, 65, N'Columbia University, New York City, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (54, 66, N'Télécom ParisTech, Paris, France', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (55, 67, N'PUT, Poland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (56, 68, N'University of Ulm, Germany', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (57, 69, N'Stanford University, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (58, 70, N'Rice University, Texas, USA', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (59, 71, N'Max Planck Institute for Informatics, Saarbrücken, Germany', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (60, 72, N'PUT, Poland', 1)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (61, 36, N'TU Vienna, Austria', 2)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (62, 50, N'Yahoo! Research', 2)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (63, 60, N'IBM Almaden Research Center', 2)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (64, 50, N'IBM Almaden Research Center', 3)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (65, 50, N'Cornell University, Department of Computer Science', 4)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (66, 68, N'University of Luxembourg', 2)
INSERT [dbo].[Affiliation] ([Id], [PersonId], [Affiliation], [AffilPos]) VALUES (67, 73, N'Univ. of Crete, Greece', 1)
SET IDENTITY_INSERT [dbo].[Affiliation] OFF
ALTER TABLE [dbo].[Affiliation]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
