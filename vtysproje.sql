USE [master]
GO
/****** Object:  Database [mvcblog]    Script Date: 17.12.2019 00:49:06 ******/
CREATE DATABASE [mvcblog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mvcblog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\mvcblog.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'mvcblog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\mvcblog_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mvcblog] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mvcblog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mvcblog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mvcblog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mvcblog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mvcblog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mvcblog] SET ARITHABORT OFF 
GO
ALTER DATABASE [mvcblog] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [mvcblog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mvcblog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mvcblog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mvcblog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mvcblog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mvcblog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mvcblog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mvcblog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mvcblog] SET  ENABLE_BROKER 
GO
ALTER DATABASE [mvcblog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mvcblog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mvcblog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mvcblog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mvcblog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mvcblog] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [mvcblog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mvcblog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mvcblog] SET  MULTI_USER 
GO
ALTER DATABASE [mvcblog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mvcblog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mvcblog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mvcblog] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [mvcblog]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eskiuye]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eskiuye](
	[uyeid] [int] NULL,
	[kullaniciadi] [varchar](50) NULL,
	[uyesifre] [varchar](50) NULL,
	[uyeadsoyad] [varchar](50) NULL,
	[Foto] [varchar](250) NULL,
	[yetkiid] [int] NULL,
	[ulkeid] [int] NULL,
	[sehirid] [int] NULL,
	[ilceid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etiket]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etiket](
	[Etiketid] [int] IDENTITY(1,1) NOT NULL,
	[EtiketAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Etiket] PRIMARY KEY CLUSTERED 
(
	[Etiketid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[guncellenmisMakaleler]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[guncellenmisMakaleler](
	[makaleAdi] [varchar](500) NULL,
	[guncellenmetarihi] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilces]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilces](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ilceadi] [nvarchar](max) NULL,
	[Sehirid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Ilces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[Kategoriid] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Kategori] PRIMARY KEY CLUSTERED 
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Makale]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Makale](
	[Makaleid] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](500) NULL,
	[Icerik] [nvarchar](max) NULL,
	[Foto] [nvarchar](500) NULL,
	[Tarih] [datetime] NULL,
	[Kategoriid] [int] NULL,
	[Uyeid] [int] NULL,
	[Okuma] [int] NULL,
 CONSTRAINT [PK_dbo.Makale] PRIMARY KEY CLUSTERED 
(
	[Makaleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MakaleEtiket]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MakaleEtiket](
	[Etiketid] [int] NOT NULL,
	[Makaleid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.MakaleEtiket] PRIMARY KEY CLUSTERED 
(
	[Etiketid] ASC,
	[Makaleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rozets]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rozets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rozetadi] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Rozets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RozetUyes]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RozetUyes](
	[Rozet_Id] [int] NOT NULL,
	[Uye_Uyeid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RozetUyes] PRIMARY KEY CLUSTERED 
(
	[Rozet_Id] ASC,
	[Uye_Uyeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sehirs]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sehirs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sehiradi] [nvarchar](max) NULL,
	[Ulke_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Sehirs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ulkes]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ulkes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ulkeadi] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Ulkes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uye]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uye](
	[Uyeid] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](20) NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[Foto] [nvarchar](250) NULL,
	[Yetkiid] [int] NULL,
	[UlkeId] [int] NULL,
	[SehirId] [int] NULL,
	[IlceId] [int] NULL,
 CONSTRAINT [PK_dbo.Uye] PRIMARY KEY CLUSTERED 
(
	[Uyeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yetki]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yetki](
	[Yetkiid] [int] IDENTITY(1,1) NOT NULL,
	[Yetki] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Yetki] PRIMARY KEY CLUSTERED 
(
	[Yetkiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorum]    Script Date: 17.12.2019 00:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorum](
	[Yorumid] [int] IDENTITY(1,1) NOT NULL,
	[Icerik] [nvarchar](500) NULL,
	[Uyeid] [int] NULL,
	[Makaleid] [int] NULL,
	[Tarih] [datetime] NULL,
 CONSTRAINT [PK_dbo.Yorum] PRIMARY KEY CLUSTERED 
(
	[Yorumid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sehirid]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Sehirid] ON [dbo].[Ilces]
(
	[Sehirid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kategoriid]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Kategoriid] ON [dbo].[Makale]
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Uyeid]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Uyeid] ON [dbo].[Makale]
(
	[Uyeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Etiketid]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Etiketid] ON [dbo].[MakaleEtiket]
(
	[Etiketid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Makaleid]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Makaleid] ON [dbo].[MakaleEtiket]
(
	[Makaleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rozet_Id]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Rozet_Id] ON [dbo].[RozetUyes]
(
	[Rozet_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Uye_Uyeid]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Uye_Uyeid] ON [dbo].[RozetUyes]
(
	[Uye_Uyeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ulke_Id]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Ulke_Id] ON [dbo].[Sehirs]
(
	[Ulke_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IlceId]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_IlceId] ON [dbo].[Uye]
(
	[IlceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SehirId]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_SehirId] ON [dbo].[Uye]
(
	[SehirId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UlkeId]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_UlkeId] ON [dbo].[Uye]
(
	[UlkeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Yetkiid]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Yetkiid] ON [dbo].[Uye]
(
	[Yetkiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Makaleid]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Makaleid] ON [dbo].[Yorum]
