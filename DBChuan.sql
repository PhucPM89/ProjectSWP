USE [SWP391]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](255) NULL,
	[email] [nvarchar](50) NULL,
	[reset_code] [nvarchar](50) NULL,
	[reset_code_created_at] [datetime] NULL,
	[transaction_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[attendance_id] [int] IDENTITY(1,1) NOT NULL,
	[shift_id] [int] NULL,
	[attendance_status] [nvarchar](20) NULL,
	[working_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[attendance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](50) NULL,
	[customer_name] [nvarchar](100) NULL,
	[customer_phone] [nvarchar](20) NULL,
	[tableName] [nvarchar](50) NULL,
	[checkoutTime] [datetime] NULL,
	[discountPercent] [decimal](5, 2) NULL,
	[promoCode] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[phone_number] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[discount_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[discount_percentage] [decimal](5, 2) NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[discount_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](255) NULL,
	[reset_code] [nvarchar](50) NULL,
	[reset_code_created_at] [datetime] NULL,
	[phone_number] [nvarchar](20) NULL,
	[employment_status] [nvarchar](20) NULL,
	[active] [bit] NULL,
	[hourly_wage_rate] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cart_id] [int] NULL,
	[product_id] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[quantity] [int] NULL,
	[price] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[table_id] [int] NULL,
	[customer_id] [int] NULL,
	[total_amount] [decimal](10, 2) NULL,
	[discount_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[payment_method] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](255) NULL,
	[price] [decimal](10, 2) NULL,
	[stock_quantity] [int] NULL,
	[category_id] [int] NULL,
	[image] [nvarchar](200) NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Revenue]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revenue](
	[date] [date] NOT NULL,
	[total_revenue] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salaries]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salaries](
	[salary_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NULL,
	[total_salary] [decimal](10, 2) NULL,
	[total_hours_worked] [decimal](10, 2) NULL,
	[month_year] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[salary_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShiftPatterns]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftPatterns](
	[pattern_id] [int] IDENTITY(1,1) NOT NULL,
	[pattern_name] [nvarchar](50) NULL,
	[start_time] [time](7) NULL,
	[end_time] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[pattern_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tables]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[table_id] [int] IDENTITY(1,1) NOT NULL,
	[qr_code] [nvarchar](255) NULL,
	[table_name] [nvarchar](20) NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[table_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[qr_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionHistory]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionHistory](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[employee_id] [int] NULL,
	[transaction_amount] [decimal](10, 2) NULL,
	[transaction_type] [nvarchar](50) NULL,
	[transaction_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkShifts]    Script Date: 7/9/2024 12:20:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkShifts](
	[shift_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NULL,
	[pattern_id] [int] NULL,
	[start_amount] [decimal](10, 2) NULL,
	[end_amount] [decimal](10, 2) NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[shift_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_WorkShifts] UNIQUE NONCLUSTERED 
(
	[employee_id] ASC,
	[pattern_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[WorkShifts] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD  CONSTRAINT [FK_Admin_TransactionHistory] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[TransactionHistory] ([transaction_id])
GO
ALTER TABLE [dbo].[Admins] CHECK CONSTRAINT [FK_Admin_TransactionHistory]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK__Attendanc__shift__0C1BC9F9] FOREIGN KEY([shift_id])
REFERENCES [dbo].[WorkShifts] ([shift_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK__Attendanc__shift__0C1BC9F9]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([cart_id])
REFERENCES [dbo].[Carts] ([id])
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([customer_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([discount_id])
REFERENCES [dbo].[Discounts] ([discount_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([table_id])
REFERENCES [dbo].[Tables] ([table_id])
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Salaries]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[Employees] ([employee_id])
GO
ALTER TABLE [dbo].[TransactionHistory]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[Employees] ([employee_id])
GO
ALTER TABLE [dbo].[TransactionHistory]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[TransactionHistory]  WITH CHECK ADD  CONSTRAINT [FK_TransactionHistory_Revenue] FOREIGN KEY([transaction_date])
REFERENCES [dbo].[Revenue] ([date])
GO
ALTER TABLE [dbo].[TransactionHistory] CHECK CONSTRAINT [FK_TransactionHistory_Revenue]
GO
ALTER TABLE [dbo].[WorkShifts]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[Employees] ([employee_id])
GO
ALTER TABLE [dbo].[WorkShifts]  WITH CHECK ADD FOREIGN KEY([pattern_id])
REFERENCES [dbo].[ShiftPatterns] ([pattern_id])
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [CK_Attendance_Status] CHECK  (([attendance_status]=N'Vắng mặt' OR [attendance_status]=N'Có mặt' OR [attendance_status]=N'Muộn'))
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [CK_Attendance_Status]
GO
ALTER TABLE [dbo].[Discounts]  WITH CHECK ADD  CONSTRAINT [CK__Discounts__disco__7720AD13] CHECK  (([discount_percentage]>=(0) AND [discount_percentage]<=(100)))
GO
ALTER TABLE [dbo].[Discounts] CHECK CONSTRAINT [CK__Discounts__disco__7720AD13]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [CK__Employees__emplo__58671BC9] CHECK  (([employment_status]=N'đã nghỉ việc' OR [employment_status]=N'đang làm việc'))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [CK__Employees__emplo__58671BC9]
GO

SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([category_id], [name]) VALUES (1, N'HAMBURGER')
INSERT [dbo].[Categories] ([category_id], [name]) VALUES (2, N'GÀ RÁN')
INSERT [dbo].[Categories] ([category_id], [name]) VALUES (3, N'KHOAI TÂY CHIÊN')
INSERT [dbo].[Categories] ([category_id], [name]) VALUES (4, N'PIZZA')
INSERT [dbo].[Categories] ([category_id], [name]) VALUES (5, N'SANDWICH')
INSERT [dbo].[Categories] ([category_id], [name]) VALUES (6, N'BREAD')
INSERT [dbo].[Categories] ([category_id], [name]) VALUES (7, N'CƠM CHIÊN')
INSERT [dbo].[Categories] ([category_id], [name]) VALUES (10, N'NƯỚC')
SET IDENTITY_INSERT [dbo].[Categories] OFF

SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (1, N'HAMBURGER 1', N'Hamburger kẹp thịt xay ở giữa, xen kẽ lát cà chua và rau salad. Miếng thịt có thể được hun khói thơm phức.', CAST(30.00 AS Decimal(10, 2)), 29, 1, N'assets/img/food/ham1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (2, N'HAMBURGER 2', N'Hamburger kẹp thịt xay ở giữa, xen kẽ lát cà chua và rau salad. Miếng thịt có thể được hun khói thơm phức.', CAST(30.00 AS Decimal(10, 2)), 29, 1, N'assets/img/food/ham1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (3, N'HAMBURGER 3', N'Hamburger kẹp thịt xay ở giữa, xen kẽ lát cà chua và rau salad. Miếng thịt có thể được hun khói thơm phức.', CAST(30.00 AS Decimal(10, 2)), 29, 1, N'assets/img/food/ham2.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (4, N'HAMBURGER 4', N'Hamburger kẹp thịt xay ở giữa, xen kẽ lát cà chua và rau salad. Miếng thịt có thể được hun khói thơm phức.', CAST(30.00 AS Decimal(10, 2)), 30, 1, N'assets/img/food/ham2.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (5, N'HAMBURGER 5', N'Hamburger kẹp thịt xay ở giữa, xen kẽ lát cà chua và rau salad. Miếng thịt có thể được hun khói thơm phức.', CAST(30.00 AS Decimal(10, 2)), 30, 1, N'assets/img/food/ham3.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (6, N'HAMBURGER 6', N'Hamburger kẹp thịt xay ở giữa, xen kẽ lát cà chua và rau salad. Miếng thịt có thể được hun khói thơm phức.', CAST(30.00 AS Decimal(10, 2)), 30, 1, N'assets/img/food/ham3.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (7, N'GÀ RÁN 1', N'Lớp bột chiên xù sẽ giúp cho miếng gà có một lớp vỏ ngoài giòn rụm, còn phần thịt bên trong vẫn mềm và mọng nước.', CAST(25.00 AS Decimal(10, 2)), 30, 2, N'assets/img/food/ga.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (8, N'GÀ RÁN 2', N'Lớp bột chiên xù sẽ giúp cho miếng gà có một lớp vỏ ngoài giòn rụm, còn phần thịt bên trong vẫn mềm và mọng nước.', CAST(25.00 AS Decimal(10, 2)), 30, 2, N'assets/img/food/ga.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (9, N'GÀ RÁN 3', N'Lớp bột chiên xù sẽ giúp cho miếng gà có một lớp vỏ ngoài giòn rụm, còn phần thịt bên trong vẫn mềm và mọng nước.', CAST(25.00 AS Decimal(10, 2)), 30, 2, N'assets/img/food/ga1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (10, N'GÀ RÁN 4', N'Lớp bột chiên xù sẽ giúp cho miếng gà có một lớp vỏ ngoài giòn rụm, còn phần thịt bên trong vẫn mềm và mọng nước.', CAST(25.00 AS Decimal(10, 2)), 30, 2, N'assets/img/food/ga2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (11, N'GÀ RÁN 5', N'Lớp bột chiên xù sẽ giúp cho miếng gà có một lớp vỏ ngoài giòn rụm, còn phần thịt bên trong vẫn mềm và mọng nước.', CAST(25.00 AS Decimal(10, 2)), 30, 2, N'assets/img/food/ga2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (12, N'GÀ RÁN 6', N'Lớp bột chiên xù sẽ giúp cho miếng gà có một lớp vỏ ngoài giòn rụm, còn phần thịt bên trong vẫn mềm và mọng nước.', CAST(25.00 AS Decimal(10, 2)), 30, 2, N'assets/img/food/ga2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (13, N'KHOAI TÂY CHIÊN 1', N' Vị ngon của khoai tây chiên đút lò không chỉ đến từ độ giòn và màu vàng sành điệu, mà còn từ hương vị đặc trưng của khoai tây cùng với một số gia vị và chất béo.', CAST(20.00 AS Decimal(10, 2)), 30, 3, N'assets/img/food/khoai1.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (14, N'KHOAI TÂY CHIÊN 2', N' Vị ngon của khoai tây chiên đút lò không chỉ đến từ độ giòn và màu vàng sành điệu, mà còn từ hương vị đặc trưng của khoai tây cùng với một số gia vị và chất béo.', CAST(20.00 AS Decimal(10, 2)), 30, 3, N'assets/img/food/khoai1.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (15, N'KHOAI TÂY CHIÊN 3', N' Vị ngon của khoai tây chiên đút lò không chỉ đến từ độ giòn và màu vàng sành điệu, mà còn từ hương vị đặc trưng của khoai tây cùng với một số gia vị và chất béo.', CAST(20.00 AS Decimal(10, 2)), 30, 3, N'assets/img/food/khoai2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (16, N'KHOAI TÂY CHIÊN 4', N' Vị ngon của khoai tây chiên đút lò không chỉ đến từ độ giòn và màu vàng sành điệu, mà còn từ hương vị đặc trưng của khoai tây cùng với một số gia vị và chất béo.', CAST(20.00 AS Decimal(10, 2)), 30, 3, N'assets/img/food/khoai2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (17, N'KHOAI TÂY CHIÊN 5', N' Vị ngon của khoai tây chiên đút lò không chỉ đến từ độ giòn và màu vàng sành điệu, mà còn từ hương vị đặc trưng của khoai tây cùng với một số gia vị và chất béo.', CAST(20.00 AS Decimal(10, 2)), 30, 3, N'assets/img/food/khoai3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (18, N'KHOAI TÂY CHIÊN 6', N' Vị ngon của khoai tây chiên đút lò không chỉ đến từ độ giòn và màu vàng sành điệu, mà còn từ hương vị đặc trưng của khoai tây cùng với một số gia vị và chất béo.', CAST(20.00 AS Decimal(10, 2)), 30, 3, N'assets/img/food/khoai3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (19, N'PIZZA 1', N'Pizza là loại bánh có hình tròn được nướng lên với 3 thành phần chính là đế bánh, nhân bánh và phô mai phủ', CAST(35.00 AS Decimal(10, 2)), 30, 4, N'assets/img/food/pizza1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (20, N'PIZZA 2', N'Pizza là loại bánh có hình tròn được nướng lên với 3 thành phần chính là đế bánh, nhân bánh và phô mai phủ', CAST(35.00 AS Decimal(10, 2)), 30, 4, N'assets/img/food/pizza1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (21, N'PIZZA 3', N'Pizza là loại bánh có hình tròn được nướng lên với 3 thành phần chính là đế bánh, nhân bánh và phô mai phủ', CAST(35.00 AS Decimal(10, 2)), 99, 4, N'assets/img/food/pizza2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (22, N'PIZZA 4', N'Pizza là loại bánh có hình tròn được nướng lên với 3 thành phần chính là đế bánh, nhân bánh và phô mai phủ', CAST(35.00 AS Decimal(10, 2)), 99, 4, N'assets/img/food/pizza2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (23, N'PIZZA 5', N'Pizza là loại bánh có hình tròn được nướng lên với 3 thành phần chính là đế bánh, nhân bánh và phô mai phủ', CAST(35.00 AS Decimal(10, 2)), 99, 4, N'assets/img/food/pizza3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (24, N'PIZZA 6', N'Pizza là loại bánh có hình tròn được nướng lên với 3 thành phần chính là đế bánh, nhân bánh và phô mai phủ', CAST(35.00 AS Decimal(10, 2)), 99, 4, N'assets/img/food/pizza3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (25, N'SANWICH 1', N'một món ăn thường bao gồm rau, pho mát hoặc thịt cắt lát được đặt bên trên hoặc giữa các lát bánh mì', CAST(40.00 AS Decimal(10, 2)), 99, 5, N'assets/img/food/sandwich1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (26, N'SANWICH 2', N'một món ăn thường bao gồm rau, pho mát hoặc thịt cắt lát được đặt bên trên hoặc giữa các lát bánh mì', CAST(40.00 AS Decimal(10, 2)), 99, 5, N'assets/img/food/sandwich1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (27, N'SANWICH 3', N'một món ăn thường bao gồm rau, pho mát hoặc thịt cắt lát được đặt bên trên hoặc giữa các lát bánh mì', CAST(40.00 AS Decimal(10, 2)), 99, 5, N'assets/img/food/sandwich2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (28, N'SANWICH 4', N'một món ăn thường bao gồm rau, pho mát hoặc thịt cắt lát được đặt bên trên hoặc giữa các lát bánh mì', CAST(40.00 AS Decimal(10, 2)), 99, 5, N'assets/img/food/sandwich2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (29, N'SANWICH 5', N'một món ăn thường bao gồm rau, pho mát hoặc thịt cắt lát được đặt bên trên hoặc giữa các lát bánh mì', CAST(40.00 AS Decimal(10, 2)), 99, 5, N'assets/img/food/sandwich3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (30, N'SANWICH 6', N'một món ăn thường bao gồm rau, pho mát hoặc thịt cắt lát được đặt bên trên hoặc giữa các lát bánh mì', CAST(40.00 AS Decimal(10, 2)), 99, 5, N'assets/img/food/sandwich3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (31, N'BREAD 1', N'Bánh mì là một loại baguette của Việt Nam với lớp vỏ ngoài giòn tan, ruột mềm, còn bên trong là phần nhân. ', CAST(15.00 AS Decimal(10, 2)), 99, 6, N'assets/img/food/bread1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (32, N'BREAD 2', N'Bánh mì là một loại baguette của Việt Nam với lớp vỏ ngoài giòn tan, ruột mềm, còn bên trong là phần nhân. ', CAST(15.00 AS Decimal(10, 2)), 99, 6, N'assets/img/food/bread1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (33, N'BREAD 3', N'Bánh mì là một loại baguette của Việt Nam với lớp vỏ ngoài giòn tan, ruột mềm, còn bên trong là phần nhân. ', CAST(15.00 AS Decimal(10, 2)), 99, 6, N'assets/img/food/bread2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (34, N'BREAD 4', N'Bánh mì là một loại baguette của Việt Nam với lớp vỏ ngoài giòn tan, ruột mềm, còn bên trong là phần nhân. ', CAST(15.00 AS Decimal(10, 2)), 99, 6, N'assets/img/food/bread2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (35, N'BREAD 5', N'Bánh mì là một loại baguette của Việt Nam với lớp vỏ ngoài giòn tan, ruột mềm, còn bên trong là phần nhân. ', CAST(15.00 AS Decimal(10, 2)), 99, 6, N'assets/img/food/bread3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (36, N'BREAD 6', N'Bánh mì là một loại baguette của Việt Nam với lớp vỏ ngoài giòn tan, ruột mềm, còn bên trong là phần nhân. ', CAST(15.00 AS Decimal(10, 2)), 99, 6, N'assets/img/food/bread3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (37, N'CƠM CHIÊN 1', N'Cơm chiên hay cơm rang là một món cơm nấu đã được chế biến trong chảo hoặc chảo rán và thường được trộn với các thành phần khác như trứng, rau, hải sản hoặc thịt', CAST(50.00 AS Decimal(10, 2)), 99, 7, N'assets/img/food/rice1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (38, N'CƠM CHIÊN 2', N'Cơm chiên hay cơm rang là một món cơm nấu đã được chế biến trong chảo hoặc chảo rán và thường được trộn với các thành phần khác như trứng, rau, hải sản hoặc thịt', CAST(50.00 AS Decimal(10, 2)), 99, 7, N'assets/img/food/rice1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (39, N'CƠM CHIÊN 3', N'Cơm chiên hay cơm rang là một món cơm nấu đã được chế biến trong chảo hoặc chảo rán và thường được trộn với các thành phần khác như trứng, rau, hải sản hoặc thịt', CAST(50.00 AS Decimal(10, 2)), 99, 7, N'assets/img/food/rice2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (40, N'CƠM CHIÊN 4', N'Cơm chiên hay cơm rang là một món cơm nấu đã được chế biến trong chảo hoặc chảo rán và thường được trộn với các thành phần khác như trứng, rau, hải sản hoặc thịt', CAST(50.00 AS Decimal(10, 2)), 99, 7, N'assets/img/food/rice2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (41, N'CƠM CHIÊN 5', N'Cơm chiên hay cơm rang là một món cơm nấu đã được chế biến trong chảo hoặc chảo rán và thường được trộn với các thành phần khác như trứng, rau, hải sản hoặc thịt', CAST(50.00 AS Decimal(10, 2)), 99, 7, N'assets/img/food/rice3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (42, N'CƠM CHIÊN 6', N'Cơm chiên hay cơm rang là một món cơm nấu đã được chế biến trong chảo hoặc chảo rán và thường được trộn với các thành phần khác như trứng, rau, hải sản hoặc thịt', CAST(50.00 AS Decimal(10, 2)), 99, 7, N'assets/img/food/rice3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (50, N'NƯỚC 1', N'Nước giải khát có ga (còn gọi là nước ngọt có ga hay nước ngọt) là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu', CAST(10.00 AS Decimal(10, 2)), 99, 10, N'assets/img/food/water1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (51, N'NƯỚC 2', N'Nước giải khát có ga (còn gọi là nước ngọt có ga hay nước ngọt) là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu', CAST(10.00 AS Decimal(10, 2)), 99, 10, N'assets/img/food/water1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (52, N'NƯỚC 3', N'Nước giải khát có ga (còn gọi là nước ngọt có ga hay nước ngọt) là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu', CAST(10.00 AS Decimal(10, 2)), 99, 10, N'assets/img/food/water2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (53, N'NƯỚC 4', N'Nước giải khát có ga (còn gọi là nước ngọt có ga hay nước ngọt) là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu', CAST(10.00 AS Decimal(10, 2)), 99, 10, N'assets/img/food/water2.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (54, N'NƯỚC 5', N'Nước giải khát có ga (còn gọi là nước ngọt có ga hay nước ngọt) là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu', CAST(10.00 AS Decimal(10, 2)), 99, 10, N'assets/img/food/water3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (55, N'NƯỚC 6', N'Nước giải khát có ga (còn gọi là nước ngọt có ga hay nước ngọt) là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu', CAST(10.00 AS Decimal(10, 2)), 99, 10, N'assets/img/food/water3.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (56, N'NƯỚC 7', N'Nước giải khát có ga (còn gọi là nước ngọt có ga hay nước ngọt) là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu', CAST(10.00 AS Decimal(10, 2)), 99, 10, N'assets/img/food/water4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (57, N'NƯỚC 8', N'Nước giải khát có ga (còn gọi là nước ngọt có ga hay nước ngọt) là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu', CAST(10.00 AS Decimal(10, 2)), 99, 10, N'assets/img/food/water4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (58, N'HAMBURGER 7', N'Hamburger kẹp thịt xay ở giữa, xen kẽ lát cà chua và rau salad. Miếng thịt có thể được hun khói thơm phức.', CAST(30.00 AS Decimal(10, 2)), 30, 1, N'assets/img/food/ham1.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (59, N'HAMBURGER 8', N'Hamburger kẹp thịt xay ở giữa, xen kẽ lát cà chua và rau salad. Miếng thịt có thể được hun khói thơm phức.', CAST(30.00 AS Decimal(10, 2)), 30, 1, N'assets/img/food/ham2.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (60, N'HAMBURGER 9', N'Hamburger kẹp thịt xay ở giữa, xen kẽ lát cà chua và rau salad. Miếng thịt có thể được hun khói thơm phức.', CAST(30.00 AS Decimal(10, 2)), 30, 1, N'assets/img/food/ham3.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (61, N'HAMBURGER 10', N'Hamburger kẹp thịt xay ở giữa, xen kẽ lát cà chua và rau salad. Miếng thịt có thể được hun khói thơm phức.', CAST(30.00 AS Decimal(10, 2)), 30, 1, N'assets/img/food/ham2.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (62, N'GÀ RÁN 7', N'Lớp bột chiên xù sẽ giúp cho miếng gà có một lớp vỏ ngoài giòn rụm, còn phần thịt bên trong vẫn mềm và mọng nước.', CAST(25.00 AS Decimal(10, 2)), 30, 2, N'assets/img/food/ga4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (63, N'GÀ RÁN 8', N'Lớp bột chiên xù sẽ giúp cho miếng gà có một lớp vỏ ngoài giòn rụm, còn phần thịt bên trong vẫn mềm và mọng nước.', CAST(25.00 AS Decimal(10, 2)), 30, 2, N'assets/img/food/ga4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (64, N'GÀ RÁN 9', N'Lớp bột chiên xù sẽ giúp cho miếng gà có một lớp vỏ ngoài giòn rụm, còn phần thịt bên trong vẫn mềm và mọng nước.', CAST(25.00 AS Decimal(10, 2)), 30, 2, N'assets/img/food/ga5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (65, N'GÀ RÁN 10', N'Lớp bột chiên xù sẽ giúp cho miếng gà có một lớp vỏ ngoài giòn rụm, còn phần thịt bên trong vẫn mềm và mọng nước.', CAST(25.00 AS Decimal(10, 2)), 30, 2, N'assets/img/food/ga5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (66, N'KHOAI TÂY CHIÊN 7', N' Vị ngon của khoai tây chiên đút lò không chỉ đến từ độ giòn và màu vàng sành điệu, mà còn từ hương vị đặc trưng của khoai tây cùng với một số gia vị và chất béo.', CAST(20.00 AS Decimal(10, 2)), 30, 3, N'assets/img/food/khoai4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (67, N'KHOAI TÂY CHIÊN 8', N' Vị ngon của khoai tây chiên đút lò không chỉ đến từ độ giòn và màu vàng sành điệu, mà còn từ hương vị đặc trưng của khoai tây cùng với một số gia vị và chất béo.', CAST(20.00 AS Decimal(10, 2)), 30, 3, N'assets/img/food/khoai4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (68, N'KHOAI TÂY CHIÊN 9', N' Vị ngon của khoai tây chiên đút lò không chỉ đến từ độ giòn và màu vàng sành điệu, mà còn từ hương vị đặc trưng của khoai tây cùng với một số gia vị và chất béo.', CAST(20.00 AS Decimal(10, 2)), 30, 3, N'assets/img/food/khoai5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (69, N'KHOAI TÂY CHIÊN 10', N' Vị ngon của khoai tây chiên đút lò không chỉ đến từ độ giòn và màu vàng sành điệu, mà còn từ hương vị đặc trưng của khoai tây cùng với một số gia vị và chất béo.', CAST(20.00 AS Decimal(10, 2)), 30, 3, N'assets/img/food/khoai5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (70, N'PIZZA 7', N'Pizza là loại bánh có hình tròn được nướng lên với 3 thành phần chính là đế bánh, nhân bánh và phô mai phủ', CAST(35.00 AS Decimal(10, 2)), 30, 4, N'assets/img/food/pizza4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (71, N'PIZZA 8', N'Pizza là loại bánh có hình tròn được nướng lên với 3 thành phần chính là đế bánh, nhân bánh và phô mai phủ', CAST(35.00 AS Decimal(10, 2)), 30, 4, N'assets/img/food/pizza4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (72, N'PIZZA 9', N'Pizza là loại bánh có hình tròn được nướng lên với 3 thành phần chính là đế bánh, nhân bánh và phô mai phủ', CAST(35.00 AS Decimal(10, 2)), 30, 4, N'assets/img/food/pizza5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (73, N'PIZZA 10', N'Pizza là loại bánh có hình tròn được nướng lên với 3 thành phần chính là đế bánh, nhân bánh và phô mai phủ', CAST(35.00 AS Decimal(10, 2)), 30, 4, N'assets/img/food/pizza5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (74, N'SANWICH 7', N'một món ăn thường bao gồm rau, pho mát hoặc thịt cắt lát được đặt bên trên hoặc giữa các lát bánh mì', CAST(40.00 AS Decimal(10, 2)), 99, 5, N'assets/img/food/sandwich4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (75, N'SANWICH 8', N'một món ăn thường bao gồm rau, pho mát hoặc thịt cắt lát được đặt bên trên hoặc giữa các lát bánh mì', CAST(40.00 AS Decimal(10, 2)), 99, 5, N'assets/img/food/sandwich4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (76, N'SANWICH 9', N'một món ăn thường bao gồm rau, pho mát hoặc thịt cắt lát được đặt bên trên hoặc giữa các lát bánh mì', CAST(40.00 AS Decimal(10, 2)), 99, 5, N'assets/img/food/sandwich5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (77, N'SANWICH 10', N'một món ăn thường bao gồm rau, pho mát hoặc thịt cắt lát được đặt bên trên hoặc giữa các lát bánh mì', CAST(40.00 AS Decimal(10, 2)), 99, 5, N'assets/img/food/sandwich5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (78, N'BREAD 7', N'Bánh mì là một loại baguette của Việt Nam với lớp vỏ ngoài giòn tan, ruột mềm, còn bên trong là phần nhân. ', CAST(15.00 AS Decimal(10, 2)), 99, 6, N'assets/img/food/bread4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (79, N'BREAD 8', N'Bánh mì là một loại baguette của Việt Nam với lớp vỏ ngoài giòn tan, ruột mềm, còn bên trong là phần nhân. ', CAST(15.00 AS Decimal(10, 2)), 99, 6, N'assets/img/food/bread4.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (80, N'BREAD 9', N'Bánh mì là một loại baguette của Việt Nam với lớp vỏ ngoài giòn tan, ruột mềm, còn bên trong là phần nhân. ', CAST(15.00 AS Decimal(10, 2)), 99, 6, N'assets/img/food/bread5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (81, N'BREAD 10', N'Bánh mì là một loại baguette của Việt Nam với lớp vỏ ngoài giòn tan, ruột mềm, còn bên trong là phần nhân. ', CAST(15.00 AS Decimal(10, 2)), 99, 6, N'assets/img/food/bread5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (82, N'CƠM CHIÊN 7', N'Cơm chiên hay cơm rang là một món cơm nấu đã được chế biến trong chảo hoặc chảo rán và thường được trộn với các thành phần khác như trứng, rau, hải sản hoặc thịt', CAST(50.00 AS Decimal(10, 2)), 99, 7, N'assets/img/food/rice4.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (83, N'CƠM CHIÊN 8', N'Cơm chiên hay cơm rang là một món cơm nấu đã được chế biến trong chảo hoặc chảo rán và thường được trộn với các thành phần khác như trứng, rau, hải sản hoặc thịt', CAST(50.00 AS Decimal(10, 2)), 99, 7, N'assets/img/food/rice4.png', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (84, N'CƠM CHIÊN 9', N'Cơm chiên hay cơm rang là một món cơm nấu đã được chế biến trong chảo hoặc chảo rán và thường được trộn với các thành phần khác như trứng, rau, hải sản hoặc thịt', CAST(50.00 AS Decimal(10, 2)), 99, 7, N'assets/img/food/rice5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (85, N'CƠM CHIÊN 10', N'Cơm chiên hay cơm rang là một món cơm nấu đã được chế biến trong chảo hoặc chảo rán và thường được trộn với các thành phần khác như trứng, rau, hải sản hoặc thịt', CAST(50.00 AS Decimal(10, 2)), 99, 7, N'assets/img/food/rice5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (86, N'NƯỚC 9', N'Nước giải khát có ga (còn gọi là nước ngọt có ga hay nước ngọt) là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu', CAST(10.00 AS Decimal(10, 2)), 99, 10, N'assets/img/food/water5.jpg', 1)
INSERT [dbo].[Products] ([product_id], [name], [description], [price], [stock_quantity], [category_id], [image], [active]) VALUES (87, N'NƯỚC 10', N'Nước giải khát có ga (còn gọi là nước ngọt có ga hay nước ngọt) là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu', CAST(10.00 AS Decimal(10, 2)), 99, 10, N'assets/img/food/water5.jpg', 1)

SET IDENTITY_INSERT [dbo].[Products] OFF

update Products
set price = 30000

SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([admin_id], [name], [username], [password], [email], [reset_code], [reset_code_created_at], [transaction_id]) VALUES (1, N'Phuc', N'admin1', N'Admin1234@', N'minhphuc2308031@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Admins] ([admin_id], [name], [username], [password], [email], [reset_code], [reset_code_created_at], [transaction_id]) VALUES (2, N'Hung', N'adminn', N'Hung@2003', N'fctuoiconde@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Admins] ([admin_id], [name], [username], [password], [email], [reset_code], [reset_code_created_at], [transaction_id]) VALUES (3, N'Hoang', N'admin2', N'Admin@123', N'hungndhe@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Admins] ([admin_id], [name], [username], [password], [email], [reset_code], [reset_code_created_at], [transaction_id]) VALUES (4, N'DAnh', N'admin3', N'Admin@123', N'fc3conde@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Admins] ([admin_id], [name], [username], [password], [email], [reset_code], [reset_code_created_at], [transaction_id]) VALUES (5, N'Cuong', N'admin5', N'Admin@123', N'abccc@gmail.com', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Admins] OFF

SET IDENTITY_INSERT [dbo].[Tables] ON 

INSERT [dbo].[Tables] ([table_id], [qr_code], [table_name], [active]) VALUES (1, N'Bàn 1', N'Bàn 1', 1)
INSERT [dbo].[Tables] ([table_id], [qr_code], [table_name], [active]) VALUES (2, N'Bàn 2', N'Bàn 2', 1)
INSERT [dbo].[Tables] ([table_id], [qr_code], [table_name], [active]) VALUES (3, N'Bàn 3', N'Bàn 3', 1)
INSERT [dbo].[Tables] ([table_id], [qr_code], [table_name], [active]) VALUES (4, N'Bàn 4', N'Bàn 4', 1)
INSERT [dbo].[Tables] ([table_id], [qr_code], [table_name], [active]) VALUES (5, N'Bàn 5', N'Bàn 5', 1)
SET IDENTITY_INSERT [dbo].[Tables] OFF

SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([discount_id], [code], [discount_percentage], [active]) VALUES (1, N'10%', CAST(10.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Discounts] ([discount_id], [code], [discount_percentage], [active]) VALUES (2, N'20%', CAST(20.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Discounts] ([discount_id], [code], [discount_percentage], [active]) VALUES (3, N'30%', CAST(30.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Discounts] ([discount_id], [code], [discount_percentage], [active]) VALUES (4, N'40%', CAST(40.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Discounts] ([discount_id], [code], [discount_percentage], [active]) VALUES (5, N'50%', CAST(50.00 AS Decimal(5, 2)), 1)
SET IDENTITY_INSERT [dbo].[Discounts] OFF

SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (1, N'Anh A', N'0999888777')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (2, N'Anh B', N'0987654321')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (3, N'Anh C', N'0912345678')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (4, N'Chị D', N'0867082467')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (5, N'Chị E', N'1234567899')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (6, N'Anh F', N'1234567898')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (7, N'Anh G', N'0869735615')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (8, N'Chị H', N'1234567890')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (9, N'Chị I', N'0869735615')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (10, N'Anh K', N'0869735615')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (11, N'Anh L', N'0867082467')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (12, N'Chị M', N'1234567897')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (13, N'Chị M', N'1234567896')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (14, N'Chị M', N'1234567895')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (15, N'Chị M', N'1234567894')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (16, N'Chị M', N'1234567893')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (17, N'Chị M', N'1234567892')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (18, N'Chị M', N'1234567891')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (19, N'Chị M', N'1234567880')
INSERT [dbo].[Customers] ([customer_id], [name], [phone_number]) VALUES (20, N'Chị M', N'1234567889')
SET IDENTITY_INSERT [dbo].[Customers] OFF

SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (1, N'Nam', N'abc@gmail.com', N'24022003@Hoang', NULL, NULL, N'0987052265', N'Đang làm việc', 1, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (2, N'Ánh', N'user5@gmail.com', N'123', NULL, NULL, N'0867082467', N'Đang làm việc', 1, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (3, N'Vân', N'phucpmhe171110@fpt.edu.vn', N'Phuc12345@', NULL, NULL, N'0867082467', N'Đang làm việc', 1, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (4, N'Hải', N'email@example.com', N'123', NULL, NULL, N'0867082467', N'Đang làm việc', 1, CAST(22.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (5, N'Quân', N'vxc@gmail.com', N'123', NULL, NULL, N'0867082467', N'Đang làm việc', 1, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (6, N'Minh', N'fsdj@gmail.com', N'bcd', NULL, NULL, N'0867082467', N'Đã nghỉ việc', 0, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (7, N'Tuấn', N'xyz@gmail.com', N'123', NULL, NULL, N'0867082467', N'Đã nghỉ việc', 0, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (8, N'Phúc', NULL, NULL, NULL, NULL, N'0867082467', N'Đã nghỉ việc', 0, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (9, N'Dũng', NULL, NULL, NULL, NULL, N'0867082467', N'Đã nghỉ việc', 0, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (10, N'Hưng', NULL, NULL, NULL, NULL, N'0867082467', N'Đã nghỉ việc', 0, CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (11, N'Tom', NULL, NULL, NULL, NULL, N'0869138564', N'Đang làm việc', 0, CAST(77.00 AS Decimal(10, 2)))
INSERT [dbo].[Employees] ([employee_id], [name], [email], [password], [reset_code], [reset_code_created_at], [phone_number], [employment_status], [active], [hourly_wage_rate]) VALUES (12, N'Tom', NULL, NULL, NULL, NULL, N'0869138564', N'Đang làm việc', 0, CAST(77.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Employees] OFF

SET IDENTITY_INSERT [dbo].[ShiftPatterns] ON 

INSERT [dbo].[ShiftPatterns] ([pattern_id], [pattern_name], [start_time], [end_time]) VALUES (1, N'Ca sáng', CAST(N'08:00:00' AS Time), CAST(N'15:59:59' AS Time))
INSERT [dbo].[ShiftPatterns] ([pattern_id], [pattern_name], [start_time], [end_time]) VALUES (2, N'Ca tối', CAST(N'16:00:00' AS Time), CAST(N'23:59:59' AS Time))
SET IDENTITY_INSERT [dbo].[ShiftPatterns] OFF

SELECT * FROM Tables

SET IDENTITY_INSERT [dbo].[WorkShifts] ON 

INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (1, 1, 1, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (2, 1, 2, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (3, 2, 1, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (4, 3, 2, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (5, 4, 1, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (6, 4, 2, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (7, 5, 2, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (8, 6, 2, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (9, 7, 2, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (10, 8, 2, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (11, 9, 2, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (12, 9, 1, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (13, 10, 1, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (14, 11, 1, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (15, 11, 2, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (16, 12, 1, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (17, 7, 1, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (18, 5, 1, NULL, NULL, 1)
INSERT [dbo].[WorkShifts] ([shift_id], [employee_id], [pattern_id], [start_amount], [end_amount], [active]) VALUES (19, 6, 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[WorkShifts] OFF

SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (1, 1, N'Có mặt', CAST(N'2024-06-01' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (2, 2, N'Có mặt', CAST(N'2024-06-02' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (3, 3, N'Có mặt', CAST(N'2024-06-03' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (4, 4, N'Có mặt', CAST(N'2024-06-04' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (5, 5, N'Muộn', CAST(N'2024-06-05' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (6, 6, N'Có mặt', CAST(N'2024-06-06' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (7, 7, N'Có mặt', CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (8, 8, N'Có mặt', CAST(N'2024-06-08' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (9, 9, N'Có mặt', CAST(N'2024-06-09' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (10, 10, N'Có mặt', CAST(N'2024-06-10' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (11, 11, N'Có mặt', CAST(N'2024-06-11' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (12, 12, N'Có mặt', CAST(N'2024-06-12' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (13, 1, N'Có mặt', CAST(N'2024-06-13' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (14, 2, N'Có mặt', CAST(N'2024-06-14' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (15, 3, N'Có mặt', CAST(N'2024-06-15' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (16, 4, N'Có mặt', CAST(N'2024-06-16' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (17, 5, N'Có mặt', CAST(N'2024-06-17' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (18, 6, N'Có mặt', CAST(N'2024-06-18' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (19, 7, N'Có mặt', CAST(N'2024-06-19' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (20, 8, N'Có mặt', CAST(N'2024-06-20' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (21, 9, N'Có mặt', CAST(N'2024-06-21' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (22, 10, N'Có mặt', CAST(N'2024-06-22' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (23, 11, N'Có mặt', CAST(N'2024-06-23' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (24, 12, N'Có mặt', CAST(N'2024-06-24' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (25, 1, N'Có mặt', CAST(N'2024-06-25' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (26, 2, N'Có mặt', CAST(N'2024-06-26' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (27, 3, N'Có mặt', CAST(N'2024-06-27' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (28, 4, N'Có mặt', CAST(N'2024-06-28' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (29, 5, N'Có mặt', CAST(N'2024-06-29' AS Date))
INSERT [dbo].[Attendance] ([attendance_id], [shift_id], [attendance_status], [working_date]) VALUES (30, 6, N'Có mặt', CAST(N'2024-06-30' AS Date))

SET IDENTITY_INSERT [dbo].[Attendance] OFF

INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-01' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-02' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-03' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-04' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-05' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-06' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-07' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-08' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-09' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-10' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-11' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-12' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-13' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-14' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-15' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-16' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-17' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-18' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-19' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-20' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-21' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-22' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-23' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-24' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-25' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-26' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-27' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-28' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-29' AS Date), CAST(0 AS Decimal(10, 2)))
INSERT [dbo].[Revenue] ([date], [total_revenue]) VALUES (CAST(N'2024-06-30' AS Date), CAST(0 AS Decimal(10, 2)))

SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (1, 1, 1, CAST(0 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (2, 2, 2, CAST(0 AS Decimal(10, 2)), 1)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (3, 3, 3, CAST(0 AS Decimal(10, 2)), 2)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (4, 4, 4, CAST(0 AS Decimal(10, 2)), 3)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (5, 5, 5, CAST(0 AS Decimal(10, 2)), 4)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (6, 1, 6, CAST(0 AS Decimal(10, 2)), 5)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (7, 2, 7, CAST(0 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (8, 3, 8, CAST(0 AS Decimal(10, 2)), 1)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (9, 4, 9, CAST(0 AS Decimal(10, 2)), 2)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (10, 5, 10, CAST(0 AS Decimal(10, 2)), 3)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (11, 1, 11, CAST(0 AS Decimal(10, 2)), 4)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (12, 2, 12, CAST(0 AS Decimal(10, 2)), 5)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (13, 3, 13, CAST(0 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (14, 4, 14, CAST(0 AS Decimal(10, 2)), 1)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (15, 5, 15, CAST(0 AS Decimal(10, 2)), 2)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (16, 5, 16, CAST(0 AS Decimal(10, 2)), 3)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (17, 1, 17, CAST(0 AS Decimal(10, 2)), 4)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (18, 2, 18, CAST(0 AS Decimal(10, 2)), 5)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (19, 3, 19, CAST(0 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (20, 4, 20, CAST(0 AS Decimal(10, 2)), 1)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (21, 5, 1, CAST(0 AS Decimal(10, 2)), 2)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (22, 1, 2, CAST(0 AS Decimal(10, 2)), 3)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (23, 2, 3, CAST(0 AS Decimal(10, 2)), 4)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (24, 3, 4, CAST(0 AS Decimal(10, 2)), 5)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (25, 4, 5, CAST(0 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (26, 5, 6, CAST(0 AS Decimal(10, 2)), 1)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (27, 1, 7, CAST(0 AS Decimal(10, 2)), 2)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (28, 2, 8, CAST(0 AS Decimal(10, 2)), 3)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (29, 3, 9, CAST(0 AS Decimal(10, 2)), 4)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (30, 4, 10, CAST(0 AS Decimal(10, 2)), 5)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (31, 5, 11, CAST(0 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (32, 1, 12, CAST(0 AS Decimal(10, 2)), 1)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (33, 2, 13, CAST(0 AS Decimal(10, 2)), 2)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (34, 3, 14, CAST(0 AS Decimal(10, 2)), 3)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (35, 4, 15, CAST(0 AS Decimal(10, 2)), 4)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (36, 5, 16, CAST(0 AS Decimal(10, 2)), 5)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (37, 1, 17, CAST(0 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (38, 2, 18, CAST(0 AS Decimal(10, 2)), 1)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (39, 3, 19, CAST(0 AS Decimal(10, 2)), 2)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (40, 4, 20, CAST(0 AS Decimal(10, 2)), 3)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (41, 5, 1, CAST(0 AS Decimal(10, 2)), 4)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (42, 1, 2, CAST(0 AS Decimal(10, 2)), 5)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (43, 2, 3, CAST(0 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (44, 3, 4, CAST(0 AS Decimal(10, 2)), 1)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (45, 4, 5, CAST(0 AS Decimal(10, 2)), 2)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (46, 5, 6, CAST(0 AS Decimal(10, 2)), 3)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (47, 1, 7, CAST(0 AS Decimal(10, 2)), 4)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (48, 2, 8, CAST(0 AS Decimal(10, 2)), 5)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (49, 3, 9, CAST(0 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (50, 4, 10, CAST(0 AS Decimal(10, 2)), 1)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (51, 5, 11, CAST(0 AS Decimal(10, 2)), 2)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (52, 1, 12, CAST(0 AS Decimal(10, 2)), 3)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (53, 2, 13, CAST(0 AS Decimal(10, 2)), 4)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (54, 3, 14, CAST(0 AS Decimal(10, 2)), 5)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (55, 4, 15, CAST(0 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (56, 5, 16, CAST(0 AS Decimal(10, 2)), 1)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (57, 1, 17, CAST(0 AS Decimal(10, 2)), 2)
INSERT [dbo].[Orders] ([order_id], [table_id], [customer_id], [total_amount], [discount_id]) VALUES (58, 2, 18, CAST(0 AS Decimal(10, 2)), 3)

SET IDENTITY_INSERT [dbo].[Orders] OFF

SET IDENTITY_INSERT [dbo].[OrderDetails] ON
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 1, 1, p.price, p.product_id, 3 FROM Products p WHERE p.product_id = 1;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 2, 1, p.price, p.product_id, 1 FROM Products p WHERE p.product_id = 1;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 3, 1, p.price, p.product_id, 4 FROM Products p WHERE p.product_id = 2;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 4, 1, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 4;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 5, 2, p.price, p.product_id, 4 FROM Products p WHERE p.product_id = 2;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 6, 2, p.price, p.product_id, 5 FROM Products p WHERE p.product_id = 4;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 7, 2, p.price, p.product_id, 3 FROM Products p WHERE p.product_id = 2;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 8, 3, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 3;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 9, 4, p.price, p.product_id, 1 FROM Products p WHERE p.product_id = 1;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 10, 4, p.price, p.product_id, 6 FROM Products p WHERE p.product_id = 3;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 11, 5, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 2;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 12, 6, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 5;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 13, 7, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 6;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 14, 8, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 7;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 15, 9, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 8;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 16, 10, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 9;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 17, 11, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 11;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 18, 12, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 23;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 19, 13, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 14;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 20, 14, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 27;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 21, 15, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 43;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 22, 16, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 65;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 23, 17, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 34;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 24, 18, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 76;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 25, 19, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 23;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 26, 20, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 45;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 27, 21, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 23;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 28, 22, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 11;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 29, 23, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 56;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 30, 24, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 78;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 31, 25, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 43;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 32, 26, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 65;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 33, 27, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 23;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 34, 28, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 56;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 35, 29, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 22;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 36, 30, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 53;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 37, 31, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 54;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 38, 32, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 26;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 39, 33, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 32;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 40, 34, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 19;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 41, 35, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 20;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 42, 36, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 64;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 43, 37, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 65;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 44, 38, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 34;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 45, 39, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 81;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 46, 40, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 34;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 47, 41, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 65;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 48, 42, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 12;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 49, 43, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 27;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 50, 44, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 38;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 51, 45, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 34;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 52, 46, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 47;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 53, 47, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 58;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 54, 48, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 19;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 55, 49, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 70;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 56, 50, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 23;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 57, 51, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 78;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 58, 52, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 12;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 59, 53, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 81;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 60, 54, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 78;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 61, 55, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 33;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 62, 56, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 44;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 63, 57, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 55;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 64, 58, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 66;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 65, 5, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 77;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 66, 6, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 27;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 67, 7, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 21;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 68, 8, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 28;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 69, 9, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 25;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 70, 10, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 21;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 71, 11, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 74;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 72, 12, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 53;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 73, 13, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 42;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 74, 14, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 75;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 75, 15, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 54;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 76, 16, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 75;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 77, 17, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 1;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 78, 18, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 8;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 79, 19, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 10;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 80, 20, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 54;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 81, 21, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 76;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 82, 22, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 34;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 83, 23, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 87;
INSERT INTO OrderDetails (order_detail_id, order_id, price, product_id, quantity) SELECT 84, 24, p.price, p.product_id, 2 FROM Products p WHERE p.product_id = 2;

SET IDENTITY_INSERT [dbo].[OrderDetails] OFF

SET IDENTITY_INSERT [dbo].[TransactionHistory] ON 

INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (1, 1, 3, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-01' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (2, 2, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-02' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (3, 3, 8, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-03' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (4, 4, 11, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-04' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (5, 5, 6, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-05' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (6, 6, 9, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-06' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (7, 7, 2, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-07' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (8, 8, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-08' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (9, 9, 5, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-09' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (10, 10, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-10' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (11, 11, 10, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-11' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (12, 12, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-12' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (13, 13, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-13' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (14, 14, 4, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-14' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (15, 15, 7, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-15' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (16, 16, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-16' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (17, 17, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-17' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (18, 18, 1, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-18' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (19, 19, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-19' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (20, 20, 3, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-20' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (21, 21, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-21' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (22, 22, 8, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-22' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (23, 23, 11, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-23' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (24, 24, 6, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-24' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (25, 25, 9, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-25' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (26, 26, 2, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-26' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (27, 27, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-27' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (28, 28, 5, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-28' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (29, 29, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-29' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (30, 30, 10, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-30' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (31, 31, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-01' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (32, 32, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-02' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (33, 33, 4, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-03' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (34, 34, 7, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-04' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (35, 35, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-05' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (36, 36, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-06' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (37, 37, 1, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-07' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (38, 38, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-08' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (39, 39, 3, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-09' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (40, 40, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-10' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (41, 41, 8, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-11' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (42, 42, 11, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-12' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (43, 43, 6, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-13' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (44, 44, 9, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-14' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (45, 45, 2, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-15' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (46, 46, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-16' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (47, 47, 5, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-17' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (48, 48, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-18' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (49, 49, 10, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-19' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (50, 50, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-20' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (51, 51, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-21' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (52, 52, 4, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-22' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (53, 53, 7, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-23' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (54, 54, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-24' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (55, 55, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-25' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (56, 56, 1, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-26' AS Date), N'Thanh toán tiền mặt');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (57, 57, 12, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-27' AS Date), N'Chuyển khoản');
INSERT [dbo].[TransactionHistory] ([transaction_id], [order_id], [employee_id], [transaction_amount], [transaction_date], [transaction_type]) VALUES (58, 58, 3, CAST(0 AS Decimal(10, 2)), CAST(N'2024-06-28' AS Date), N'Thanh toán tiền mặt');

SET IDENTITY_INSERT [dbo].[TransactionHistory] OFF

ALTER TABLE [dbo].[Items] Add served bit default 0

UPDATE o
                       SET o.total_amount = od.total_amount
                       FROM [Orders] o
                       JOIN (
                           SELECT order_id, SUM(quantity * price) AS total_amount
                           FROM OrderDetails
                           GROUP BY order_id
                       ) od ON o.order_id = od.order_id

UPDATE TransactionHistory
                       SET transaction_amount = CASE
                                                   WHEN o.discount_id IS NULL THEN o.total_amount
                                                   ELSE o.total_amount - (o.total_amount * d.discount_percentage / 100)
                                                END
                       FROM TransactionHistory th
                       INNER JOIN Orders o ON th.order_id = o.order_id
                       LEFT JOIN Discounts d ON o.discount_id = d.discount_id;

UPDATE r
                       SET r.total_revenue = 0 + th.totalAmountSum
                       FROM revenue r
                       JOIN (
                           SELECT t.transaction_date, SUM(t.transaction_amount) AS totalAmountSum
                           FROM TransactionHistory t
                           GROUP BY t.transaction_date
                       ) th ON r.date = th.transaction_date;
					   
					   select * from TransactionHistory