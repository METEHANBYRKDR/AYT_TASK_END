USE [TlsDATAB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26.12.2023 23:21:38 ******/
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
/****** Object:  Table [dbo].[CustomerAddresses]    Script Date: 26.12.2023 23:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddresses](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[AddressType] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerAddresses] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 26.12.2023 23:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 26.12.2023 23:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[StockId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 26.12.2023 23:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderNo] [nvarchar](max) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[Tax] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DeliveryAddress] [nvarchar](max) NOT NULL,
	[InvoiceAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stocks]    Script Date: 26.12.2023 23:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stocks](
	[StockId] [int] IDENTITY(1,1) NOT NULL,
	[StockName] [nvarchar](max) NOT NULL,
	[Unit] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Stocks] PRIMARY KEY CLUSTERED 
(
	[StockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231225122631_Customer_Address', N'7.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231225125753_Customer_name_ekle', N'7.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231225131228_Order_OrderDetails', N'7.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231225131822_Order_OrderDetails2', N'7.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231225133007_InvoiceAndDelivery', N'7.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231225203824_CustomernameSil', N'7.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231225210323_StockTable1', N'7.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231226125013_MigrationDenemeStock', N'7.0.14')
GO
SET IDENTITY_INSERT [dbo].[CustomerAddresses] ON 

INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (1, 1, N'Ev', N'İstanbul', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (2, 2, N'İş', N'Ankara', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (7, 9, N'Okul', N'İstanbul', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (8, 3, N'Okul', N'İstanbul', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (9, 10, N'Ev', N'İstanbul', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (10, 11, N'Okul', N'İstanbul', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (11, 12, N'Okul', N'Ankara', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (12, 13, N'İş yeri', N'Adana', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (13, 14, N'İş yeri', N'Ankara', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (14, 15, N'İş yeri', N'İstanbul', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (15, 16, N'Ofis', N'İstanbul', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (16, 17, N'Ofis', N'Ankara', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (17, 18, N'Ofis', N'İstanbul', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (18, 19, N'Ev', N'İstanbul', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (19, 20, N'Galeri', N'İstanbul', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (20, 4, N'Galeri', N'Siirt', 1)
INSERT [dbo].[CustomerAddresses] ([AddressId], [CustomerId], [AddressType], [City], [IsActive]) VALUES (21, 21, N'İş yeri', N'İstanbul', 0)
SET IDENTITY_INSERT [dbo].[CustomerAddresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (1, N'MeteTLS', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (2, N'EmirTLS', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (3, N'EmreTLS', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (4, N'Ahmet Olcay', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (5, N'EyüpTLS', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (6, N'AhmetTLS', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (7, N'LeylaTLS', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (8, N'EyüpTLS1', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (9, N'EmreTLS5', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (10, N'BayrakdarTLS', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (11, N'Gizem', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (12, N'Emre', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (13, N'Emirhan', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (14, N'Cihan', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (15, N'TLSMANAGER', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (16, N'BayrakTLS', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (17, N'İshak', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (18, N'KeremTLS', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (19, N'SeyitTls', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (20, N'BuseTls', 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [IsActive]) VALUES (21, N'Leyla', 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (7, 1, CAST(N'2023-12-25T19:52:29.0612901' AS DateTime2), N'20231225195229', CAST(155.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'göktepe sokak', N'zafer mahallesi')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (8, 1, CAST(N'2023-12-25T22:17:45.6461347' AS DateTime2), N'20231225221745', CAST(155.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'muratpaşa mahallesi', N'zafer mahallesi')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (9, 1, CAST(N'2023-12-25T23:30:36.8123546' AS DateTime2), N'20231225233036', CAST(155.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'Adana Mahallesi', N'İstanbul Pendik Abdül Halik')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (10, 5, CAST(N'2023-12-25T23:42:43.3079306' AS DateTime2), N'20231225234243', CAST(155.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'asdfasdf', N'asdasd')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (11, 7, CAST(N'2023-12-26T19:20:14.3544932' AS DateTime2), N'20231226192014', CAST(155.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'muratpaşa mahallesi', N'zafer mahallesi')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (12, 1, CAST(N'2023-12-26T19:50:07.7019415' AS DateTime2), N'20231226195007', CAST(155.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'asdasdsad', N'aaasdas')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (13, 8, CAST(N'2023-12-26T21:19:12.8832621' AS DateTime2), N'20231226211912', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'asdads', N'asdf')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (14, 10, CAST(N'2023-12-26T21:29:22.7450033' AS DateTime2), N'20231226212922', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'Artvin', N'Adana')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (15, 11, CAST(N'2023-12-26T21:33:50.7991252' AS DateTime2), N'20231226213350', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'aa', N'aa')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (16, 12, CAST(N'2023-12-26T21:36:47.5273272' AS DateTime2), N'20231226213647', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'pendik', N'ankara')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (17, 13, CAST(N'2023-12-26T21:38:46.2072733' AS DateTime2), N'20231226213846', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'zafer mahallesi', N'zafer mahallesi')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (18, 14, CAST(N'2023-12-26T21:41:05.1146318' AS DateTime2), N'20231226214105', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'Adana', N'Adana')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (19, 15, CAST(N'2023-12-26T23:00:43.0210106' AS DateTime2), N'20231226230043', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'Ankara', N'Adana')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (20, 16, CAST(N'2023-12-26T23:01:56.6404976' AS DateTime2), N'20231226230156', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'Ankara', N'Artvin')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (21, 17, CAST(N'2023-12-26T23:03:08.8312680' AS DateTime2), N'20231226230308', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'zafer mahallesi', N'zafer mahallesi')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (22, 18, CAST(N'2023-12-26T23:04:32.7605328' AS DateTime2), N'20231226230432', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'Bayburt', N'Trabzon')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (23, 19, CAST(N'2023-12-26T23:05:31.4962520' AS DateTime2), N'20231226230531', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'Bolu', N'Adana')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (24, 20, CAST(N'2023-12-26T23:06:39.2916672' AS DateTime2), N'20231226230639', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'Adıyaman', N'Samsun')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (25, 4, CAST(N'2023-12-26T23:08:41.2342788' AS DateTime2), N'20231226230841', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'Siirt', N'Siirt')
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [OrderNo], [TotalPrice], [Tax], [IsActive], [DeliveryAddress], [InvoiceAddress]) VALUES (26, 21, CAST(N'2023-12-26T23:09:43.4490772' AS DateTime2), N'20231226230943', CAST(170.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, N'Ankara', N'zafer mahallesi')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Stocks] ON 

INSERT [dbo].[Stocks] ([StockId], [StockName], [Unit], [Price]) VALUES (1, N'TLS', 20, 150)
SET IDENTITY_INSERT [dbo].[Stocks] OFF
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [StockId]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [DeliveryAddress]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [InvoiceAddress]
GO
ALTER TABLE [dbo].[CustomerAddresses]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAddresses_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerAddresses] CHECK CONSTRAINT [FK_CustomerAddresses_Customers_CustomerId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Stocks_StockId] FOREIGN KEY([StockId])
REFERENCES [dbo].[Stocks] ([StockId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Stocks_StockId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers_CustomerId]
GO
/****** Object:  StoredProcedure [dbo].[FarkliAddress]    Script Date: 26.12.2023 23:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FarkliAddress]
AS
BEGIN
    SELECT c.CustomerId, c.CustomerName
    FROM Customers c
    INNER JOIN Orders o ON c.CustomerId = o.CustomerId
    WHERE o.IsActive = 1 -- Aktif siparişleri filtrele
      AND o.DeliveryAddress <> o.InvoiceAddress;
END;
GO
/****** Object:  StoredProcedure [dbo].[FazlaOrder]    Script Date: 26.12.2023 23:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FazlaOrder]
AS
BEGIN
    SELECT c.CustomerId, c.CustomerName, o.OrderId, od.Amount
    FROM Customers c
    INNER JOIN Orders o ON c.CustomerId = o.CustomerId
    INNER JOIN OrderDetails od ON o.OrderId = od.OrderId
    WHERE c.CustomerId IN (
        SELECT CustomerId
        FROM Orders
        GROUP BY CustomerId
        HAVING COUNT(OrderId) > 1
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[IstanbulSehirProcedure]    Script Date: 26.12.2023 23:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[IstanbulSehirProcedure]
AS
BEGIN
    SELECT COUNT(o.OrderId) AS IstanbulOrderCount
    FROM Orders o
    INNER JOIN CustomerAddresses ca ON o.CustomerId = ca.CustomerId
    WHERE ca.City = 'İstanbul';
END;
GO
/****** Object:  StoredProcedure [dbo].[TLSList]    Script Date: 26.12.2023 23:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TLSList]
AS
BEGIN
    SELECT o.*
    FROM Orders o
    INNER JOIN Customers c ON o.CustomerId = c.CustomerId
    WHERE c.CustomerName LIKE '%TLS%';
END;
GO
