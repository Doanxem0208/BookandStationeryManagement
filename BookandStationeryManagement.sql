USE [BookandStationeryManagement]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [nvarchar](10) NOT NULL,
	[GID] [nvarchar](10) NULL,
	[Author] [nvarchar](50) NULL,
	[BookName] [nvarchar](50) NULL,
 CONSTRAINT [cBook_PK] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BookStore]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookStore](
	[BookStoreID] [nvarchar](10) NOT NULL,
	[BookStoreName] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[District] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[StreetNumber] [int] NULL,
 CONSTRAINT [cBookStore_PK] PRIMARY KEY CLUSTERED 
(
	[BookStoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [nvarchar](10) NOT NULL,
	[Mbs] [nvarchar](10) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[MbsDateDate] [date] NULL,
 CONSTRAINT [cCustomer_PK] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Edition]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Edition](
	[EditionID] [nvarchar](10) NOT NULL,
	[PubID] [nvarchar](10) NULL,
	[BkID] [nvarchar](10) NULL,
	[language] [nvarchar](50) NULL,
	[Edition] [int] NULL,
	[ISBN] [nvarchar](50) NULL,
	[Translator] [nvarchar](50) NULL,
 CONSTRAINT [cEdition_PK] PRIMARY KEY CLUSTERED 
(
	[EditionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [nvarchar](10) NOT NULL,
	[BSID] [nvarchar](10) NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[Shift] [nvarchar](11) NULL,
	[StartDate] [date] NULL,
	[Bonus] [decimal](2, 2) NULL,
	[Wage] [int] NULL,
 CONSTRAINT [cEmployee_PK] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genre]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreID] [nvarchar](10) NOT NULL,
	[ShellNumber] [int] NULL,
 CONSTRAINT [cGenre_PK] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportForm]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportForm](
	[ImportFormID] [nvarchar](10) NOT NULL,
	[BSID] [nvarchar](10) NULL,
	[ImportDate] [date] NULL,
	[TypeOfItem] [nvarchar](10) NULL,
 CONSTRAINT [cImportForm_PK] PRIMARY KEY CLUSTERED 
(
	[ImportFormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportInfo]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportInfo](
	[IFID] [nvarchar](10) NOT NULL,
	[IID] [nvarchar](10) NOT NULL,
	[ImportPrice] [int] NULL,
	[ImportQuantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemID] [nvarchar](10) NOT NULL,
	[OriginSellPrice] [int] NULL,
 CONSTRAINT [cItem_PK] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[MngEmpID] [nvarchar](10) NOT NULL,
	[BSID] [nvarchar](10) NOT NULL,
	[MngStartDate] [date] NULL,
	[ChangeReason] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Membership]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership](
	[Membership] [nvarchar](10) NOT NULL,
	[MbsDiscount] [decimal](2, 2) NULL,
 CONSTRAINT [cMembership_PK] PRIMARY KEY CLUSTERED 
(
	[Membership] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PublisherID] [nvarchar](10) NOT NULL,
	[PublisherName] [nvarchar](50) NULL,
	[Partnership] [nvarchar](50) NULL,
	[PartnershipStartDate] [date] NULL,
 CONSTRAINT [cPublisher_PK] PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ReceiptID] [nvarchar](10) NOT NULL,
	[CusID] [nvarchar](10) NULL,
	[BSID] [nvarchar](10) NULL,
	[SlID] [nvarchar](10) NULL,
	[TotalPrice] [int] NULL,
	[RDate] [date] NULL,
	[TypeOfItem] [nvarchar](10) NULL,
 CONSTRAINT [cReceipt_PK] PRIMARY KEY CLUSTERED 
