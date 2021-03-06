USE [master]
GO
/****** Object:  Database [ProSoft-Februar2022-G2]    Script Date: 09-Feb-22 10:02:55 ******/
CREATE DATABASE [ProSoft-Februar2022-G2]
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET  MULTI_USER 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET QUERY_STORE = OFF
GO
USE [ProSoft-Februar2022-G2]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ProSoft-Februar2022-G2]
GO
/****** Object:  Table [dbo].[DnevnaPotrosnjaIzvestaj]    Script Date: 09-Feb-22 10:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DnevnaPotrosnjaIzvestaj](
	[DnevnaPotrosnjaIzvestajID] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [datetime] NOT NULL,
	[Opis] [nvarchar](255) NOT NULL,
	[KlijentID] [int] NOT NULL,
 CONSTRAINT [DnevnaPotrosnjaIzvestaj$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[DnevnaPotrosnjaIzvestajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DnevnaPotrosnjaStavkaIzvestaja]    Script Date: 09-Feb-22 10:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DnevnaPotrosnjaStavkaIzvestaja](
	[DnevnaPotrosnjaIzvestajID] [int] NOT NULL,
	[RB] [int] NOT NULL,
	[VrstaKapaciteta] [nvarchar](255) NOT NULL,
	[Kolicina] [float] NOT NULL,
	[JedinicaMere] [nvarchar](255) NOT NULL,
	[Napomena] [nvarchar](255) NOT NULL,
 CONSTRAINT [DnevnaPotrosnjaStavkaIzvestaja$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[DnevnaPotrosnjaIzvestajID] ASC,
	[RB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klijent]    Script Date: 09-Feb-22 10:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klijent](
	[KlijentID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](255) NULL,
	[Adresa] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Lozinka] [nvarchar](255) NULL,
 CONSTRAINT [Klijent$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[KlijentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Klijent] ON 

INSERT [dbo].[Klijent] ([KlijentID], [Naziv], [Adresa], [Email], [Lozinka]) VALUES (1, N'Elektroprivreda Srbije', N'Balkanska 13', N'eps@eps.rs', N'eps1')
INSERT [dbo].[Klijent] ([KlijentID], [Naziv], [Adresa], [Email], [Lozinka]) VALUES (2, N'Klijent 1', N'Adresa 1', N'k1@k1.rs', N'k1')
INSERT [dbo].[Klijent] ([KlijentID], [Naziv], [Adresa], [Email], [Lozinka]) VALUES (3, N'Klijent 2', N'Adresa 2', N'k2@k2.rs', N'k2')
INSERT [dbo].[Klijent] ([KlijentID], [Naziv], [Adresa], [Email], [Lozinka]) VALUES (4, N'Klijent 3', N'Adresa 3', N'k3@k3.rs', N'k3')
INSERT [dbo].[Klijent] ([KlijentID], [Naziv], [Adresa], [Email], [Lozinka]) VALUES (5, N'Klijent 4', N'Adresa 4', N'k4@k4.rs', N'k4')
INSERT [dbo].[Klijent] ([KlijentID], [Naziv], [Adresa], [Email], [Lozinka]) VALUES (6, N'Klijent 5', N'Adresa 5', N'k5@k5.rs', N'k5')
SET IDENTITY_INSERT [dbo].[Klijent] OFF
GO
/****** Object:  Index [DnevnaPotrosnjaIzvestaj$DnevnaProizvodnjaIzvestajID]    Script Date: 09-Feb-22 10:02:55 ******/
CREATE NONCLUSTERED INDEX [DnevnaPotrosnjaIzvestaj$DnevnaProizvodnjaIzvestajID] ON [dbo].[DnevnaPotrosnjaIzvestaj]
(
	[DnevnaPotrosnjaIzvestajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [DnevnaPotrosnjaIzvestaj$ProizvodjacID]    Script Date: 09-Feb-22 10:02:55 ******/
CREATE NONCLUSTERED INDEX [DnevnaPotrosnjaIzvestaj$ProizvodjacID] ON [dbo].[DnevnaPotrosnjaIzvestaj]
(
	[KlijentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [DnevnaPotrosnjaStavkaIzvestaja$DnevnaProizvodnjaIzvestajID]    Script Date: 09-Feb-22 10:02:55 ******/
CREATE NONCLUSTERED INDEX [DnevnaPotrosnjaStavkaIzvestaja$DnevnaProizvodnjaIzvestajID] ON [dbo].[DnevnaPotrosnjaStavkaIzvestaja]
(
	[DnevnaPotrosnjaIzvestajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Klijent$ProizvodjacID]    Script Date: 09-Feb-22 10:02:55 ******/
CREATE NONCLUSTERED INDEX [Klijent$ProizvodjacID] ON [dbo].[Klijent]
(
	[KlijentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DnevnaPotrosnjaIzvestaj] ADD  CONSTRAINT [DF__DnevnaPot__Klije__398D8EEE]  DEFAULT ((0)) FOR [KlijentID]
GO
ALTER TABLE [dbo].[DnevnaPotrosnjaStavkaIzvestaja] ADD  DEFAULT ((0)) FOR [DnevnaPotrosnjaIzvestajID]
GO
ALTER TABLE [dbo].[DnevnaPotrosnjaStavkaIzvestaja] ADD  DEFAULT ((0)) FOR [RB]
GO
ALTER TABLE [dbo].[DnevnaPotrosnjaStavkaIzvestaja] ADD  DEFAULT ((0)) FOR [Kolicina]
GO
ALTER TABLE [dbo].[DnevnaPotrosnjaIzvestaj]  WITH CHECK ADD  CONSTRAINT [DnevnaPotrosnjaIzvestaj$ProizvodjacDnevnaProizvodnjaIzvestaj] FOREIGN KEY([KlijentID])
REFERENCES [dbo].[Klijent] ([KlijentID])
GO
ALTER TABLE [dbo].[DnevnaPotrosnjaIzvestaj] CHECK CONSTRAINT [DnevnaPotrosnjaIzvestaj$ProizvodjacDnevnaProizvodnjaIzvestaj]
GO
ALTER TABLE [dbo].[DnevnaPotrosnjaStavkaIzvestaja]  WITH CHECK ADD  CONSTRAINT [DnevnaPotrosnjaStavkaIzvestaja$DnevnaProizvodnjaIzvestajDnevnaProizvodnjaStavkaIzvestaja] FOREIGN KEY([DnevnaPotrosnjaIzvestajID])
REFERENCES [dbo].[DnevnaPotrosnjaIzvestaj] ([DnevnaPotrosnjaIzvestajID])
GO
ALTER TABLE [dbo].[DnevnaPotrosnjaStavkaIzvestaja] CHECK CONSTRAINT [DnevnaPotrosnjaStavkaIzvestaja$DnevnaProizvodnjaIzvestajDnevnaProizvodnjaStavkaIzvestaja]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaIzvestaj].[DnevnaPotrosnjaIzvestajID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaIzvestaj', @level2type=N'COLUMN',@level2name=N'DnevnaPotrosnjaIzvestajID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaIzvestaj].[Datum]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaIzvestaj', @level2type=N'COLUMN',@level2name=N'Datum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaIzvestaj].[Opis]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaIzvestaj', @level2type=N'COLUMN',@level2name=N'Opis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaIzvestaj].[KlijentID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaIzvestaj', @level2type=N'COLUMN',@level2name=N'KlijentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaIzvestaj].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaIzvestaj', @level2type=N'CONSTRAINT',@level2name=N'DnevnaPotrosnjaIzvestaj$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaIzvestaj].[DnevnaProizvodnjaIzvestajID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaIzvestaj', @level2type=N'INDEX',@level2name=N'DnevnaPotrosnjaIzvestaj$DnevnaProizvodnjaIzvestajID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaIzvestaj].[ProizvodjacID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaIzvestaj', @level2type=N'INDEX',@level2name=N'DnevnaPotrosnjaIzvestaj$ProizvodjacID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaIzvestaj]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaIzvestaj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaIzvestaj].[ProizvodjacDnevnaProizvodnjaIzvestaj]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaIzvestaj', @level2type=N'CONSTRAINT',@level2name=N'DnevnaPotrosnjaIzvestaj$ProizvodjacDnevnaProizvodnjaIzvestaj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaStavkaIzvestaja].[DnevnaPotrosnjaIzvestajID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaStavkaIzvestaja', @level2type=N'COLUMN',@level2name=N'DnevnaPotrosnjaIzvestajID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaStavkaIzvestaja].[RB]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaStavkaIzvestaja', @level2type=N'COLUMN',@level2name=N'RB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaStavkaIzvestaja].[VrstaKapaciteta]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaStavkaIzvestaja', @level2type=N'COLUMN',@level2name=N'VrstaKapaciteta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaStavkaIzvestaja].[Kolicina]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaStavkaIzvestaja', @level2type=N'COLUMN',@level2name=N'Kolicina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaStavkaIzvestaja].[JedinicaMere]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaStavkaIzvestaja', @level2type=N'COLUMN',@level2name=N'JedinicaMere'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaStavkaIzvestaja].[Napomena]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaStavkaIzvestaja', @level2type=N'COLUMN',@level2name=N'Napomena'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaStavkaIzvestaja].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaStavkaIzvestaja', @level2type=N'CONSTRAINT',@level2name=N'DnevnaPotrosnjaStavkaIzvestaja$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaStavkaIzvestaja].[DnevnaProizvodnjaIzvestajID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaStavkaIzvestaja', @level2type=N'INDEX',@level2name=N'DnevnaPotrosnjaStavkaIzvestaja$DnevnaProizvodnjaIzvestajID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaStavkaIzvestaja]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaStavkaIzvestaja'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[DnevnaPotrosnjaStavkaIzvestaja].[DnevnaProizvodnjaIzvestajDnevnaProizvodnjaStavkaIzvestaja]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DnevnaPotrosnjaStavkaIzvestaja', @level2type=N'CONSTRAINT',@level2name=N'DnevnaPotrosnjaStavkaIzvestaja$DnevnaProizvodnjaIzvestajDnevnaProizvodnjaStavkaIzvestaja'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[Klijent].[KlijentID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Klijent', @level2type=N'COLUMN',@level2name=N'KlijentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[Klijent].[Naziv]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Klijent', @level2type=N'COLUMN',@level2name=N'Naziv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[Klijent].[Adresa]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Klijent', @level2type=N'COLUMN',@level2name=N'Adresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[Klijent].[Email]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Klijent', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[Klijent].[Lozinka]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Klijent', @level2type=N'COLUMN',@level2name=N'Lozinka'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[Klijent].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Klijent', @level2type=N'CONSTRAINT',@level2name=N'Klijent$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[Klijent].[ProizvodjacID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Klijent', @level2type=N'INDEX',@level2name=N'Klijent$ProizvodjacID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'ProSoft-Februar2022-G2.[Klijent]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Klijent'
GO
USE [master]
GO
ALTER DATABASE [ProSoft-Februar2022-G2] SET  READ_WRITE 
GO
