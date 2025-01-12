USE [master]
GO
/****** Object:  Database [HotelManagement]    Script Date: 7/22/2023 12:51:15 AM ******/
CREATE DATABASE [HotelManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HotelManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HotelManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HotelManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HotelManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [HotelManagement] SET  MULTI_USER 
GO
ALTER DATABASE [HotelManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HotelManagement', N'ON'
GO
ALTER DATABASE [HotelManagement] SET QUERY_STORE = OFF
GO
USE [HotelManagement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[RoomId] [int] NULL,
	[Check_In_Time] [datetime] NULL,
	[Check_Out_Time] [datetime] NULL,
	[UserId] [int] NULL,
	[DepartmentId] [int] NULL,
	[TotalPrice] [float] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](200) NULL,
	[PhoneNumber] [nvarchar](10) NULL,
	[Fax] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CitizenId] [nvarchar](12) NULL,
	[PhoneNumber] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](200) NULL,
	[PhoneNumber] [nvarchar](10) NULL,
	[Fax] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[CompanyId] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Floor]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Floor](
	[FloorId] [int] IDENTITY(1,1) NOT NULL,
	[FloorName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Floor] PRIMARY KEY CLUSTERED 
(
	[FloorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[BookingId] [int] NULL,
	[Image] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [nvarchar](50) NULL,
	[StatusId] [int] NULL,
	[FloorId] [int] NOT NULL,
	[RoomTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Type]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Type](
	[RoomTypeId] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeName] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Quantity_Bed] [int] NULL,
 CONSTRAINT [PK_Room_Category] PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
	[Color] [varchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/22/2023 12:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
	[IsGroup] [bit] NULL,
	[Disable] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230721162456_hotel', N'6.0.20')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6191a865-0c8c-44f3-ac52-e722f8fb635f', N'Admin', N'ADMIN', N'3613b98a-87ca-4a4f-b7f8-555828a87b3a')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'58083d2b-dd78-47d6-aa72-4c2fdd8c3d2f', N'6191a865-0c8c-44f3-ac52-e722f8fb635f')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'58083d2b-dd78-47d6-aa72-4c2fdd8c3d2f', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMTUqr5CrcYSXvRqRdaB3N/ZRsXIc6kSMhdgbAfbbm8svMZxBCYsNlQNQHO/3p2iSg==', N'4YWIVWU54MN7TB4QUPJNAZKWLARS2G6F', N'fecc1ab9-e89c-4d25-90c4-769ab1dd4799', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ca6e25da-4db4-4cfe-a46d-30d33129c446', N'tuan@gmail.com', N'TUAN@GMAIL.COM', N'tuan@gmail.com', N'TUAN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEB4NIK3Pu4L+//5Crd4SIsOhop4n+oBEe3SAA+d96/NZnE0CfZn2Ni5t96yv+5TjUQ==', N'UYKFKVKLXSOPK76SLZTXD3LZDOI2BI7E', N'2df23798-79f7-42ff-b320-fc24cd528ad1', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([BookingId], [CustomerId], [RoomId], [Check_In_Time], [Check_Out_Time], [UserId], [DepartmentId], [TotalPrice]) VALUES (2, 1, 2, CAST(N'2012-12-12T00:00:00.000' AS DateTime), NULL, 1, 1, NULL)
