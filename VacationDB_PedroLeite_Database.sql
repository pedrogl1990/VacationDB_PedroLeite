USE [master]
GO
/****** Object:  Database [VacationDB_PedroLeite]    Script Date: 10/12/2022 19:01:31 ******/
CREATE DATABASE [VacationDB_PedroLeite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VacationDB_PedroLeite', FILENAME = N'C:\VacationDB_PedroLeite\DB\VacationDB_PedroLeite.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VacationDB_PedroLeite_log', FILENAME = N'C:\VacationDB_PedroLeite\DB\VacationDB_PedroLeite_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VacationDB_PedroLeite] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VacationDB_PedroLeite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VacationDB_PedroLeite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET ARITHABORT OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET RECOVERY FULL 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET  MULTI_USER 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VacationDB_PedroLeite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VacationDB_PedroLeite] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'VacationDB_PedroLeite', N'ON'
GO
ALTER DATABASE [VacationDB_PedroLeite] SET QUERY_STORE = OFF
GO
USE [VacationDB_PedroLeite]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 10/12/2022 19:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NOT NULL,
	[CityName] [nvarchar](70) NOT NULL,
	[CityCode] [char](3) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyPositions]    Script Date: 10/12/2022 19:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyPositions](
	[CompanyPositionsID] [int] IDENTITY(1,1) NOT NULL,
	[PositionName] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_CompanyPositions] PRIMARY KEY CLUSTERED 
(
	[CompanyPositionsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 10/12/2022 19:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](70) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 10/12/2022 19:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](70) NOT NULL,
	[DepartmentCode] [char](2) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 10/12/2022 19:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[CompanyPositionsID] [int] NOT NULL,
	[VacationsManagement] [int] NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacationsRequest]    Script Date: 10/12/2022 19:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacationsRequest](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[RequestDate] [date] NOT NULL,
	[ApprovalDate] [date] NOT NULL,
 CONSTRAINT [PK_VacationsRequest] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacationsTime]    Script Date: 10/12/2022 19:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacationsTime](
	[VacationsTimeID] [int] IDENTITY(1,1) NOT NULL,
	[RequestID] [int] NOT NULL,
	[VacationPeriod] [tinyint] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[TotalDays] [smallint] NULL,
	[ApprovalStatus] [bit] NOT NULL,
 CONSTRAINT [PK_VacationsTime] PRIMARY KEY CLUSTERED 
(
	[VacationsTimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Cities] FOREIGN KEY([CityID])
REFERENCES [dbo].[Cities] ([CityID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Cities]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_CompanyPositions] FOREIGN KEY([CompanyPositionsID])
REFERENCES [dbo].[CompanyPositions] ([CompanyPositionsID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_CompanyPositions]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[VacationsRequest]  WITH CHECK ADD  CONSTRAINT [FK_VacationsRequest_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[VacationsRequest] CHECK CONSTRAINT [FK_VacationsRequest_Employees]
GO
ALTER TABLE [dbo].[VacationsTime]  WITH CHECK ADD  CONSTRAINT [FK_VacationsTime_VacationsRequest] FOREIGN KEY([RequestID])
REFERENCES [dbo].[VacationsRequest] ([RequestID])
GO
ALTER TABLE [dbo].[VacationsTime] CHECK CONSTRAINT [FK_VacationsTime_VacationsRequest]
GO
USE [master]
GO
ALTER DATABASE [VacationDB_PedroLeite] SET  READ_WRITE 
GO