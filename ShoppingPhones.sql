USE [ShoppingPhones]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 3/3/2024 12:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NOT NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 3/3/2024 12:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[orderId] [int] NULL,
	[productId] [int] NULL,
	[unitPrice] [money] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 3/3/2024 12:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[orderDate] [date] NULL,
	[totalPrice] [money] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 3/3/2024 12:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NOT NULL,
	[image] [varchar](250) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[id_category] [int] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/3/2024 12:31:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NOT NULL,
	[email] [varchar](250) NOT NULL,
	[phone] [varchar](15) NOT NULL,
	[password] [varchar](250) NOT NULL,
	[role] [varchar](5) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name]) VALUES (1, N'IPhone')
INSERT [dbo].[categories] ([id], [name]) VALUES (2, N'Samsung')
INSERT [dbo].[categories] ([id], [name]) VALUES (3, N'Oppo')
INSERT [dbo].[categories] ([id], [name]) VALUES (4, N'Xiaomi')
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
INSERT [dbo].[orderdetails] ([orderId], [productId], [unitPrice], [quantity]) VALUES (1, 4, 650.0000, 1)
INSERT [dbo].[orderdetails] ([orderId], [productId], [unitPrice], [quantity]) VALUES (1, 1, 500.0000, 2)
INSERT [dbo].[orderdetails] ([orderId], [productId], [unitPrice], [quantity]) VALUES (2, 1, 500.0000, 1)
INSERT [dbo].[orderdetails] ([orderId], [productId], [unitPrice], [quantity]) VALUES (3, 1, 500.0000, 1)
INSERT [dbo].[orderdetails] ([orderId], [productId], [unitPrice], [quantity]) VALUES (5, 5, 800.0000, 1)
INSERT [dbo].[orderdetails] ([orderId], [productId], [unitPrice], [quantity]) VALUES (6, 1581, 245.0000, 1)
INSERT [dbo].[orderdetails] ([orderId], [productId], [unitPrice], [quantity]) VALUES (6, 6, 520.0000, 2)
INSERT [dbo].[orderdetails] ([orderId], [productId], [unitPrice], [quantity]) VALUES (6, 1577, 546.0000, 2)
INSERT [dbo].[orderdetails] ([orderId], [productId], [unitPrice], [quantity]) VALUES (4, 1, 500.0000, 1)
INSERT [dbo].[orderdetails] ([orderId], [productId], [unitPrice], [quantity]) VALUES (6, 1579, 230.0000, 1)
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [userId], [orderDate], [totalPrice]) VALUES (1, 3, CAST(N'2023-12-23' AS Date), 1650.0000)
INSERT [dbo].[orders] ([id], [userId], [orderDate], [totalPrice]) VALUES (2, 3, CAST(N'2023-12-23' AS Date), 550.0000)
INSERT [dbo].[orders] ([id], [userId], [orderDate], [totalPrice]) VALUES (3, 3, CAST(N'2023-12-23' AS Date), 550.0000)
INSERT [dbo].[orders] ([id], [userId], [orderDate], [totalPrice]) VALUES (4, 3, CAST(N'2023-12-23' AS Date), 550.0000)
INSERT [dbo].[orders] ([id], [userId], [orderDate], [totalPrice]) VALUES (5, 3, CAST(N'2023-12-23' AS Date), 880.0000)
INSERT [dbo].[orders] ([id], [userId], [orderDate], [totalPrice]) VALUES (6, 3, CAST(N'2024-03-03' AS Date), 2867.7000)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (1, N'iPhone 15 Pro Max 256GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_3.png', 500, 0, 1, 1)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (2, N'iPhone 14 Pro Max 128GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-14-pro_2__5.png', 550, 5, 1, 1)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (3, N'Samsung Galaxy S24 Ultra 12GB 256GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/s/ss-s24-ultra-xam-222.png', 610, 10, 1, 2)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (4, N'Samsung Galaxy Z Flip5 512GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-z-flip-5-256gb_1_5.png', 650, 10, 1, 2)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (5, N'OPPO Reno10 5G 8GB 256GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/o/p/oppo-reno10..png', 800, 10, 1, 3)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (6, N'OPPO Find N3 16GB 512GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/i/find_n3_-_combo_product_-_gold.png', 520, 10, 1, 3)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (1576, N'Xiaomi Redmi Note 13 Pro Plus 5G 8GB 256GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/x/i/xiaomi-redmi-note-13-pro-plus_9_.png', 650, 21, 1, 4)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (1577, N'Xiaomi POCO X6 Pro 5G 8GB 256GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_22__6.png', 546, 14, 1, 4)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (1578, N'iPhone 15 Plus 256GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-plus-256gb_2.png', 234, 5, 1, 1)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (1579, N'Samsung Galaxy A05 4GB 128GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a05.png', 230, 30, 1, 2)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (1580, N'hu', N'dgfgd', 56, 656, 0, 3)
INSERT [dbo].[products] ([id], [name], [image], [price], [quantity], [status], [id_category]) VALUES (1581, N'OPPO Find N3 Flip 12GB 256GB', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/i/find-n3-flip-vang_1.png', 245, 123, 1, 3)
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [email], [phone], [password], [role]) VALUES (1, N'Lê Van Tèo', N'lvteo@gmail.com', N'0913333333', N'202cb962ac59075b964b07152d234b70', N'')
INSERT [dbo].[users] ([id], [name], [email], [phone], [password], [role]) VALUES (2, N'Tr?n Th? Út', N'ttut@gmail.com', N'0903333333', N'202cb962ac59075b964b07152d234b70', N'admin')
INSERT [dbo].[users] ([id], [name], [email], [phone], [password], [role]) VALUES (3, N'Minh', N'minh@gmail.com', N'0123456789', N'202cb962ac59075b964b07152d234b70', N'')
INSERT [dbo].[users] ([id], [name], [email], [phone], [password], [role]) VALUES (4, N'Kim Anh', N'kimanh3082@gmail.com', N'0869381823', N'202cb962ac59075b964b07152d234b70', N'')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[products] ADD  CONSTRAINT [DF__products__price__24927208]  DEFAULT ((0)) FOR [price]
GO
ALTER TABLE [dbo].[products] ADD  CONSTRAINT [DF__products__quanti__25869641]  DEFAULT ((0)) FOR [quantity]
GO
ALTER TABLE [dbo].[products] ADD  CONSTRAINT [DF__products__status__267ABA7A]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[products] ADD  CONSTRAINT [DF__products__id_cat__276EDEB3]  DEFAULT (NULL) FOR [id_category]
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FK_orderdetails_orders] FOREIGN KEY([orderId])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FK_orderdetails_orders]
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FK_orderdetails_products] FOREIGN KEY([productId])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FK_orderdetails_products]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([userId])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_categories] FOREIGN KEY([id_category])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_categories]
GO
