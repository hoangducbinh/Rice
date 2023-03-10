
/****** Object:  Database [FoodStore]    Script Date: 1/11/2023 8:15:20 AM ******/
CREATE DATABASE [FoodStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FoodStore', FILENAME = N'D:\18.ASP.NET  MVC\Rice\FoodStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FoodStore_log', FILENAME = N'D:\18.ASP.NET  MVC\Rice\FoodStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FoodStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FoodStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FoodStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FoodStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FoodStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FoodStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FoodStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [FoodStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FoodStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FoodStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FoodStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FoodStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FoodStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FoodStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FoodStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FoodStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FoodStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FoodStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FoodStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FoodStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FoodStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FoodStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FoodStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FoodStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FoodStore] SET RECOVERY FULL 
GO
ALTER DATABASE [FoodStore] SET  MULTI_USER 
GO
ALTER DATABASE [FoodStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FoodStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FoodStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FoodStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FoodStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FoodStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FoodStore', N'ON'
GO
ALTER DATABASE [FoodStore] SET QUERY_STORE = OFF
GO
USE [FoodStore]
GO
/****** Object:  Table [dbo].[AccountBuy]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountBuy](
	[AccountID] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNumber] [int] NULL,
	[Status] [int] NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_AccountBuy] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountSell]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountSell](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNumber] [nchar](10) NULL,
	[Status] [int] NOT NULL,
	[Address] [nvarchar](50) NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetail]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetail](
	[CartDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
	[ShoppingCartID] [int] NOT NULL,
 CONSTRAINT [PK_CartDetail] PRIMARY KEY CLUSTERED 
(
	[CartDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryP]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryP](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_CategoryP] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[PhoneNumber] [nchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[PayStatus] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Decription] [nvarchar](max) NULL,
	[Image] [nchar](50) NULL,
	[Amount] [int] NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[PromotionID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Discount] [int] NOT NULL,
	[DateStart] [date] NOT NULL,
	[DateEnd] [date] NOT NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[PromotionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionDetail]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionDetail](
	[PromotionID] [int] NOT NULL,
	[ProductID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate*]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate*](
	[RateID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[NumberStar] [int] NULL,
	[Date] [date] NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Rate*] PRIMARY KEY CLUSTERED 
(
	[RateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCard]    Script Date: 1/11/2023 8:15:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCard](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCard] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([AdminID], [UserName], [PassWord], [DisplayName], [Status]) VALUES (1, N'VuOK', N'1234', N'Vũ P', 1)
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryP] ON 

INSERT [dbo].[CategoryP] ([CategoryID], [Name]) VALUES (1, N'Thịt      ')
INSERT [dbo].[CategoryP] ([CategoryID], [Name]) VALUES (2, N'Hải sản   ')
INSERT [dbo].[CategoryP] ([CategoryID], [Name]) VALUES (3, N'Rau,củ    ')
INSERT [dbo].[CategoryP] ([CategoryID], [Name]) VALUES (4, N'Trái cây  ')
SET IDENTITY_INSERT [dbo].[CategoryP] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Decription], [Image], [Amount], [CategoryID]) VALUES (1, N'Cơm bò xào', 40000, N'Null', N'bo.JFIF                                           ', 1, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Decription], [Image], [Amount], [CategoryID]) VALUES (2, N'Cơm trứng cuộn', 20000, N'Null', N'trung.JFIF                                        ', 1, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Decription], [Image], [Amount], [CategoryID]) VALUES (3, N'Cơm sườn', 25000, N'Null', N'suon.JFIF                                         ', 1, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Decription], [Image], [Amount], [CategoryID]) VALUES (4, N'Cơm thịt kho tiêu', 25000, N'Null', N'khot.JFIF                                         ', 1, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Price], [Decription], [Image], [Amount], [CategoryID]) VALUES (5, N'Cơm thịt kho trứng', 25000, N'Null', N'khotr.JFIF                                        ', 1, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Product]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_ShoppingCard] FOREIGN KEY([ShoppingCartID])
REFERENCES [dbo].[ShoppingCard] ([CartID])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_ShoppingCard]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[AccountSell] ([AccountID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_CategoryP] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryP] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_CategoryP]
GO
ALTER TABLE [dbo].[PromotionDetail]  WITH CHECK ADD  CONSTRAINT [FK_PromotionDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[PromotionDetail] CHECK CONSTRAINT [FK_PromotionDetail_Product]
GO
ALTER TABLE [dbo].[PromotionDetail]  WITH CHECK ADD  CONSTRAINT [FK_PromotionDetail_Promotion] FOREIGN KEY([PromotionID])
REFERENCES [dbo].[Promotion] ([PromotionID])
GO
ALTER TABLE [dbo].[PromotionDetail] CHECK CONSTRAINT [FK_PromotionDetail_Promotion]
GO
ALTER TABLE [dbo].[Rate*]  WITH CHECK ADD  CONSTRAINT [FK_Rate*_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[AccountSell] ([AccountID])
GO
ALTER TABLE [dbo].[Rate*] CHECK CONSTRAINT [FK_Rate*_Account]
GO
ALTER TABLE [dbo].[Rate*]  WITH CHECK ADD  CONSTRAINT [FK_Rate*_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Rate*] CHECK CONSTRAINT [FK_Rate*_Product]
GO
ALTER TABLE [dbo].[ShoppingCard]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCard_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[AccountSell] ([AccountID])
GO
ALTER TABLE [dbo].[ShoppingCard] CHECK CONSTRAINT [FK_ShoppingCard_Account]
GO
USE [master]
GO
ALTER DATABASE [FoodStore] SET  READ_WRITE 
GO
