USE $(dbName)
GO
/****** Object:  Table [dbo].[PCMember]    Script Date: 20.09.2019 08:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCMember](
	[PersonId] [int] NOT NULL,
	[ConfId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC,
	[ConfId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PCMember] ([PersonId], [ConfId]) VALUES (1, 1)
INSERT [dbo].[PCMember] ([PersonId], [ConfId]) VALUES (1, 372)
INSERT [dbo].[PCMember] ([PersonId], [ConfId]) VALUES (72, 1171)
INSERT [dbo].[PCMember] ([PersonId], [ConfId]) VALUES (72, 1407)
ALTER TABLE [dbo].[PCMember]  WITH CHECK ADD FOREIGN KEY([ConfId])
REFERENCES [dbo].[Conference] ([Id])
GO
ALTER TABLE [dbo].[PCMember]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