INSERT [dbo].[Booking] ([BookingId], [CustomerId], [RoomId], [Check_In_Time], [Check_Out_Time], [UserId], [DepartmentId], [TotalPrice]) VALUES (6, 5, 3, CAST(N'2023-07-21T19:40:30.793' AS DateTime), CAST(N'2023-07-21T19:40:41.000' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[Booking] ([BookingId], [CustomerId], [RoomId], [Check_In_Time], [Check_Out_Time], [UserId], [DepartmentId], [TotalPrice]) VALUES (7, 6, 3, CAST(N'2023-07-21T19:42:23.380' AS DateTime), CAST(N'2023-07-21T19:42:27.000' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Booking] ([BookingId], [CustomerId], [RoomId], [Check_In_Time], [Check_Out_Time], [UserId], [DepartmentId], [TotalPrice]) VALUES (8, 7, 1, CAST(N'2023-07-21T19:47:10.233' AS DateTime), CAST(N'2023-07-21T19:47:13.000' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Booking] ([BookingId], [CustomerId], [RoomId], [Check_In_Time], [Check_Out_Time], [UserId], [DepartmentId], [TotalPrice]) VALUES (9, 8, 1, CAST(N'2023-07-21T19:47:41.030' AS DateTime), CAST(N'2023-07-21T19:47:44.000' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Booking] ([BookingId], [CustomerId], [RoomId], [Check_In_Time], [Check_Out_Time], [UserId], [DepartmentId], [TotalPrice]) VALUES (10, 9, 4, CAST(N'2023-07-21T19:48:16.470' AS DateTime), CAST(N'2023-07-21T19:48:18.000' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[Booking] ([BookingId], [CustomerId], [RoomId], [Check_In_Time], [Check_Out_Time], [UserId], [DepartmentId], [TotalPrice]) VALUES (11, 10, 10, CAST(N'2023-07-21T21:09:02.757' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [CustomerId], [RoomId], [Check_In_Time], [Check_Out_Time], [UserId], [DepartmentId], [TotalPrice]) VALUES (12, 11, 9, CAST(N'2023-07-21T21:09:21.737' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [CustomerId], [RoomId], [Check_In_Time], [Check_Out_Time], [UserId], [DepartmentId], [TotalPrice]) VALUES (13, 12, 15, CAST(N'2023-07-21T21:09:25.640' AS DateTime), CAST(N'2023-07-21T21:09:29.000' AS DateTime), NULL, NULL, 1013)
INSERT [dbo].[Booking] ([BookingId], [CustomerId], [RoomId], [Check_In_Time], [Check_Out_Time], [UserId], [DepartmentId], [TotalPrice]) VALUES (14, 13, 7, CAST(N'2023-07-21T21:09:36.453' AS DateTime), CAST(N'2023-07-21T21:09:38.000' AS DateTime), NULL, NULL, 1968)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([CompanyId], [CompanyName], [PhoneNumber], [Fax], [Email], [Address]) VALUES (1, N'NovaLand', N'0123123123', N'1111111111', N'novaland@gmail.com', N'HCM')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [PhoneNumber], [Fax], [Email], [Address]) VALUES (2, N'CenLand', N'0312312312', N'2222222222', N'cenland@gmail.com', N'HN')
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [PhoneNumber], [Fax], [Email], [Address]) VALUES (3, N'SunWorld', N'0123456789', N'3333333333', N'sunworld@gmail.com', N'DN')
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (1, N'Tuan', N'0123123123', N'0912362512', N'tuan@gmail.com', N'HN')
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (2, N'Khách Lẻ', N'000000000', N'0123456789', N'khackle@gmail.com', N'HN')
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (3, N'Viet', N'0123123', N'0123123123', N'a@gmail.com', N'hn')
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (4, N'Bình GOld', N'0123123', N'0123123123', N'a@gmail.com', N'hn')
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (5, N'Khách lẻ', N'0123123', N'0123123123', N'a@gmail.com', N'hn')
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (6, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (8, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (9, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (10, N'Khách lẻ', N'0123123', N'0123123123', N'a@gmail.com', N'hn')
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (11, N'Khách lẻ', N'0123123', N'0123123123', N'tuanhihi0001@gmail.com', N'HN')
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (12, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CitizenId], [PhoneNumber], [Email], [Address]) VALUES (13, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [PhoneNumber], [Fax], [Email], [Address], [CompanyId]) VALUES (1, N'The Oriental Jade Hotel', N'0927635521', N'111', N'OrientalJade@gmail.com', N'HN', 2)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [PhoneNumber], [Fax], [Email], [Address], [CompanyId]) VALUES (2, N'La Siesta Classic Ma May', N'0927736628', N'222', N'LaSiesta@gmail.com', N'HN', 2)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [PhoneNumber], [Fax], [Email], [Address], [CompanyId]) VALUES (3, N'La Siesta Hoi An Resort & Spa', N'0912746612', N'222', N'LaSiestaha@gmail.com', N'DN', 1)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [PhoneNumber], [Fax], [Email], [Address], [CompanyId]) VALUES (4, N'Vinpearl Sealink Nha Trang', N'0918735412', N'333', N'vinpearl@gmail.com', N'NT', 1)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [PhoneNumber], [Fax], [Email], [Address], [CompanyId]) VALUES (5, N'Allegro Hoi An - A Little Luxury Hotel & Spa', N'0927731734', N'444', N'allegro@gmail.com', N'DN', 1)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [PhoneNumber], [Fax], [Email], [Address], [CompanyId]) VALUES (6, N'Banyan Tree Lang Co', N'0918827734', N'555', N'banyan@gmail.com', N'HCM', 3)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [PhoneNumber], [Fax], [Email], [Address], [CompanyId]) VALUES (7, N'Premier Village Danang Resort - Managed by Accor', N'0928736618', N'666', N'premier@gmail.com', N'DN', 3)
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Floor] ON 

INSERT [dbo].[Floor] ([FloorId], [FloorName]) VALUES (1, N'1st Floor')
INSERT [dbo].[Floor] ([FloorId], [FloorName]) VALUES (2, N'2nd Floor')
INSERT [dbo].[Floor] ([FloorId], [FloorName]) VALUES (3, N'3rd Floor')
INSERT [dbo].[Floor] ([FloorId], [FloorName]) VALUES (4, N'4th Floor')
SET IDENTITY_INSERT [dbo].[Floor] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [BookingId], [Image]) VALUES (1, N'CocaCola', 10000, NULL, N'https://cdn.tgdd.vn/Products/Images/2443/87880/bhx/thung-24-lon-nuoc-ngot-coca-cola-320ml-202304131109287672.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [BookingId], [Image]) VALUES (4, N'Pepsi', 10000, NULL, N'https://cdn.tgdd.vn/Products/Images/2443/76467/bhx/nuoc-ngot-pepsi-cola-lon-320ml-202303151108006292.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (1, N'101', 1, 1, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (2, N'102', 2, 1, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (3, N'103', 1, 1, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (4, N'201', 1, 2, 2)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (5, N'202', 1, 2, 2)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (6, N'203', 1, 2, 2)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (7, N'301', 3, 3, 3)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (8, N'302', 1, 3, 3)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (9, N'303', 2, 3, 3)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (10, N'104', 2, 1, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (11, N'105', 1, 1, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (12, N'106', 1, 1, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (13, N'204', 1, 2, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (14, N'205', 1, 2, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (15, N'206', 3, 2, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (16, N'304', 1, 3, 3)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (19, N'401', 1, 4, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (20, N'402', 1, 4, 2)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (21, N'403', 1, 4, 3)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (23, N'405', 1, 4, 1)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (25, N'305', 1, 3, 3)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (26, N'306', 1, 3, 3)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (27, N'405', 1, 4, 3)
INSERT [dbo].[Room] ([RoomId], [RoomName], [StatusId], [FloorId], [RoomTypeId]) VALUES (28, N'406', 1, 4, 3)
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Room_Type] ON 

INSERT [dbo].[Room_Type] ([RoomTypeId], [RoomTypeName], [Price], [Quantity_Bed]) VALUES (1, N'Single Room', 1000000, 1)
INSERT [dbo].[Room_Type] ([RoomTypeId], [RoomTypeName], [Price], [Quantity_Bed]) VALUES (2, N'Twin Room', 2000000, 2)
INSERT [dbo].[Room_Type] ([RoomTypeId], [RoomTypeName], [Price], [Quantity_Bed]) VALUES (3, N'Family Room', 3000000, 3)
INSERT [dbo].[Room_Type] ([RoomTypeId], [RoomTypeName], [Price], [Quantity_Bed]) VALUES (4, N'Deluxe Room', 4000000, 1)
SET IDENTITY_INSERT [dbo].[Room_Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusId], [StatusName], [Color]) VALUES (1, N'Trống', N'success')
INSERT [dbo].[Status] ([StatusId], [StatusName], [Color]) VALUES (2, N'Đang Ở', N'danger')
INSERT [dbo].[Status] ([StatusId], [StatusName], [Color]) VALUES (3, N'Chưa dọn', N'secondary')
INSERT [dbo].[Status] ([StatusId], [StatusName], [Color]) VALUES (4, N'Đang sửa', N'warning')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [FullName], [UserName], [Password], [DepartmentId], [IsGroup], [Disable]) VALUES (1, N'Admin', N'Admin', N'123', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/22/2023 12:51:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/22/2023 12:51:15 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/22/2023 12:51:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/22/2023 12:51:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/22/2023 12:51:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/22/2023 12:51:15 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/22/2023 12:51:15 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Customer]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Department]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([RoomId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Room]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_User]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Company]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Booking] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([BookingId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Booking]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Floor] FOREIGN KEY([FloorId])
REFERENCES [dbo].[Floor] ([FloorId])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Floor]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Room_Category] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[Room_Type] ([RoomTypeId])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Room_Category]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Status]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Department]
GO
USE [master]
GO
ALTER DATABASE [HotelManagement] SET  READ_WRITE 
GO
