USE [master]
GO
/****** Object:  Database [RestaurantDB]    Script Date: 4/14/2018 11:22:39 PM ******/
CREATE DATABASE [RestaurantDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RestaurantDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\RestaurantDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RestaurantDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\RestaurantDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RestaurantDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RestaurantDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RestaurantDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RestaurantDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RestaurantDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RestaurantDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RestaurantDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [RestaurantDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RestaurantDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RestaurantDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RestaurantDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RestaurantDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RestaurantDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RestaurantDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RestaurantDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RestaurantDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RestaurantDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RestaurantDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RestaurantDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RestaurantDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RestaurantDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RestaurantDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RestaurantDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RestaurantDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RestaurantDB] SET RECOVERY FULL 
GO
ALTER DATABASE [RestaurantDB] SET  MULTI_USER 
GO
ALTER DATABASE [RestaurantDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RestaurantDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RestaurantDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RestaurantDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RestaurantDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [RestaurantDB]
GO
/****** Object:  Table [dbo].[ApplicationAuthRoles]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationAuthRoles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ApplicationRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationAuthUsers]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationAuthUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[OtherName] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](25) NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[AppRoleID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[LastActiveDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsAccountLoggedOut] [bit] NOT NULL,
	[FailedLoginAttempt] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationAuthUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[CompanyGUID] [uniqueidentifier] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[LastActiveDate] [date] NOT NULL,
	[IsSubscribed] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyAuthRoles]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyAuthRoles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CompanyAuthRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyAuthUsers]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyAuthUsers](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[OtherName] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[RoleID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsAccountLoggedOut] [bit] NOT NULL,
	[FailedLoginAttempt] [int] NOT NULL,
 CONSTRAINT [PK_CompanyAuthUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyBranch]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyBranch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CompanyBranches] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanySubscription]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanySubscription](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[SubscriptionPlanID] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[SubscriptionStatus] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CompanySubscription] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FoodMenu]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodMenu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[MenuImage] [image] NULL,
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
 CONSTRAINT [PK_FoodMenu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuPrice]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuPrice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FoodMenuID] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PreviousPrice] [decimal](18, 2) NOT NULL,
	[DiscountPercentage] [int] NULL,
 CONSTRAINT [PK_MenuPrice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderList]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderList](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[MeunID] [int] NOT NULL,
	[OrderQuantity] [int] NOT NULL,
	[PlacedByID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsDelievered] [bit] NOT NULL,
	[OrderPrice] [decimal](18, 2) NOT NULL,
	[IsProcessing] [bit] NOT NULL,
 CONSTRAINT [PK_OrderList] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestaurantSeats]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantSeats](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[CompanyBranchIB] [int] NOT NULL,
	[TableID] [nvarchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RestaurantSeats] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubscriptionPlans]    Script Date: 4/14/2018 11:22:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionPlans](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubscriptionTypeName] [nvarchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[IsDeleted] [bit] NOT NULL,
	[Duration] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SubscriptionPlans] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ApplicationAuthRoles] ADD  CONSTRAINT [DF_ApplicationRoles_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ApplicationAuthUsers] ADD  CONSTRAINT [DF_ApplicationAuthUsers_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ApplicationAuthUsers] ADD  CONSTRAINT [DF_ApplicationAuthUsers_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ApplicationAuthUsers] ADD  CONSTRAINT [DF_ApplicationAuthUsers_IsAccountLoggedOut]  DEFAULT ((0)) FOR [IsAccountLoggedOut]
GO
ALTER TABLE [dbo].[ApplicationAuthUsers] ADD  CONSTRAINT [DF_ApplicationAuthUsers_FailedLoginAttempt]  DEFAULT ((0)) FOR [FailedLoginAttempt]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_IsSubscribed]  DEFAULT ((0)) FOR [IsSubscribed]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CompanyAuthRoles] ADD  CONSTRAINT [DF_CompanyAuthRoles_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CompanyAuthUsers] ADD  CONSTRAINT [DF_CompanyAuthUsers_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CompanyAuthUsers] ADD  CONSTRAINT [DF_CompanyAuthUsers_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CompanyAuthUsers] ADD  CONSTRAINT [DF_CompanyAuthUsers_IsAccountLoggedOut]  DEFAULT ((0)) FOR [IsAccountLoggedOut]
GO
ALTER TABLE [dbo].[CompanyAuthUsers] ADD  CONSTRAINT [DF_CompanyAuthUsers_FailedLoginAttempt]  DEFAULT ((0)) FOR [FailedLoginAttempt]
GO
ALTER TABLE [dbo].[CompanyBranch] ADD  CONSTRAINT [DF_CompanyBranches_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CompanyBranch] ADD  CONSTRAINT [DF_CompanyBranches_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CompanySubscription] ADD  CONSTRAINT [DF_CompanySubscription_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FoodMenu] ADD  CONSTRAINT [DF_FoodMenu_IsAvailable]  DEFAULT ((0)) FOR [IsAvailable]
GO
ALTER TABLE [dbo].[FoodMenu] ADD  CONSTRAINT [DF_FoodMenu_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderList] ADD  CONSTRAINT [DF_OrderList_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderList] ADD  CONSTRAINT [DF_OrderList_IsDelievered]  DEFAULT ((0)) FOR [IsDelievered]
GO
ALTER TABLE [dbo].[OrderList] ADD  CONSTRAINT [DF_OrderList_IsProcessing]  DEFAULT ((0)) FOR [IsProcessing]
GO
ALTER TABLE [dbo].[RestaurantSeats] ADD  CONSTRAINT [DF_RestaurantSeats_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SubscriptionPlans] ADD  CONSTRAINT [DF_SubscriptionPlans_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
USE [master]
GO
ALTER DATABASE [RestaurantDB] SET  READ_WRITE 
GO
