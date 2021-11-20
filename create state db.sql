USE [master]
GO

--DROP DATABASE [STATE_ACCIDENT]
--GO

CREATE DATABASE [STATE_ACCIDENT]
GO


USE [STATE_ACCIDENT]
GO

/****** Object:  Table [dbo].[Accident_State]    Script Date: 11/4/2021 11:44:14 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Accident_State]') AND type in (N'U'))
DROP TABLE [dbo].[Accident_State]
GO
/****** Object:  Table [dbo].[Casualty_State]    Script Date: 11/4/2021 11:45:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Casualty_State]') AND type in (N'U'))
DROP TABLE [dbo].[Casualty_State]
GO
/****** Object:  Table [dbo].[LSOA_Location_Accident]    Script Date: 11/4/2021 11:45:20 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LSOA_Location_Accident]') AND type in (N'U'))
DROP TABLE [dbo].[LSOA_Location_Accident]
GO
/****** Object:  Table [dbo].[Postcode]    Script Date: 11/4/2021 11:45:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Postcode]') AND type in (N'U'))
DROP TABLE [dbo].[Postcode]
GO
/****** Object:  Table [dbo].[Vehicle_State]    Script Date: 11/4/2021 11:45:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle_State]') AND type in (N'U'))
DROP TABLE [dbo].[Vehicle_State]
GO

/****** Object:  Table [dbo].[Accident_State]    Script Date: 11/4/2021 11:44:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Accident_State](
	[Accident_Index] [varchar](255) NOT NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[Police_Force] [smallint] NULL,
	[Accident_Severity] [smallint] NULL,
	[Number_of_Vehicles] [smallint] NULL,
	[Number_of_Casualties] [smallint] NULL,
	[Date] [date] NULL,
	[Day_of_Week] [smallint] NULL,
	[Time] [time](7) NULL,
	[Local_Authority_(District)] [smallint] NULL,
	[Local_Authority_(Highway)] [varchar](50) NULL,
	[1st_Road_Class] [smallint] NULL,
	[1st_Road_Number] [smallint] NULL,
	[Road_Type] [smallint] NULL,
	[Speed_limit] [smallint] NULL,
	[Junction_Detail] [smallint] NULL,
	[Junction_Control] [smallint] NULL,
	[2nd_Road_Class] [smallint] NULL,
	[2nd_Road_Number] [smallint] NULL,
	[Light_Conditions] [smallint] NULL,
	[Weather_Conditions] [smallint] NULL,
	[Road_Surface_Conditions] [smallint] NULL,
	[Special_Conditions_at_Site] [smallint] NULL,
	[Carriageway_Hazards] [smallint] NULL,
	[Urban_or_Rural_Area] [smallint] NULL,
	[Did_Police_Officer_Attend_Scene_of_Accident] [smallint] NULL,
	[LSOA_of_Accident_Location] [varchar](50) NULL,
	[CreateAt] [datetime] NULL,
	[UpdateAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Accident_Index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [STATE_ACCIDENT]
GO


/****** Object:  Table [dbo].[Casualty_State]    Script Date: 11/4/2021 11:45:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Casualty_State](
	[Accident_Index] [varchar](255) NOT NULL,
	[Vehicle_Reference] [smallint] NOT NULL,
	[Casualty_Reference] [smallint] NOT NULL,
	[Casualty_Class] [smallint] NULL,
	[Sex_of_Casualty] [smallint] NULL,
	[Age_of_Casualty] [smallint] NULL,
	[Age_Band_of_Casualty] [smallint] NULL,
	[Casualty_Severity] [smallint] NULL,
	[Pedestrian_Location] [smallint] NULL,
	[Pedestrian_Movement] [smallint] NULL,
	[Car_Passenger] [smallint] NULL,
	[Bus_or_Coach_Passenger] [smallint] NULL,
	[Pedestrian_Road_Maintenance_Worker] [smallint] NULL,
	[Casualty_Type] [smallint] NULL,
	[Casualty_Home_Area_Type] [varchar](50) NULL,
	[CreateAt] [datetime] NULL,
	[UpdateAt] [datetime] NULL,
 CONSTRAINT [PK_Casualty] PRIMARY KEY CLUSTERED 
(
	[Accident_Index] ASC,
	[Vehicle_Reference] ASC,
	[Casualty_Reference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [STATE_ACCIDENT]
GO



/****** Object:  Table [dbo].[LSOA_Location_Accident]    Script Date: 11/4/2021 11:45:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LSOA_Location_Accident](
	[Pcd] [varchar](50) NOT NULL,
	[LSOA_cd] [varchar](50) NULL,
	[LSOA_nm] [varchar](50) NULL,
	[Postcode_splited] [varchar](50) NULL,
	[CreateAt] [datetime] NULL,
	[UpdateAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pcd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [STATE_ACCIDENT]
GO



/****** Object:  Table [dbo].[Postcode]    Script Date: 11/4/2021 11:45:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Postcode](
	[postcode] [varchar](50) NOT NULL,
	[easting] [varchar](50) NULL,
	[northing] [varchar](50) NULL,
	[latitude] [varchar](50) NULL,
	[longitude] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[county] [varchar](50) NULL,
	[country_code] [varchar](50) NULL,
	[country_name] [varchar](50) NULL,
	[iso3166-2] [varchar](50) NULL,
	[region_code] [varchar](50) NULL,
	[region_name] [varchar](50) NULL,
	[CreateAt] [datetime] NULL,
	[UpdateAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[postcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [STATE_ACCIDENT]
GO



/****** Object:  Table [dbo].[Vehicle_State]    Script Date: 11/4/2021 11:45:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vehicle_State](
	[Accident_Index] [varchar](255) NOT NULL,
	[Vehicle_Reference] [smallint] NOT NULL,
	[Vehicle_Type] [smallint] NULL,
	[Towing_and_Articulation] [smallint] NULL,
	[Vehicle_Manoeuvre] [smallint] NULL,
	[Vehicle_Location-Restricted_Lane] [smallint] NULL,
	[Junction_Location] [smallint] NULL,
	[Skidding_and_Overturning] [smallint] NULL,
	[Hit_Object_in_Carriageway] [smallint] NULL,
	[Vehicle_Leaving_Carriageway] [smallint] NULL,
	[Hit_Object_off_Carriageway] [smallint] NULL,
	[1st_Point_of_Impact] [smallint] NULL,
	[Was_Vehicle_Left_Hand_Drive?] [smallint] NULL,
	[Journey_Purpose_of_Driver] [smallint] NULL,
	[Sex_of_Driver] [smallint] NULL,
	[Age_of_Driver] [smallint] NULL,
	[Age_Band_of_Driver] [smallint] NULL,
	[Engine_Capacity_(CC)] [int] NULL,
	[Propulsion_Code] [smallint] NULL,
	[Age_of_Vehicle] [smallint] NULL,
	[Driver_IMD_Decile] [smallint] NULL,
	[Driver_Home_Area_Type] [varchar](50) NULL,
	[CreateAt] [datetime] NULL,
	[UpdateAt] [datetime] NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[Accident_Index] ASC,
	[Vehicle_Reference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO





