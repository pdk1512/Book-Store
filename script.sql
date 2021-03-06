USE [master]
GO
/****** Object:  Database [BookStoreDB]    Script Date: 3/10/2021 2:33:20 PM ******/
CREATE DATABASE [BookStoreDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookStoreDB', FILENAME = N'D:\New folder\MSSQL15.SQLEXPRESS\MSSQL\DATA\BookStoreDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookStoreDB_log', FILENAME = N'D:\New folder\MSSQL15.SQLEXPRESS\MSSQL\DATA\BookStoreDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BookStoreDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookStoreDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookStoreDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookStoreDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookStoreDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookStoreDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookStoreDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookStoreDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BookStoreDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookStoreDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookStoreDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookStoreDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookStoreDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookStoreDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookStoreDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookStoreDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookStoreDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BookStoreDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookStoreDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookStoreDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookStoreDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookStoreDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookStoreDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookStoreDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookStoreDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookStoreDB] SET  MULTI_USER 
GO
ALTER DATABASE [BookStoreDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookStoreDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookStoreDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookStoreDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookStoreDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookStoreDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BookStoreDB] SET QUERY_STORE = OFF
GO
USE [BookStoreDB]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 3/10/2021 2:33:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NULL,
	[address] [nvarchar](150) NULL,
	[phone] [varchar](50) NULL,
	[gender] [varchar](10) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[isadmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/10/2021 2:33:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/10/2021 2:33:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](150) NULL,
	[category] [nvarchar](150) NULL,
	[price] [int] NULL,
	[amount] [int] NULL,
	[status] [varchar](50) NULL,
	[description] [nvarchar](150) NULL,
	[picture] [varchar](150) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([id], [name], [address], [phone], [gender], [username], [password], [isadmin]) VALUES (1, N'khanh', N'Hai Duong', N'0964810558', N'Male', N'khanhpd', N'151220', 1)
INSERT [dbo].[Accounts] ([id], [name], [address], [phone], [gender], [username], [password], [isadmin]) VALUES (2, N'Ninh', N'ChÆ°Æ¡ng Má»¹, HÃ  Ná»i', N'0988776332', N'Male', N'ninhtbm', N'ahihi', 0)
INSERT [dbo].[Accounts] ([id], [name], [address], [phone], [gender], [username], [password], [isadmin]) VALUES (3, N'Dung', N'Uong Bi, Quang Ninh', N'0987654322', N'Male', N'dungvq', N'kaka', 0)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (N'MG', N'Truyện tranh')
INSERT [dbo].[Category] ([id], [name]) VALUES (N'SGK', N'Sách giáo khoa')
INSERT [dbo].[Category] ([id], [name]) VALUES (N'SK', N'Sách khác')
INSERT [dbo].[Category] ([id], [name]) VALUES (N'TT', N'Tiểu thuyết')
GO
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'1', N'Harry Potter và Hòn đá phù thủy', N'TT', 200000, 100, N'new', N'Khi một lá thư được gởi đến cho cậu bé Harry Potter bình thường và bất hạnh, cậu khám phá ra một bí mật đã được che giấu suốt cả một thập kỉ.', N'images/hp1.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'10', N'One Piece Tập 75', N'MG', 20000, 100, N'new', N'One Piece, từng được xuất bản tại Việt Nam dưới tên gọi Đảo Hải Tặc là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro', N'images/op3.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'11', N'Thanh gươm diệt quỷ', N'MG', 20000, 100, N'new', N'Kimetsu no Yaiba là một bộ manga Nhật Bản của tác giả Gotōge Koyoharu', N'images/ds1.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'12', N'Hunter X Hunter', N'MG', 20000, 100, N'sale', N'Câu chuyện xoay quanh cuộc phiêu lưu của 4 nhân vật chính, đặc biệt là tình bạn giữa Gon và Killua.', N'images/hxh1.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'13', N'Naruto', N'MG', 20000, 100, N'sale', N'Chuyện xảy ra ở làng Lá với nhân vật chính là Naruto, học sinh trường đào tạo Ninja, chuyên đi quấy rối khắp làng!!', N'images/na1.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'14', N'Lịch Sử 11', N'SGK', 30000, 100, N'new', N'Sách giáo khoa phục vụ học tập', N'images/sgk1.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'15', N'Hóa học 12', N'SGK', 30000, 100, N'sale', N'Sách giáo khoa phục vụ học tập', N'images/sgk2.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'16', N'Tiếng Anh 9', N'SGK', 30000, 100, N'new', N'Sách giáo khoa phục vụ học tập', N'images/sgk3.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'17', N'Tin học 12', N'SGK', 20000, 100, N'new', N'Sách giáo khoa phục vụ học tập', N'images/sgk4.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'18', N'Charlies Darwin', N'SK', 100000, 100, N'sale', N'Sách khoa học ', N'images/sk.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'2', N'Harry Potter và Phòng chứa bí mật', N'TT', 250000, 100, N'new', N'Cha mẹ cậu chính là phù thủy và cả hai đã bị lời nguyền của Chúa tể Hắc ám ', N'images/hp2.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'3', N'Harry Potter và Tên tù ngục', N'TT', 260000, 100, N'sale', N'Thoát khỏi những người giám hộ Muggle không thể chịu đựng nổi để nhập học vào trường Hogwarts', N'images/hp3.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'4', N'Harry Potter và Chiếc cốc lửa', N'TT', 210000, 100, N'new', N'Harry tình cờ dấn thân vào một cuộc phiêu lưu đầy gai góc khi cậu phát hiện ra một con chó ba đầu đang canh giữ một căn phòng trên tầng ba', N'images/hp4.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'5', N'Harry Potter và Hội phượng hoàng', N'TT', 240000, 100, N'new', N'Harry nghe nói đến một viên đá bị mất tích sở hữu những sức mạnh lạ kì, rất quí giá, vô cùng nguy hiểm, mà cũng có thể là mang cả hai đặc điểm trên.', N'images/hp5.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'6', N'Harry Potter và Hoàng tử lai', N'TT', 250000, 100, N'sale', N'Đây là năm thứ 6 của Harry Potter tại trường Hogwarts', N'images/hp6.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'7', N'Harry Potter và Bảo bối tử thần', N'TT', 280000, 100, N'new', N'Hội Phượng Hoàng sắp đến hộ tống nó ra đi an toàn, gắng hết sức không để cho Voldemort và bọn tay chân hắn biết được', N'images/hp7.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'8', N'One Piece Tập 70', N'MG', 20000, 100, N'sale', N'One Piece, từng được xuất bản tại Việt Nam dưới tên gọi Đảo Hải Tặc là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro', N'images/op1.jpg')
INSERT [dbo].[Products] ([id], [name], [category], [price], [amount], [status], [description], [picture]) VALUES (N'9', N'One Piece Tập 71', N'MG', 20000, 100, N'new', N'One Piece, từng được xuất bản tại Việt Nam dưới tên gọi Đảo Hải Tặc là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro', N'images/op2.jpg')
GO
USE [master]
GO
ALTER DATABASE [BookStoreDB] SET  READ_WRITE 
GO