(
	[Makaleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Uyeid]    Script Date: 17.12.2019 00:49:06 ******/
CREATE NONCLUSTERED INDEX [IX_Uyeid] ON [dbo].[Yorum]
(
	[Uyeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ilces]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ilces_dbo.Sehirs_Sehirid] FOREIGN KEY([Sehirid])
REFERENCES [dbo].[Sehirs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ilces] CHECK CONSTRAINT [FK_dbo.Ilces_dbo.Sehirs_Sehirid]
GO
ALTER TABLE [dbo].[Makale]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Makale_dbo.Kategori_Kategoriid] FOREIGN KEY([Kategoriid])
REFERENCES [dbo].[Kategori] ([Kategoriid])
GO
ALTER TABLE [dbo].[Makale] CHECK CONSTRAINT [FK_dbo.Makale_dbo.Kategori_Kategoriid]
GO
ALTER TABLE [dbo].[Makale]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Makale_dbo.Uye_Uyeid] FOREIGN KEY([Uyeid])
REFERENCES [dbo].[Uye] ([Uyeid])
GO
ALTER TABLE [dbo].[Makale] CHECK CONSTRAINT [FK_dbo.Makale_dbo.Uye_Uyeid]
GO
ALTER TABLE [dbo].[MakaleEtiket]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MakaleEtiket_dbo.Etiket_Etiketid] FOREIGN KEY([Etiketid])
REFERENCES [dbo].[Etiket] ([Etiketid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MakaleEtiket] CHECK CONSTRAINT [FK_dbo.MakaleEtiket_dbo.Etiket_Etiketid]
GO
ALTER TABLE [dbo].[MakaleEtiket]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MakaleEtiket_dbo.Makale_Makaleid] FOREIGN KEY([Makaleid])
REFERENCES [dbo].[Makale] ([Makaleid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MakaleEtiket] CHECK CONSTRAINT [FK_dbo.MakaleEtiket_dbo.Makale_Makaleid]
GO
ALTER TABLE [dbo].[RozetUyes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RozetUyes_dbo.Rozets_Rozet_Id] FOREIGN KEY([Rozet_Id])
REFERENCES [dbo].[Rozets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RozetUyes] CHECK CONSTRAINT [FK_dbo.RozetUyes_dbo.Rozets_Rozet_Id]
GO
ALTER TABLE [dbo].[RozetUyes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RozetUyes_dbo.Uye_Uye_Uyeid] FOREIGN KEY([Uye_Uyeid])
REFERENCES [dbo].[Uye] ([Uyeid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RozetUyes] CHECK CONSTRAINT [FK_dbo.RozetUyes_dbo.Uye_Uye_Uyeid]
GO
ALTER TABLE [dbo].[Sehirs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sehirs_dbo.Ulkes_Ulke_Id] FOREIGN KEY([Ulke_Id])
REFERENCES [dbo].[Ulkes] ([Id])
GO
ALTER TABLE [dbo].[Sehirs] CHECK CONSTRAINT [FK_dbo.Sehirs_dbo.Ulkes_Ulke_Id]
GO
ALTER TABLE [dbo].[Uye]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Uye_dbo.Ilces_IlceId] FOREIGN KEY([IlceId])
REFERENCES [dbo].[Ilces] ([Id])
GO
ALTER TABLE [dbo].[Uye] CHECK CONSTRAINT [FK_dbo.Uye_dbo.Ilces_IlceId]
GO
ALTER TABLE [dbo].[Uye]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Uye_dbo.Sehirs_SehirId] FOREIGN KEY([SehirId])
REFERENCES [dbo].[Sehirs] ([Id])
GO
ALTER TABLE [dbo].[Uye] CHECK CONSTRAINT [FK_dbo.Uye_dbo.Sehirs_SehirId]
GO
ALTER TABLE [dbo].[Uye]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Uye_dbo.Ulkes_UlkeId] FOREIGN KEY([UlkeId])
REFERENCES [dbo].[Ulkes] ([Id])
GO
ALTER TABLE [dbo].[Uye] CHECK CONSTRAINT [FK_dbo.Uye_dbo.Ulkes_UlkeId]
GO
ALTER TABLE [dbo].[Uye]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Uye_dbo.Yetki_Yetkiid] FOREIGN KEY([Yetkiid])
REFERENCES [dbo].[Yetki] ([Yetkiid])
GO
ALTER TABLE [dbo].[Uye] CHECK CONSTRAINT [FK_dbo.Uye_dbo.Yetki_Yetkiid]
GO
ALTER TABLE [dbo].[Yorum]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Yorum_dbo.Makale_Makaleid] FOREIGN KEY([Makaleid])
REFERENCES [dbo].[Makale] ([Makaleid])
GO
ALTER TABLE [dbo].[Yorum] CHECK CONSTRAINT [FK_dbo.Yorum_dbo.Makale_Makaleid]
GO
ALTER TABLE [dbo].[Yorum]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Yorum_dbo.Uye_Uyeid] FOREIGN KEY([Uyeid])
REFERENCES [dbo].[Uye] ([Uyeid])
GO
ALTER TABLE [dbo].[Yorum] CHECK CONSTRAINT [FK_dbo.Yorum_dbo.Uye_Uyeid]
GO
