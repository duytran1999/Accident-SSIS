USE [master]
GO
/****** Object:  Database [NDS_ACCIDENT]    Script Date: 11/20/2021 4:17:10 PM ******/
CREATE DATABASE [NDS_ACCIDENT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NDS_ACCIDENT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NDS_ACCIDENT.mdf' , SIZE = 1384448KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NDS_ACCIDENT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NDS_ACCIDENT_log.ldf' , SIZE = 1646592KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NDS_ACCIDENT] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NDS_ACCIDENT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NDS_ACCIDENT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET ARITHABORT OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NDS_ACCIDENT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NDS_ACCIDENT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NDS_ACCIDENT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NDS_ACCIDENT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET RECOVERY FULL 
GO
ALTER DATABASE [NDS_ACCIDENT] SET  MULTI_USER 
GO
ALTER DATABASE [NDS_ACCIDENT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NDS_ACCIDENT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NDS_ACCIDENT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NDS_ACCIDENT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NDS_ACCIDENT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NDS_ACCIDENT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NDS_ACCIDENT', N'ON'
GO
ALTER DATABASE [NDS_ACCIDENT] SET QUERY_STORE = OFF
GO
USE [NDS_ACCIDENT]
GO
/****** Object:  Table [dbo].[Accident_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_NDS](
	[Accident_ID] [int] IDENTITY(1,1) NOT NULL,
	[Accident_NK] [varchar](50) NOT NULL,
	[Geography] [int] NULL,
	[Date] [int] NULL,
	[Time] [int] NULL,
	[Number_of_Casualties] [int] NULL,
	[Number_of_Vehicles] [int] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[Police_Force] [int] NULL,
	[Accident_Severity] [int] NULL,
	[Road_Type] [int] NULL,
	[Speed_Limit] [int] NULL,
	[Light_Conditions] [int] NULL,
	[Weather_Conditions] [int] NULL,
	[Road_Surface_Conditions] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[Local_Authority_District] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Accident_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accident_Severity_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident_Severity_NDS](
	[Accident_Severity_ID] [int] IDENTITY(1,1) NOT NULL,
	[Accident_Severity_NK] [int] NULL,
	[Accident_Severity] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Accident_Severity_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age_Band_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_Band_NDS](
	[Age_Band_ID] [int] IDENTITY(1,1) NOT NULL,
	[Age_Band_NK] [int] NULL,
	[Age_Band] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Age_Band_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Class_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Class_NDS](
	[Casualty_Class_ID] [int] IDENTITY(1,1) NOT NULL,
	[Casualty_Class_NK] [int] NULL,
	[Casualty_Class] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Casualty_Class_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_NDS](
	[Casualty_ID] [int] IDENTITY(1,1) NOT NULL,
	[Accident_Ref] [int] NOT NULL,
	[Vehicle_Ref] [int] NULL,
	[Casualty_Ref] [int] NULL,
	[Accident_NK] [varchar](50) NULL,
	[Age_of_casualty] [int] NULL,
	[Casualty_Class] [int] NULL,
	[Sex_of_Casualty] [int] NULL,
	[Age_Band_of_Casualty] [int] NULL,
	[Casualty_Severity] [int] NULL,
	[Casualty_Type] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Casualty_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Severity_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Severity_NDS](
	[Casualty_Severity_ID] [int] IDENTITY(1,1) NOT NULL,
	[Casualty_Severity_NK] [int] NULL,
	[Casualty_Severity] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Casualty_Severity_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty_Type_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty_Type_NDS](
	[Casualty_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Casualty_Type_NK] [int] NULL,
	[Casualty_Type] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Casualty_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country_NDS](
	[Country_ID] [int] IDENTITY(1,1) NOT NULL,
	[Country_Name] [varchar](200) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Country_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[County_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_NDS](
	[County_ID] [int] IDENTITY(1,1) NOT NULL,
	[County_Name] [varchar](200) NOT NULL,
	[Region] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[County_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Day_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Day_NDS](
	[Day_ID] [int] IDENTITY(1,1) NOT NULL,
	[Day] [int] NOT NULL,
	[DayOfWeek] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Day_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Geography_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geography_NDS](
	[Geography_ID] [int] IDENTITY(1,1) NOT NULL,
	[LSOA_of_Accident_Location] [varchar](50) NULL,
	[CITY] [int] NOT NULL,
	[Urban_or_Rural_Area] [smallint] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Geography_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hour_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hour_NDS](
	[Hour_ID] [int] IDENTITY(1,1) NOT NULL,
	[Hour] [int] NOT NULL,
	[Minute] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Hour_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journey_Purpose_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journey_Purpose_NDS](
	[Journey_Purpose_ID] [int] IDENTITY(1,1) NOT NULL,
	[Journey_Purpose_NK] [int] NULL,
	[Journey_Purpose] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Journey_Purpose_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Light_Conditions_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Light_Conditions_NDS](
	[Light_Conditions_ID] [int] IDENTITY(1,1) NOT NULL,
	[Light_Conditions_NK] [int] NULL,
	[Light_Conditions] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Light_Conditions_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Local_Authority_District_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Local_Authority_District_NDS](
	[Local_Authority_District_ID] [int] IDENTITY(1,1) NOT NULL,
	[Local_Authority_District_NK] [int] NULL,
	[Local_Authority_District] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Local_Authority_District_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Minute_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Minute_NDS](
	[Minute_ID] [int] IDENTITY(1,1) NOT NULL,
	[Minute] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Minute_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Month_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Month_NDS](
	[Month_ID] [int] IDENTITY(1,1) NOT NULL,
	[Month] [int] NOT NULL,
	[Quarter] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Month_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Police_Force_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Police_Force_NDS](
	[Police_Force_ID] [int] IDENTITY(1,1) NOT NULL,
	[Police_Force_NK] [int] NULL,
	[Police_Force] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Police_Force_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quarter_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quarter_NDS](
	[Quarter_ID] [int] IDENTITY(1,1) NOT NULL,
	[Quarter] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Quarter_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region_NDS](
	[Region_ID] [int] IDENTITY(1,1) NOT NULL,
	[Region_Name] [varchar](200) NOT NULL,
	[Country] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Region_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Road_Surface_Conditions_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Road_Surface_Conditions_NDS](
	[Road_Surface_Conditions_ID] [int] IDENTITY(1,1) NOT NULL,
	[Road_Surface_Conditions_NK] [int] NULL,
	[Road_Surface_Conditions] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Road_Surface_Conditions_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Road_Type_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Road_Type_NDS](
	[Road_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Road_Type_NK] [int] NULL,
	[Road_Type] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Road_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sex_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sex_NDS](
	[Sex_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sex_NK] [int] NULL,
	[Sex] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sex_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speed_Limit_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speed_Limit_NDS](
	[Speed_Limit_ID] [int] IDENTITY(1,1) NOT NULL,
	[Speed_Limit] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Speed_Limit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Town_City_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town_City_NDS](
	[Town_City_ID] [int] IDENTITY(1,1) NOT NULL,
	[Town_City_Name] [varchar](200) NOT NULL,
	[County] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[LSOA_Code] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Town_City_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_NDS](
	[Vehicle_ID] [int] IDENTITY(1,1) NOT NULL,
	[Accident_Ref] [int] NOT NULL,
	[Vehicle_Ref] [int] NULL,
	[Age_of_Driver] [int] NULL,
	[Vehicle_Type] [int] NULL,
	[Journey_Purpose_of_Driver] [int] NULL,
	[Sex_of_Driver] [int] NULL,
	[Age_Band_of_Driver] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[Accident_NK] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Vehicle_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Type_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Type_NDS](
	[Vehicle_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Vehicle_Type_NK] [int] NULL,
	[Vehicle_Type] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vehicle_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weather_Conditions_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weather_Conditions_NDS](
	[Weather_Conditions_ID] [int] IDENTITY(1,1) NOT NULL,
	[Weather_Conditions_NK] [int] NULL,
	[Weather_Conditions] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Weather_Conditions_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Year_NDS]    Script Date: 11/20/2021 4:17:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Year_NDS](
	[Year_ID] [int] IDENTITY(1,1) NOT NULL,
	[Year] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Year_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Accident_Severity_NDS] FOREIGN KEY([Accident_Severity])
REFERENCES [dbo].[Accident_Severity_NDS] ([Accident_Severity_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Accident_Severity_NDS]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Date_NDS] FOREIGN KEY([Date])
REFERENCES [dbo].[Day_NDS] ([Day_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Date_NDS]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Geography_NDS] FOREIGN KEY([Geography])
REFERENCES [dbo].[Geography_NDS] ([Geography_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Geography_NDS]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Light_Conditions_NDS] FOREIGN KEY([Light_Conditions])
REFERENCES [dbo].[Light_Conditions_NDS] ([Light_Conditions_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Light_Conditions_NDS]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Local_Authority_District_NDS] FOREIGN KEY([Local_Authority_District])
REFERENCES [dbo].[Local_Authority_District_NDS] ([Local_Authority_District_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Local_Authority_District_NDS]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Police_Force_NDS] FOREIGN KEY([Police_Force])
REFERENCES [dbo].[Police_Force_NDS] ([Police_Force_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Police_Force_NDS]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Road_Surface_Conditions_NDS] FOREIGN KEY([Road_Surface_Conditions])
REFERENCES [dbo].[Road_Surface_Conditions_NDS] ([Road_Surface_Conditions_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Road_Surface_Conditions_NDS]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Road_Type_NDS] FOREIGN KEY([Road_Type])
REFERENCES [dbo].[Road_Type_NDS] ([Road_Type_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Road_Type_NDS]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Speed_Limit_NDS] FOREIGN KEY([Speed_Limit])
REFERENCES [dbo].[Speed_Limit_NDS] ([Speed_Limit_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Speed_Limit_NDS]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Time_NDS] FOREIGN KEY([Time])
REFERENCES [dbo].[Hour_NDS] ([Hour_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Time_NDS]
GO
ALTER TABLE [dbo].[Accident_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Accident_NDS_Weather_Conditions_NDS] FOREIGN KEY([Weather_Conditions])
REFERENCES [dbo].[Weather_Conditions_NDS] ([Weather_Conditions_ID])
GO
ALTER TABLE [dbo].[Accident_NDS] CHECK CONSTRAINT [FK_Accident_NDS_Weather_Conditions_NDS]
GO
ALTER TABLE [dbo].[Casualty_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Casualty_NDS_Accident_NDS] FOREIGN KEY([Accident_Ref])
REFERENCES [dbo].[Accident_NDS] ([Accident_ID])
GO
ALTER TABLE [dbo].[Casualty_NDS] CHECK CONSTRAINT [FK_Casualty_NDS_Accident_NDS]
GO
ALTER TABLE [dbo].[Casualty_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Casualty_NDS_Age_Band_NDS] FOREIGN KEY([Age_Band_of_Casualty])
REFERENCES [dbo].[Age_Band_NDS] ([Age_Band_ID])
GO
ALTER TABLE [dbo].[Casualty_NDS] CHECK CONSTRAINT [FK_Casualty_NDS_Age_Band_NDS]
GO
ALTER TABLE [dbo].[Casualty_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Casualty_NDS_Casualty_Class_NDS] FOREIGN KEY([Casualty_Class])
REFERENCES [dbo].[Casualty_Class_NDS] ([Casualty_Class_ID])
GO
ALTER TABLE [dbo].[Casualty_NDS] CHECK CONSTRAINT [FK_Casualty_NDS_Casualty_Class_NDS]
GO
ALTER TABLE [dbo].[Casualty_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Casualty_NDS_Casualty_Severity_NDS] FOREIGN KEY([Casualty_Severity])
REFERENCES [dbo].[Casualty_Severity_NDS] ([Casualty_Severity_ID])
GO
ALTER TABLE [dbo].[Casualty_NDS] CHECK CONSTRAINT [FK_Casualty_NDS_Casualty_Severity_NDS]
GO
ALTER TABLE [dbo].[Casualty_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Casualty_NDS_Casualty_Type_NDS] FOREIGN KEY([Casualty_Type])
REFERENCES [dbo].[Casualty_Type_NDS] ([Casualty_Type_ID])
GO
ALTER TABLE [dbo].[Casualty_NDS] CHECK CONSTRAINT [FK_Casualty_NDS_Casualty_Type_NDS]
GO
ALTER TABLE [dbo].[Casualty_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Casualty_NDS_Sex_NDS] FOREIGN KEY([Sex_of_Casualty])
REFERENCES [dbo].[Sex_NDS] ([Sex_ID])
GO
ALTER TABLE [dbo].[Casualty_NDS] CHECK CONSTRAINT [FK_Casualty_NDS_Sex_NDS]
GO
ALTER TABLE [dbo].[County_NDS]  WITH CHECK ADD  CONSTRAINT [FK_COUNTY_REGION] FOREIGN KEY([Region])
REFERENCES [dbo].[Region_NDS] ([Region_ID])
GO
ALTER TABLE [dbo].[County_NDS] CHECK CONSTRAINT [FK_COUNTY_REGION]
GO
ALTER TABLE [dbo].[Day_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Day_NDS_Month_NDS] FOREIGN KEY([Month])
REFERENCES [dbo].[Month_NDS] ([Month_ID])
GO
ALTER TABLE [dbo].[Day_NDS] CHECK CONSTRAINT [FK_Day_NDS_Month_NDS]
GO
ALTER TABLE [dbo].[Geography_NDS]  WITH CHECK ADD  CONSTRAINT [FK_GEOGRAPHY_TOWN] FOREIGN KEY([CITY])
REFERENCES [dbo].[Town_City_NDS] ([Town_City_ID])
GO
ALTER TABLE [dbo].[Geography_NDS] CHECK CONSTRAINT [FK_GEOGRAPHY_TOWN]
GO
ALTER TABLE [dbo].[Hour_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Hour_NDS_Minute_NDS] FOREIGN KEY([Minute])
REFERENCES [dbo].[Minute_NDS] ([Minute_ID])
GO
ALTER TABLE [dbo].[Hour_NDS] CHECK CONSTRAINT [FK_Hour_NDS_Minute_NDS]
GO
ALTER TABLE [dbo].[Month_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Month_NDS_Quarter_NDS] FOREIGN KEY([Quarter])
REFERENCES [dbo].[Quarter_NDS] ([Quarter_ID])
GO
ALTER TABLE [dbo].[Month_NDS] CHECK CONSTRAINT [FK_Month_NDS_Quarter_NDS]
GO
ALTER TABLE [dbo].[Quarter_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Quarter_NDS_Year_NDS] FOREIGN KEY([Year])
REFERENCES [dbo].[Year_NDS] ([Year_ID])
GO
ALTER TABLE [dbo].[Quarter_NDS] CHECK CONSTRAINT [FK_Quarter_NDS_Year_NDS]
GO
ALTER TABLE [dbo].[Region_NDS]  WITH CHECK ADD  CONSTRAINT [FK_REGION_COUNTRY] FOREIGN KEY([Country])
REFERENCES [dbo].[Country_NDS] ([Country_ID])
GO
ALTER TABLE [dbo].[Region_NDS] CHECK CONSTRAINT [FK_REGION_COUNTRY]
GO
ALTER TABLE [dbo].[Town_City_NDS]  WITH CHECK ADD  CONSTRAINT [FK_TOWN_COUNTY] FOREIGN KEY([County])
REFERENCES [dbo].[County_NDS] ([County_ID])
GO
ALTER TABLE [dbo].[Town_City_NDS] CHECK CONSTRAINT [FK_TOWN_COUNTY]
GO
ALTER TABLE [dbo].[Vehicle_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_NDS_Accident_NDS] FOREIGN KEY([Accident_Ref])
REFERENCES [dbo].[Accident_NDS] ([Accident_ID])
GO
ALTER TABLE [dbo].[Vehicle_NDS] CHECK CONSTRAINT [FK_Vehicle_NDS_Accident_NDS]
GO
ALTER TABLE [dbo].[Vehicle_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_NDS_Age_Band_NDS] FOREIGN KEY([Age_Band_of_Driver])
REFERENCES [dbo].[Age_Band_NDS] ([Age_Band_ID])
GO
ALTER TABLE [dbo].[Vehicle_NDS] CHECK CONSTRAINT [FK_Vehicle_NDS_Age_Band_NDS]
GO
ALTER TABLE [dbo].[Vehicle_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_NDS_Journey_Purpose_NDS] FOREIGN KEY([Journey_Purpose_of_Driver])
REFERENCES [dbo].[Journey_Purpose_NDS] ([Journey_Purpose_ID])
GO
ALTER TABLE [dbo].[Vehicle_NDS] CHECK CONSTRAINT [FK_Vehicle_NDS_Journey_Purpose_NDS]
GO
ALTER TABLE [dbo].[Vehicle_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_NDS_Sex_NDS] FOREIGN KEY([Sex_of_Driver])
REFERENCES [dbo].[Sex_NDS] ([Sex_ID])
GO
ALTER TABLE [dbo].[Vehicle_NDS] CHECK CONSTRAINT [FK_Vehicle_NDS_Sex_NDS]
GO
ALTER TABLE [dbo].[Vehicle_NDS]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_NDS_Vehicle_Type_NDS] FOREIGN KEY([Vehicle_Type])
REFERENCES [dbo].[Vehicle_Type_NDS] ([Vehicle_Type_ID])
GO
ALTER TABLE [dbo].[Vehicle_NDS] CHECK CONSTRAINT [FK_Vehicle_NDS_Vehicle_Type_NDS]
GO
USE [master]
GO
ALTER DATABASE [NDS_ACCIDENT] SET  READ_WRITE 
GO
