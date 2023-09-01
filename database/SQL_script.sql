USE [master]
GO
/****** Object:  Database [TX_DB]    Script Date: 9/1/2023 4:02:19 AM ******/
CREATE DATABASE [TX_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TX_DB', FILENAME = N'F:\PROJECT\TeradeXpress\TX_DB\TX_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TX_DB_log', FILENAME = N'F:\PROJECT\TeradeXpress\TX_DB\TX_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TX_DB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TX_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TX_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TX_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TX_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TX_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TX_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TX_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TX_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TX_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TX_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TX_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TX_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TX_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TX_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TX_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TX_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TX_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TX_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TX_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TX_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TX_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TX_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TX_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TX_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [TX_DB] SET  MULTI_USER 
GO
ALTER DATABASE [TX_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TX_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TX_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TX_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TX_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TX_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TX_DB', N'ON'
GO
ALTER DATABASE [TX_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [TX_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TX_DB]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 9/1/2023 4:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[categoryID] [tinyint] NOT NULL,
	[categoryName] [nvarchar](50) NULL,
	[description] [nvarchar](100) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerEmployee]    Script Date: 9/1/2023 4:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerEmployee](
	[customerID] [nvarchar](50) NOT NULL,
	[employeeID] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerOrders]    Script Date: 9/1/2023 4:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrders](
	[orderID] [smallint] NOT NULL,
	[customerID] [nvarchar](50) NOT NULL,
	[column3] [nvarchar](1) NULL,
	[column4] [nvarchar](1) NULL,
	[column5] [nvarchar](1) NULL,
	[column6] [nvarchar](1) NULL,
 CONSTRAINT [PK_CustomerOrders] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/1/2023 4:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[customerID] [nvarchar](50) NOT NULL,
	[contactName] [nvarchar](50) NULL,
	[contactTitle] [nvarchar](50) NULL,
	[companyName] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 9/1/2023 4:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employeeID] [tinyint] NOT NULL,
	[employeeName] [nvarchar](50) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[country] [nvarchar](50) NOT NULL,
	[reportsTo] [tinyint] NULL,
	[managerID] [tinyint] NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 9/1/2023 4:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[orderID] [smallint] NOT NULL,
	[productID] [tinyint] NOT NULL,
	[quantity] [tinyint] NOT NULL,
	[discount] [float] NOT NULL,
 CONSTRAINT [PK_order_details] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/1/2023 4:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [smallint] NOT NULL,
	[orderDate] [date] NULL,
	[requiredDate] [date] NULL,
	[freight] [float] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 9/1/2023 4:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[productID] [tinyint] NOT NULL,
	[productName] [nvarchar](50) NULL,
	[quantityPerUnit] [nvarchar](50) NULL,
	[unitPrice] [float] NULL,
	[discontinued] [bit] NULL,
	[categoryID] [tinyint] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shippers]    Script Date: 9/1/2023 4:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shippers](
	[shipperID] [tinyint] NOT NULL,
	[companyName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_shippers] PRIMARY KEY CLUSTERED 
(
	[shipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 9/1/2023 4:02:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[shipperID] [tinyint] NOT NULL,
	[orderID] [smallint] NOT NULL,
	[customerID] [nvarchar](50) NOT NULL,
	[shippedDate] [date] NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[shipperID] ASC,
	[orderID] ASC,
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerEmployee]  WITH CHECK ADD  CONSTRAINT [FK_CustomerEmployee_Customers] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customers] ([customerID])
GO
ALTER TABLE [dbo].[CustomerEmployee] CHECK CONSTRAINT [FK_CustomerEmployee_Customers]
GO
ALTER TABLE [dbo].[CustomerEmployee]  WITH CHECK ADD  CONSTRAINT [FK_CustomerEmployee_employees] FOREIGN KEY([employeeID])
REFERENCES [dbo].[employees] ([employeeID])
GO
ALTER TABLE [dbo].[CustomerEmployee] CHECK CONSTRAINT [FK_CustomerEmployee_employees]
GO
ALTER TABLE [dbo].[CustomerOrders]  WITH CHECK ADD  CONSTRAINT [FK_CustomerOrders_Customers] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customers] ([customerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerOrders] CHECK CONSTRAINT [FK_CustomerOrders_Customers]
GO
ALTER TABLE [dbo].[CustomerOrders]  WITH CHECK ADD  CONSTRAINT [FK_CustomerOrders_Orders] FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[CustomerOrders] CHECK CONSTRAINT [FK_CustomerOrders_Orders]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_employees_employees] FOREIGN KEY([managerID])
REFERENCES [dbo].[employees] ([employeeID])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_employees_employees]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_Orders] FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_Orders]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_products] FOREIGN KEY([productID])
REFERENCES [dbo].[products] ([productID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_products]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_categories] FOREIGN KEY([categoryID])
REFERENCES [dbo].[categories] ([categoryID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_categories]
GO
ALTER TABLE [dbo].[Shipping]  WITH CHECK ADD  CONSTRAINT [FK_Shipping_Customers] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customers] ([customerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Shipping] CHECK CONSTRAINT [FK_Shipping_Customers]
GO
ALTER TABLE [dbo].[Shipping]  WITH CHECK ADD  CONSTRAINT [FK_Shipping_Orders] FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[Shipping] CHECK CONSTRAINT [FK_Shipping_Orders]
GO
ALTER TABLE [dbo].[Shipping]  WITH CHECK ADD  CONSTRAINT [FK_Shipping_shippers] FOREIGN KEY([shipperID])
REFERENCES [dbo].[shippers] ([shipperID])
GO
ALTER TABLE [dbo].[Shipping] CHECK CONSTRAINT [FK_Shipping_shippers]
GO
USE [master]
GO
ALTER DATABASE [TX_DB] SET  READ_WRITE 
GO