(
	[ReceiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReceiptInfo]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptInfo](
	[RID] [nvarchar](10) NOT NULL,
	[IID] [nvarchar](10) NOT NULL,
	[FinalPrice] [int] NULL,
	[RQuantity] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sale]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[SaleID] [nvarchar](10) NOT NULL,
	[SaleDate] [date] NULL,
	[SaleReason] [nvarchar](100) NULL,
	[SaleDiscount] [decimal](2, 2) NULL,
 CONSTRAINT [cSale_PK] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stationery]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stationery](
	[StationeryID] [nvarchar](10) NOT NULL,
	[StationeryName] [nvarchar](50) NULL,
	[StationeryType] [nvarchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
 CONSTRAINT [cStationery_PK] PRIMARY KEY CLUSTERED 
(
	[StationeryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Store]    Script Date: 10/19/2022 2:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[IID] [nvarchar](10) NOT NULL,
	[BSID] [nvarchar](10) NOT NULL,
	[Quantity] [int] NULL,
	[StoreDate] [date] NULL,
	[DiscountForOld] [decimal](2, 2) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Book] ([BookID], [GID], [Author], [BookName]) VALUES (N'Bk00001', N'Gen002', N'Dan Brown', N'Da Vincis Code')
INSERT [dbo].[Book] ([BookID], [GID], [Author], [BookName]) VALUES (N'Bk00002', N'Gen001', N'Murakami', N'1Q84')
INSERT [dbo].[Book] ([BookID], [GID], [Author], [BookName]) VALUES (N'Bk00003', N'Gen003', N'Emily Bronte', N'Đồi Gió Hú')
INSERT [dbo].[BookStore] ([BookStoreID], [BookStoreName], [City], [District], [Street], [StreetNumber]) VALUES (N'NS001', N'Nhà Sách Phú Nhuận', N'Hồ Chí Minh', N'Phú Nhuận', N'Phan Đình Phùng', 201)
INSERT [dbo].[BookStore] ([BookStoreID], [BookStoreName], [City], [District], [Street], [StreetNumber]) VALUES (N'NS002', N'Nhà Sách Tân Bình', N'Hồ Chí Minh', N'Tân Bình', N'Trường Chinh', 364)
INSERT [dbo].[BookStore] ([BookStoreID], [BookStoreName], [City], [District], [Street], [StreetNumber]) VALUES (N'NS003', N'Nhà Sách Tân Thành', N'Hồ Chí Minh', N'Tân Phú', N'Âu Cơ', 685)
INSERT [dbo].[BookStore] ([BookStoreID], [BookStoreName], [City], [District], [Street], [StreetNumber]) VALUES (N'NS004', N'Nhà Sách Miền Đông', N'Hồ Chí Minh', N'Bình Thạnh', N'Lê Văn Duyệt', 116)
INSERT [dbo].[Customer] ([CustomerID], [Mbs], [CustomerName], [MbsDateDate]) VALUES (N'Cus00001', N'Gold', N'Nguyen Van A', CAST(0x953A0B00 AS Date))
INSERT [dbo].[Customer] ([CustomerID], [Mbs], [CustomerName], [MbsDateDate]) VALUES (N'Cus00002', N'Silver', N'Tran Van B', CAST(0x52380B00 AS Date))
INSERT [dbo].[Customer] ([CustomerID], [Mbs], [CustomerName], [MbsDateDate]) VALUES (N'Cus00003', N'Platinum', N'Nguyen Thi C', CAST(0x233F0B00 AS Date))
INSERT [dbo].[Edition] ([EditionID], [PubID], [BkID], [language], [Edition], [ISBN], [Translator]) VALUES (N'B00001', N'Pub01', N'Bk00001', N'Tiếng Anh', 3, N'0-385-50420-9', N'Hà Mai Anh')
INSERT [dbo].[Edition] ([EditionID], [PubID], [BkID], [language], [Edition], [ISBN], [Translator]) VALUES (N'B00002', N'Pub01', N'Bk00002', N'Tiếng Việt', 7, N'0-593-05244-7', N'Hàn Giang Nhạn')
INSERT [dbo].[Edition] ([EditionID], [PubID], [BkID], [language], [Edition], [ISBN], [Translator]) VALUES (N'B00003', N'Pub02', N'Bk00003', N'Tiếng Việt', 4, N'1-4000-7917-9 ', N'Hoàng Hữu Đản')
INSERT [dbo].[Employee] ([EmployeeID], [BSID], [EmployeeName], [Shift], [StartDate], [Bonus], [Wage]) VALUES (N'Emp001', N'NS001', N'Nguyen Van Tinh', N'7h00-17h00', CAST(0xB6410B00 AS Date), CAST(0.10 AS Decimal(2, 2)), 630000)
INSERT [dbo].[Employee] ([EmployeeID], [BSID], [EmployeeName], [Shift], [StartDate], [Bonus], [Wage]) VALUES (N'Emp002', N'NS001', N'Dao Khac Nhien', N'7h00–17h00', CAST(0x48400B00 AS Date), CAST(0.10 AS Decimal(2, 2)), 840000)
INSERT [dbo].[Employee] ([EmployeeID], [BSID], [EmployeeName], [Shift], [StartDate], [Bonus], [Wage]) VALUES (N'Emp003', N'NS002', N'Ha Dat Tung', N'12h00–21h00', CAST(0x9F3E0B00 AS Date), CAST(0.30 AS Decimal(2, 2)), 840000)
INSERT [dbo].[Employee] ([EmployeeID], [BSID], [EmployeeName], [Shift], [StartDate], [Bonus], [Wage]) VALUES (N'Emp004', N'NS002', N'Vo Quoc Anh', N'12h00–21h00', CAST(0x533C0B00 AS Date), CAST(0.30 AS Decimal(2, 2)), 840000)
INSERT [dbo].[Employee] ([EmployeeID], [BSID], [EmployeeName], [Shift], [StartDate], [Bonus], [Wage]) VALUES (N'Emp005', N'NS003', N'Pham Duy Khang', N'12h00–21h00', CAST(0xDB3E0B00 AS Date), NULL, 420000)
INSERT [dbo].[Employee] ([EmployeeID], [BSID], [EmployeeName], [Shift], [StartDate], [Bonus], [Wage]) VALUES (N'Emp006', N'NS003', N'Duong Qua', N'17h00–21h00', CAST(0x533C0B00 AS Date), NULL, 420000)
INSERT [dbo].[Employee] ([EmployeeID], [BSID], [EmployeeName], [Shift], [StartDate], [Bonus], [Wage]) VALUES (N'Emp007', N'NS004', N'Nguyen Van A', N'7h00–17h00', CAST(0x533C0B00 AS Date), CAST(0.20 AS Decimal(2, 2)), 1050000)
INSERT [dbo].[Genre] ([GenreID], [ShellNumber]) VALUES (N'Gen001', 1)
INSERT [dbo].[Genre] ([GenreID], [ShellNumber]) VALUES (N'Gen002', 2)
INSERT [dbo].[Genre] ([GenreID], [ShellNumber]) VALUES (N'Gen003', 3)
INSERT [dbo].[ImportForm] ([ImportFormID], [BSID], [ImportDate], [TypeOfItem]) VALUES (N'IF00001', N'NS002', CAST(0xE0420B00 AS Date), N'Book')
INSERT [dbo].[ImportForm] ([ImportFormID], [BSID], [ImportDate], [TypeOfItem]) VALUES (N'IF00002', N'NS004', CAST(0x94410B00 AS Date), N'Book')
INSERT [dbo].[ImportForm] ([ImportFormID], [BSID], [ImportDate], [TypeOfItem]) VALUES (N'IF00003', N'NS003', CAST(0xF9420B00 AS Date), N'Stationery')
INSERT [dbo].[ImportForm] ([ImportFormID], [BSID], [ImportDate], [TypeOfItem]) VALUES (N'IF00004', N'NS001', CAST(0xE23D0B00 AS Date), N'Book')
INSERT [dbo].[ImportInfo] ([IFID], [IID], [ImportPrice], [ImportQuantity]) VALUES (N'IF00001', N'B00001', 34000, 10)
INSERT [dbo].[ImportInfo] ([IFID], [IID], [ImportPrice], [ImportQuantity]) VALUES (N'IF00001', N'B00003', 45000, 24)
INSERT [dbo].[ImportInfo] ([IFID], [IID], [ImportPrice], [ImportQuantity]) VALUES (N'IF00002', N'B00002', 50000, 7)
INSERT [dbo].[ImportInfo] ([IFID], [IID], [ImportPrice], [ImportQuantity]) VALUES (N'IF00003', N'S00001', 7000, 40)
INSERT [dbo].[ImportInfo] ([IFID], [IID], [ImportPrice], [ImportQuantity]) VALUES (N'IF00003', N'S00002', 40000, 40)
INSERT [dbo].[ImportInfo] ([IFID], [IID], [ImportPrice], [ImportQuantity]) VALUES (N'IF00004', N'B00001', 34000, 10)
INSERT [dbo].[ImportInfo] ([IFID], [IID], [ImportPrice], [ImportQuantity]) VALUES (N'IF00004', N'B00002', 90000, 30)
INSERT [dbo].[ImportInfo] ([IFID], [IID], [ImportPrice], [ImportQuantity]) VALUES (N'IF00004', N'B00003', 45000, 12)
INSERT [dbo].[Item] ([ItemID], [OriginSellPrice]) VALUES (N'B00001', 20000)
INSERT [dbo].[Item] ([ItemID], [OriginSellPrice]) VALUES (N'B00002', 23000)
INSERT [dbo].[Item] ([ItemID], [OriginSellPrice]) VALUES (N'B00003', 134000)
INSERT [dbo].[Item] ([ItemID], [OriginSellPrice]) VALUES (N'S00001', 500000)
INSERT [dbo].[Item] ([ItemID], [OriginSellPrice]) VALUES (N'S00002', 50000)
INSERT [dbo].[Manager] ([MngEmpID], [BSID], [MngStartDate], [ChangeReason]) VALUES (N'Emp002', N'NS001', CAST(0x23430B00 AS Date), N'Về hưu')
INSERT [dbo].[Manager] ([MngEmpID], [BSID], [MngStartDate], [ChangeReason]) VALUES (N'Emp003', N'NS002', CAST(0x643F0B00 AS Date), N'Nghỉ việc')
INSERT [dbo].[Manager] ([MngEmpID], [BSID], [MngStartDate], [ChangeReason]) VALUES (N'Emp005', N'NS003', CAST(0x17410B00 AS Date), N'Về hưu')
INSERT [dbo].[Manager] ([MngEmpID], [BSID], [MngStartDate], [ChangeReason]) VALUES (N'Emp007', N'NS004', CAST(0xB9420B00 AS Date), N'Giáng chức')
INSERT [dbo].[Membership] ([Membership], [MbsDiscount]) VALUES (N'Bronze', CAST(0.05 AS Decimal(2, 2)))
INSERT [dbo].[Membership] ([Membership], [MbsDiscount]) VALUES (N'Gold', CAST(0.10 AS Decimal(2, 2)))
INSERT [dbo].[Membership] ([Membership], [MbsDiscount]) VALUES (N'Platinum', CAST(0.15 AS Decimal(2, 2)))
INSERT [dbo].[Membership] ([Membership], [MbsDiscount]) VALUES (N'Silver', CAST(0.07 AS Decimal(2, 2)))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Partnership], [PartnershipStartDate]) VALUES (N'Pub01', N'Kim Đồng', N'Đối tác lâu năm', CAST(0x71380B00 AS Date))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Partnership], [PartnershipStartDate]) VALUES (N'Pub02', N'IBM', N'Đối tác mới', CAST(0x35380B00 AS Date))
INSERT [dbo].[Receipt] ([ReceiptID], [CusID], [BSID], [SlID], [TotalPrice], [RDate], [TypeOfItem]) VALUES (N'Rp00001', N'Cus00001', N'NS001', N'Sa001', 1617800, CAST(0x22430B00 AS Date), N'Book')
INSERT [dbo].[Receipt] ([ReceiptID], [CusID], [BSID], [SlID], [TotalPrice], [RDate], [TypeOfItem]) VALUES (N'Rp00002', N'Cus00001', N'NS004', NULL, 162000, CAST(0x25430B00 AS Date), N'Book')
INSERT [dbo].[Receipt] ([ReceiptID], [CusID], [BSID], [SlID], [TotalPrice], [RDate], [TypeOfItem]) VALUES (N'Rp00003', N'Cus00002', N'NS003', NULL, 7692000, CAST(0x4C430B00 AS Date), N'Stationery')
INSERT [dbo].[Receipt] ([ReceiptID], [CusID], [BSID], [SlID], [TotalPrice], [RDate], [TypeOfItem]) VALUES (N'Rp00004', N'Cus00001', N'NS001', N'Sa002', 3696000, CAST(0x22430B00 AS Date), N'Stationery')
INSERT [dbo].[Receipt] ([ReceiptID], [CusID], [BSID], [SlID], [TotalPrice], [RDate], [TypeOfItem]) VALUES (N'Rp00005', N'Cus00003', N'NS002', NULL, 85000, CAST(0x67420B00 AS Date), N'Book')
INSERT [dbo].[ReceiptInfo] ([RID], [IID], [FinalPrice], [RQuantity]) VALUES (N'Rp00001', N'B00002', 9200, 19)
INSERT [dbo].[ReceiptInfo] ([RID], [IID], [FinalPrice], [RQuantity]) VALUES (N'Rp00001', N'B00003', 67000, 21)
INSERT [dbo].[ReceiptInfo] ([RID], [IID], [FinalPrice], [RQuantity]) VALUES (N'Rp00001', N'B00001', 12000, 3)
INSERT [dbo].[ReceiptInfo] ([RID], [IID], [FinalPrice], [RQuantity]) VALUES (N'Rp00002', N'B00001', 18000, 9)
INSERT [dbo].[ReceiptInfo] ([RID], [IID], [FinalPrice], [RQuantity]) VALUES (N'Rp00003', N'S00001', 465000, 16)
INSERT [dbo].[ReceiptInfo] ([RID], [IID], [FinalPrice], [RQuantity]) VALUES (N'Rp00003', N'S00002', 36000, 7)
INSERT [dbo].[ReceiptInfo] ([RID], [IID], [FinalPrice], [RQuantity]) VALUES (N'Rp00004', N'S00001', 330000, 11)
INSERT [dbo].[ReceiptInfo] ([RID], [IID], [FinalPrice], [RQuantity]) VALUES (N'Rp00004', N'S00002', 33000, 2)
INSERT [dbo].[ReceiptInfo] ([RID], [IID], [FinalPrice], [RQuantity]) VALUES (N'Rp00005', N'B00001', 17000, 5)
INSERT [dbo].[Sale] ([SaleID], [SaleDate], [SaleReason], [SaleDiscount]) VALUES (N'Sa001', CAST(0x42430B00 AS Date), N'Vietnamese Teachers Day', CAST(0.30 AS Decimal(2, 2)))
INSERT [dbo].[Sale] ([SaleID], [SaleDate], [SaleReason], [SaleDiscount]) VALUES (N'Sa002', CAST(0x22430B00 AS Date), N'Vietnamese Womens Day', CAST(0.24 AS Decimal(2, 2)))
INSERT [dbo].[Sale] ([SaleID], [SaleDate], [SaleReason], [SaleDiscount]) VALUES (N'Sa003', CAST(0x2D430B00 AS Date), N'Halloween', CAST(0.50 AS Decimal(2, 2)))
INSERT [dbo].[Stationery] ([StationeryID], [StationeryName], [StationeryType], [Manufacturer]) VALUES (N'S00001', N'Compa', N'Dụng cụ học tập', N'ABC Company')
INSERT [dbo].[Stationery] ([StationeryID], [StationeryName], [StationeryType], [Manufacturer]) VALUES (N'S00002', N'Bút', N'Dụng cụ học tập', N'Công ty B')
INSERT [dbo].[Store] ([IID], [BSID], [Quantity], [StoreDate], [DiscountForOld]) VALUES (N'B00001', N'NS001', 100, CAST(0x1D430B00 AS Date), CAST(0.00 AS Decimal(2, 2)))
INSERT [dbo].[Store] ([IID], [BSID], [Quantity], [StoreDate], [DiscountForOld]) VALUES (N'B00002', N'NS002', 231, CAST(0x07430B00 AS Date), CAST(0.00 AS Decimal(2, 2)))
INSERT [dbo].[Store] ([IID], [BSID], [Quantity], [StoreDate], [DiscountForOld]) VALUES (N'B00002', N'NS001', 94, CAST(0x42420B00 AS Date), CAST(0.20 AS Decimal(2, 2)))
INSERT [dbo].[Store] ([IID], [BSID], [Quantity], [StoreDate], [DiscountForOld]) VALUES (N'S00001', N'NS003', 45, CAST(0x18430B00 AS Date), CAST(0.00 AS Decimal(2, 2)))
INSERT [dbo].[Store] ([IID], [BSID], [Quantity], [StoreDate], [DiscountForOld]) VALUES (N'S00002', N'NS004', 44, CAST(0x66420B00 AS Date), CAST(0.23 AS Decimal(2, 2)))
INSERT [dbo].[Store] ([IID], [BSID], [Quantity], [StoreDate], [DiscountForOld]) VALUES (N'S00002', N'NS003', 76, CAST(0x76420B00 AS Date), CAST(0.21 AS Decimal(2, 2)))
INSERT [dbo].[Store] ([IID], [BSID], [Quantity], [StoreDate], [DiscountForOld]) VALUES (N'B00003', N'NS001', 24, CAST(0x78420B00 AS Date), CAST(0.10 AS Decimal(2, 2)))
SET ANSI_PADDING ON

