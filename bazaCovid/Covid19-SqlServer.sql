
USE [Februar2021]
GO
/****** Object:  Table [dbo].[Opstina]    Script Date: 06-Feb-21 10:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opstina](
	[OpstinaID] [int] IDENTITY(1,1) NOT NULL,
	[PttBroj] [int] NULL,
	[Naziv] [nvarchar](255) NULL,
 CONSTRAINT [Opstina$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[OpstinaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prijava]    Script Date: 06-Feb-21 10:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prijava](
	[PrijavaID] [int] IDENTITY(1,1) NOT NULL,
	[Drzavljanstvo] [nvarchar](255) NOT NULL,
	[JMBG] [nvarchar](255) NOT NULL,
	[Ime] [nvarchar](255) NOT NULL,
	[Prezime] [nvarchar](255) NOT NULL,
	[ElektronskaPosta] [nvarchar](255) NOT NULL,
	[MobilniTelefon] [nvarchar](255) NOT NULL,
	[SpecificnaOboljenja] [bit] NULL,
	[DatumPrijave] [datetime] NOT NULL,
	[OpstinaID] [int] NOT NULL,
 CONSTRAINT [Prijava$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[PrijavaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StavkaPrijave]    Script Date: 06-Feb-21 10:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StavkaPrijave](
	[PrijavaID] [int] NOT NULL,
	[RB] [int] NOT NULL,
	[TipVakcine] [nvarchar](255) NULL,
 CONSTRAINT [StavkaPrijave$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[PrijavaID] ASC,
	[RB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Opstina] ON 

INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (1, 11000, N'Savski venac')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (2, 11000, N'Stari grad')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (3, 11000, N'Vracar')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (4, 11010, N'Vozdovac')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (5, 11030, N'Cukarica')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (6, 11050, N'Zvezdara')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (7, 11060, N'Palilula')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (8, 11070, N'Novi Beograd')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (9, 11080, N'Zemun')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (10, 11090, N'Rakovica')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (11, 11460, N'Barajevo')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (12, 11306, N'Grocka')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (13, 11550, N'Lazarevac')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (14, 11400, N'Mladenovac')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (15, 11500, N'Obrenovac')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (16, 11450, N'Sopot')
INSERT [dbo].[Opstina] ([OpstinaID], [PttBroj], [Naziv]) VALUES (17, 11271, N'Surcin')
SET IDENTITY_INSERT [dbo].[Opstina] OFF
/****** Object:  Index [Prijava$OpstinaID]    Script Date: 06-Feb-21 10:19:57 ******/
CREATE NONCLUSTERED INDEX [Prijava$OpstinaID] ON [dbo].[Prijava]
(
	[OpstinaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Prijava$OpstinaPrijava]    Script Date: 06-Feb-21 10:19:57 ******/
CREATE NONCLUSTERED INDEX [Prijava$OpstinaPrijava] ON [dbo].[Prijava]
(
	[OpstinaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Prijava$PrijavaID]    Script Date: 06-Feb-21 10:19:57 ******/
CREATE NONCLUSTERED INDEX [Prijava$PrijavaID] ON [dbo].[Prijava]
(
	[PrijavaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [StavkaPrijave$PrijavaID]    Script Date: 06-Feb-21 10:19:57 ******/
CREATE NONCLUSTERED INDEX [StavkaPrijave$PrijavaID] ON [dbo].[StavkaPrijave]
(
	[PrijavaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [StavkaPrijave$PrijavaStavkaPrijave]    Script Date: 06-Feb-21 10:19:57 ******/
CREATE NONCLUSTERED INDEX [StavkaPrijave$PrijavaStavkaPrijave] ON [dbo].[StavkaPrijave]
(
	[PrijavaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Opstina] ADD  DEFAULT ((0)) FOR [PttBroj]
GO
ALTER TABLE [dbo].[Prijava] ADD  CONSTRAINT [DF__Prijava__Specifi__2A4B4B5E]  DEFAULT ((0)) FOR [SpecificnaOboljenja]
GO
ALTER TABLE [dbo].[Prijava] ADD  CONSTRAINT [DF__Prijava__Opstina__2B3F6F97]  DEFAULT ((0)) FOR [OpstinaID]
GO
ALTER TABLE [dbo].[StavkaPrijave] ADD  DEFAULT ((0)) FOR [PrijavaID]
GO
ALTER TABLE [dbo].[StavkaPrijave] ADD  DEFAULT ((0)) FOR [RB]
GO
ALTER TABLE [dbo].[Prijava]  WITH CHECK ADD  CONSTRAINT [Prijava$OpstinaPrijava] FOREIGN KEY([OpstinaID])
REFERENCES [dbo].[Opstina] ([OpstinaID])
GO
ALTER TABLE [dbo].[Prijava] CHECK CONSTRAINT [Prijava$OpstinaPrijava]
GO
ALTER TABLE [dbo].[StavkaPrijave]  WITH CHECK ADD  CONSTRAINT [StavkaPrijave$PrijavaStavkaPrijave] FOREIGN KEY([PrijavaID])
REFERENCES [dbo].[Prijava] ([PrijavaID])
GO
ALTER TABLE [dbo].[StavkaPrijave] CHECK CONSTRAINT [StavkaPrijave$PrijavaStavkaPrijave]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Opstina].[OpstinaID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Opstina', @level2type=N'COLUMN',@level2name=N'OpstinaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Opstina].[PttBroj]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Opstina', @level2type=N'COLUMN',@level2name=N'PttBroj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Opstina].[Naziv]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Opstina', @level2type=N'COLUMN',@level2name=N'Naziv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Opstina].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Opstina', @level2type=N'CONSTRAINT',@level2name=N'Opstina$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Opstina]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Opstina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[PrijavaID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'COLUMN',@level2name=N'PrijavaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[Drzavljanstvo]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'COLUMN',@level2name=N'Drzavljanstvo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[JMBG]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'COLUMN',@level2name=N'JMBG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[Ime]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'COLUMN',@level2name=N'Ime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[Prezime]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'COLUMN',@level2name=N'Prezime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[ElektronskaPosta]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'COLUMN',@level2name=N'ElektronskaPosta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[MobilniTelefon]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'COLUMN',@level2name=N'MobilniTelefon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[SpecificnaOboljenja]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'COLUMN',@level2name=N'SpecificnaOboljenja'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[DatumPrijave]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'COLUMN',@level2name=N'DatumPrijave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[OpstinaID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'COLUMN',@level2name=N'OpstinaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'CONSTRAINT',@level2name=N'Prijava$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[OpstinaID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'INDEX',@level2name=N'Prijava$OpstinaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[OpstinaPrijava]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'INDEX',@level2name=N'Prijava$OpstinaPrijava'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[PrijavaID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'INDEX',@level2name=N'Prijava$PrijavaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[Prijava].[OpstinaPrijava]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prijava', @level2type=N'CONSTRAINT',@level2name=N'Prijava$OpstinaPrijava'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[StavkaPrijave].[PrijavaID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StavkaPrijave', @level2type=N'COLUMN',@level2name=N'PrijavaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[StavkaPrijave].[RB]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StavkaPrijave', @level2type=N'COLUMN',@level2name=N'RB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[StavkaPrijave].[TipVakcine]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StavkaPrijave', @level2type=N'COLUMN',@level2name=N'TipVakcine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[StavkaPrijave].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StavkaPrijave', @level2type=N'CONSTRAINT',@level2name=N'StavkaPrijave$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[StavkaPrijave].[PrijavaID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StavkaPrijave', @level2type=N'INDEX',@level2name=N'StavkaPrijave$PrijavaID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[StavkaPrijave].[PrijavaStavkaPrijave]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StavkaPrijave', @level2type=N'INDEX',@level2name=N'StavkaPrijave$PrijavaStavkaPrijave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[StavkaPrijave]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StavkaPrijave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2021.[StavkaPrijave].[PrijavaStavkaPrijave]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StavkaPrijave', @level2type=N'CONSTRAINT',@level2name=N'StavkaPrijave$PrijavaStavkaPrijave'
GO
USE [master]
GO
ALTER DATABASE [ProSoft-Februar2021] SET  READ_WRITE 
GO
