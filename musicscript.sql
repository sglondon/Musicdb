USE [master]
GO
/****** Object:  Database [Musicdb]    Script Date: 3/15/2018 11:57:53 AM ******/
CREATE DATABASE [Musicdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Musicdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Musicdb.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Musicdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Musicdb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Musicdb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Musicdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Musicdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Musicdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Musicdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Musicdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Musicdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [Musicdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Musicdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Musicdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Musicdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Musicdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Musicdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Musicdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Musicdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Musicdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Musicdb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Musicdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Musicdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Musicdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Musicdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Musicdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Musicdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Musicdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Musicdb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Musicdb] SET  MULTI_USER 
GO
ALTER DATABASE [Musicdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Musicdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Musicdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Musicdb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Musicdb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Musicdb]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 3/15/2018 11:57:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[AlbumID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ReleasedDate] [datetime] NOT NULL,
	[Genere] [nvarchar](50) NULL,
	[AlbumPhoto] [nvarchar](200) NOT NULL,
	[ArtistID] [int] NOT NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artist]    Script Date: 3/15/2018 11:57:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[ArtistID] [int] IDENTITY(1,1) NOT NULL,
	[ArtistName] [nvarchar](100) NOT NULL,
	[ArtistPhoto] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([AlbumID], [Title], [ReleasedDate], [Genere], [AlbumPhoto], [ArtistID]) VALUES (2, N'Rock Lobster', CAST(N'1979-01-01 00:00:00.000' AS DateTime), N'New Wave / Post Punk', N'/Content/images/rocklobster.jpg', 1)
INSERT [dbo].[Album] ([AlbumID], [Title], [ReleasedDate], [Genere], [AlbumPhoto], [ArtistID]) VALUES (3, N'Cosmic Thing', CAST(N'1989-06-27 00:00:00.000' AS DateTime), N'Pop Rock', N'/Content/images/cosmicthing.jpg', 1)
INSERT [dbo].[Album] ([AlbumID], [Title], [ReleasedDate], [Genere], [AlbumPhoto], [ArtistID]) VALUES (4, N'Concert in Central Park', CAST(N'1982-02-16 00:00:00.000' AS DateTime), N'Folk music, Folk Rock', N'/Content/images/concertcentralpark.jpg', 3)
INSERT [dbo].[Album] ([AlbumID], [Title], [ReleasedDate], [Genere], [AlbumPhoto], [ArtistID]) VALUES (5, N'Who''s Next', CAST(N'1971-08-14 00:00:00.000' AS DateTime), N'Rock music, Hard rock, Progressive rock', N'/Content/images/whosnext.jpg', 2)
INSERT [dbo].[Album] ([AlbumID], [Title], [ReleasedDate], [Genere], [AlbumPhoto], [ArtistID]) VALUES (6, N'Sounds of Silence', CAST(N'1966-01-17 00:00:00.000' AS DateTime), N'Folk rock', N'/Content/images/soundsofsilence.jpg', 3)
INSERT [dbo].[Album] ([AlbumID], [Title], [ReleasedDate], [Genere], [AlbumPhoto], [ArtistID]) VALUES (7, N'Quadrophenia', CAST(N'1973-10-26 00:00:00.000' AS DateTime), N'Rock music, Progressive rock', N'/Content/images/quadrophenia.jpg', 2)
SET IDENTITY_INSERT [dbo].[Album] OFF
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [ArtistPhoto]) VALUES (1, N'The B-52''s', N'/Content/images/b52s.jpg')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [ArtistPhoto]) VALUES (2, N'The Who', N'/Content/images/thewho.jpg')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [ArtistPhoto]) VALUES (3, N'Simon & Garfunkel', N'/Content/images/simon&garfunkel.jpg')
SET IDENTITY_INSERT [dbo].[Artist] OFF
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ArtistID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Artist]
GO
USE [master]
GO
ALTER DATABASE [Musicdb] SET  READ_WRITE 
GO