GO
/****** Object:  Index [cImportInfo_PK]    Script Date: 10/19/2022 2:58:16 PM ******/
ALTER TABLE [dbo].[ImportInfo] ADD  CONSTRAINT [cImportInfo_PK] PRIMARY KEY NONCLUSTERED 
(
	[IFID] ASC,
	[IID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [cManager_PK]    Script Date: 10/19/2022 2:58:16 PM ******/
ALTER TABLE [dbo].[Manager] ADD  CONSTRAINT [cManager_PK] PRIMARY KEY NONCLUSTERED 
(
	[MngEmpID] ASC,
	[BSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [cReceiptInfo_PK]    Script Date: 10/19/2022 2:58:16 PM ******/
ALTER TABLE [dbo].[ReceiptInfo] ADD  CONSTRAINT [cReceiptInfo_PK] PRIMARY KEY NONCLUSTERED 
(
	[RID] ASC,
	[IID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [cStore_PK]    Script Date: 10/19/2022 2:58:16 PM ******/
ALTER TABLE [dbo].[Store] ADD  CONSTRAINT [cStore_PK] PRIMARY KEY NONCLUSTERED 
(
	[IID] ASC,
	[BSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [cBook_GID_FK] FOREIGN KEY([GID])
REFERENCES [dbo].[Genre] ([GenreID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [cBook_GID_FK]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [cCustomer_Mbs_FK] FOREIGN KEY([Mbs])
REFERENCES [dbo].[Membership] ([Membership])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [cCustomer_Mbs_FK]
GO
ALTER TABLE [dbo].[Edition]  WITH CHECK ADD  CONSTRAINT [cEdition_BkID_FK] FOREIGN KEY([BkID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[Edition] CHECK CONSTRAINT [cEdition_BkID_FK]
GO
ALTER TABLE [dbo].[Edition]  WITH CHECK ADD  CONSTRAINT [cEdition_EditionID_FK] FOREIGN KEY([EditionID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[Edition] CHECK CONSTRAINT [cEdition_EditionID_FK]
GO
ALTER TABLE [dbo].[Edition]  WITH CHECK ADD  CONSTRAINT [cEdition_PubID_FK] FOREIGN KEY([PubID])
REFERENCES [dbo].[Publisher] ([PublisherID])
GO
ALTER TABLE [dbo].[Edition] CHECK CONSTRAINT [cEdition_PubID_FK]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [cEmployee_BSID_FK] FOREIGN KEY([BSID])
REFERENCES [dbo].[BookStore] ([BookStoreID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [cEmployee_BSID_FK]
GO
ALTER TABLE [dbo].[ImportForm]  WITH CHECK ADD  CONSTRAINT [cImportForm_BSID_FK] FOREIGN KEY([BSID])
REFERENCES [dbo].[BookStore] ([BookStoreID])
GO
ALTER TABLE [dbo].[ImportForm] CHECK CONSTRAINT [cImportForm_BSID_FK]
GO
ALTER TABLE [dbo].[ImportInfo]  WITH CHECK ADD  CONSTRAINT [cImportInfo_IFID_FK] FOREIGN KEY([IFID])
REFERENCES [dbo].[ImportForm] ([ImportFormID])
GO
ALTER TABLE [dbo].[ImportInfo] CHECK CONSTRAINT [cImportInfo_IFID_FK]
GO
ALTER TABLE [dbo].[ImportInfo]  WITH CHECK ADD  CONSTRAINT [cImportInfo_IID_FK] FOREIGN KEY([IID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[ImportInfo] CHECK CONSTRAINT [cImportInfo_IID_FK]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [cManager_BSIDID_FK] FOREIGN KEY([BSID])
REFERENCES [dbo].[BookStore] ([BookStoreID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [cManager_BSIDID_FK]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [cManager_MngEmpID_FK] FOREIGN KEY([MngEmpID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [cManager_MngEmpID_FK]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [cReceipt_BSID_FK] FOREIGN KEY([BSID])
REFERENCES [dbo].[BookStore] ([BookStoreID])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [cReceipt_BSID_FK]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [cReceipt_CusID_FK] FOREIGN KEY([CusID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [cReceipt_CusID_FK]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [cReceipt_SlID_FK] FOREIGN KEY([SlID])
REFERENCES [dbo].[Sale] ([SaleID])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [cReceipt_SlID_FK]
GO
ALTER TABLE [dbo].[ReceiptInfo]  WITH CHECK ADD  CONSTRAINT [cReceiptInfo_IID_FK] FOREIGN KEY([IID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[ReceiptInfo] CHECK CONSTRAINT [cReceiptInfo_IID_FK]
GO
ALTER TABLE [dbo].[ReceiptInfo]  WITH CHECK ADD  CONSTRAINT [cReceiptInfo_RID_FK] FOREIGN KEY([RID])
REFERENCES [dbo].[Receipt] ([ReceiptID])
GO
ALTER TABLE [dbo].[ReceiptInfo] CHECK CONSTRAINT [cReceiptInfo_RID_FK]
GO
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [cStationery_StationeryID_FK] FOREIGN KEY([StationeryID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [cStationery_StationeryID_FK]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [cStore_BSID_FK] FOREIGN KEY([BSID])
REFERENCES [dbo].[BookStore] ([BookStoreID])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [cStore_BSID_FK]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [cStore_IID_FK] FOREIGN KEY([IID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [cStore_IID_FK]
GO
ALTER TABLE [dbo].[Edition]  WITH CHECK ADD  CONSTRAINT [cEdition_Edition_check] CHECK  (([Edition]>=(1)))
GO
ALTER TABLE [dbo].[Edition] CHECK CONSTRAINT [cEdition_Edition_check]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [cEmployee_Wage_Check] CHECK  (([Wage]>=(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [cEmployee_Wage_Check]
GO
ALTER TABLE [dbo].[ImportForm]  WITH CHECK ADD  CONSTRAINT [cImportForm_TypeOfItem_Check] CHECK  (([TypeOfItem]=N'Book' OR [TypeOfItem]=N'Stationery'))
GO
ALTER TABLE [dbo].[ImportForm] CHECK CONSTRAINT [cImportForm_TypeOfItem_Check]
GO
ALTER TABLE [dbo].[ImportInfo]  WITH CHECK ADD  CONSTRAINT [cImportInfo_ImportPrice_Check] CHECK  (([ImportPrice]>(0)))
GO
ALTER TABLE [dbo].[ImportInfo] CHECK CONSTRAINT [cImportInfo_ImportPrice_Check]
GO
ALTER TABLE [dbo].[ImportInfo]  WITH CHECK ADD  CONSTRAINT [cImportInfo_ImportQuantity_Check] CHECK  (([ImportQuantity]>(0)))
GO
ALTER TABLE [dbo].[ImportInfo] CHECK CONSTRAINT [cImportInfo_ImportQuantity_Check]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [cItem_OriginSellPrice_Check] CHECK  (([OriginSellPrice]>(0)))
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [cItem_OriginSellPrice_Check]
GO
ALTER TABLE [dbo].[Membership]  WITH CHECK ADD  CONSTRAINT [cMembership_MbsDiscount_Check] CHECK  (([MbsDiscount]>=(0) AND [MbsDiscount]<(1)))
GO
ALTER TABLE [dbo].[Membership] CHECK CONSTRAINT [cMembership_MbsDiscount_Check]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [cReceipt_TotalPrice_Check] CHECK  (([TotalPrice]>(0)))
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [cReceipt_TotalPrice_Check]
GO
ALTER TABLE [dbo].[ReceiptInfo]  WITH CHECK ADD  CONSTRAINT [cReceiptInfo_FinalPrice_Check] CHECK  (([FinalPrice]>(0)))
GO
ALTER TABLE [dbo].[ReceiptInfo] CHECK CONSTRAINT [cReceiptInfo_FinalPrice_Check]
GO
ALTER TABLE [dbo].[ReceiptInfo]  WITH CHECK ADD  CONSTRAINT [cReceiptInfo_RQuantity_Check] CHECK  (([RQuantity]>(0)))
GO
ALTER TABLE [dbo].[ReceiptInfo] CHECK CONSTRAINT [cReceiptInfo_RQuantity_Check]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [cSale_SaleDiscount_Check] CHECK  (([SaleDiscount]>=(0) AND [SaleDiscount]<(1)))
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [cSale_SaleDiscount_Check]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [cStore_DiscountForOld_Check] CHECK  (([DiscountForOld]>=(0) AND [DiscountForOld]<(1)))
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [cStore_DiscountForOld_Check]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [cStore_Quantity_Check] CHECK  (([Quantity]>=(0)))
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [cStore_Quantity_Check]
GO
