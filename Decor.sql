USE [Deckor]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 21.03.2023 11:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id_Order] [int] IDENTITY(1,1) NOT NULL,
	[OrderList] [varchar](50) NULL,
	[DateOrder] [date] NULL,
	[DeliveryDate] [date] NULL,
	[IDPointOfIssue] [int] NULL,
	[FIO] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointOfIssue]    Script Date: 21.03.2023 11:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointOfIssue](
	[IDPointOfIssue] [int] IDENTITY(1,1) NOT NULL,
	[City] [varchar](50) NULL,
	[Street] [varchar](50) NULL,
	[House] [varchar](50) NULL,
 CONSTRAINT [PK_PointOfIssue] PRIMARY KEY CLUSTERED 
(
	[IDPointOfIssue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postavshik]    Script Date: 21.03.2023 11:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postavshik](
	[IdPostavshik] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Postavshik] PRIMARY KEY CLUSTERED 
(
	[IdPostavshik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proizvoditel]    Script Date: 21.03.2023 11:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proizvoditel](
	[IdProizvoditel] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Proizvoditel] PRIMARY KEY CLUSTERED 
(
	[IdProizvoditel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 21.03.2023 11:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IDRoll] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[IDRoll] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tovars]    Script Date: 21.03.2023 11:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tovars](
	[IdT] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[UnitOnes] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[PossibleDiscount] [varchar](50) NULL,
	[IdProizvoditel] [int] NULL,
	[IdPostavshik] [int] NULL,
	[IdTypeT] [int] NULL,
	[Discount] [varchar](50) NULL,
	[CountStock] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_Tovars] PRIMARY KEY CLUSTERED 
(
	[IdT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeT]    Script Date: 21.03.2023 11:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeT](
	[IdTypeT] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TypeT] PRIMARY KEY CLUSTERED 
(
	[IdTypeT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.03.2023 11:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id_User] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [varchar](50) NULL,
	[Login] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IDRoll] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id_Order], [OrderList], [DateOrder], [DeliveryDate], [IDPointOfIssue], [FIO], [Code], [Status]) VALUES (1, N'K478R4, 10, F933T5, 5', CAST(N'2022-05-01' AS Date), CAST(N'2022-05-07' AS Date), 2, N'Архипова Оливия Дмитриевна', N'111', N'Новый ')
INSERT [dbo].[Order] ([Id_Order], [OrderList], [DateOrder], [DeliveryDate], [IDPointOfIssue], [FIO], [Code], [Status]) VALUES (2, N'S563T4, 2, D034T5, 6', CAST(N'2022-05-02' AS Date), CAST(N'2022-05-08' AS Date), 8, N'', N'112', N'Новый ')
INSERT [dbo].[Order] ([Id_Order], [OrderList], [DateOrder], [DeliveryDate], [IDPointOfIssue], [FIO], [Code], [Status]) VALUES (3, N'K083T5, 11, D826T5, 11', CAST(N'2022-05-03' AS Date), CAST(N'2022-05-09' AS Date), 10, N'', N'113', N'Новый ')
INSERT [dbo].[Order] ([Id_Order], [OrderList], [DateOrder], [DeliveryDate], [IDPointOfIssue], [FIO], [Code], [Status]) VALUES (4, N'B037T5, 1, D832R2, 5', CAST(N'2022-05-04' AS Date), CAST(N'2022-05-10' AS Date), 12, N'', N'114', N'Завершен')
INSERT [dbo].[Order] ([Id_Order], [OrderList], [DateOrder], [DeliveryDate], [IDPointOfIssue], [FIO], [Code], [Status]) VALUES (5, N'R922T5, 7, D044T5, 5', CAST(N'2022-05-05' AS Date), CAST(N'2022-05-11' AS Date), 15, N'', N'115', N'Новый ')
INSERT [dbo].[Order] ([Id_Order], [OrderList], [DateOrder], [DeliveryDate], [IDPointOfIssue], [FIO], [Code], [Status]) VALUES (6, N'V783T5, 1, F933T5, 5', CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 18, N'Никонова Татьяна Захаровна', N'116', N'Новый ')
INSERT [dbo].[Order] ([Id_Order], [OrderList], [DateOrder], [DeliveryDate], [IDPointOfIssue], [FIO], [Code], [Status]) VALUES (7, N'H937R3, 1, S039T5, 3', CAST(N'2022-05-07' AS Date), CAST(N'2022-05-13' AS Date), 20, N'', N'117', N'Завершен')
INSERT [dbo].[Order] ([Id_Order], [OrderList], [DateOrder], [DeliveryDate], [IDPointOfIssue], [FIO], [Code], [Status]) VALUES (8, N'F903T5, 4, F937R4, 3', CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 25, N'', N'118', N'Новый ')
INSERT [dbo].[Order] ([Id_Order], [OrderList], [DateOrder], [DeliveryDate], [IDPointOfIssue], [FIO], [Code], [Status]) VALUES (9, N'R836R5, 1, D826T5, 2', CAST(N'2022-05-09' AS Date), CAST(N'2022-05-15' AS Date), 30, N'', N'119', N'Завершен')
INSERT [dbo].[Order] ([Id_Order], [OrderList], [DateOrder], [DeliveryDate], [IDPointOfIssue], [FIO], [Code], [Status]) VALUES (10, N'D832R2, 5, D044T5, 2', CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 36, N'Рябова Диана Павловна', N'120', N'Новый ')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[PointOfIssue] ON 

INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (1, N'г.Ковров', N'ул.Чехова', N'1')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (2, N'г.Ковров', N'ул.Степная', N'30')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (3, N'г.Ковров', N'ул.Коммунистическая', N'43')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (4, N'г.Ковров', N'ул.Солнечная', N'25')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (5, N'г.Ковров', N'ул.Шоссейная', N'40')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (6, N'г.Ковров', N'ул.Партизанская', N'49')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (7, N'г.Ковров', N'ул.Победы', N'46')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (8, N'г.Ковров', N'ул.Молодежная', N'50')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (9, N'г.Ковров', N'ул.Новая', N'19')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (10, N'г.Ковров', N'ул.Октябрьская', N'19')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (11, N'г.Ковров', N'ул.Садовая', N'4')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (12, N'г.Ковров', N'ул.Комсомольская', N'26')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (13, N'г.Ковров', N'ул.Чехова', N'3')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (14, N'г.Ковров', N'ул.Дзержинского', N'28')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (15, N'г.Ковров', N'ул.Набережная', N'30')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (16, N'г.Ковров', N'ул.Фрунзе', N'43')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (17, N'г.Ковров', N'ул.Школьная', N'50')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (18, N'г.Ковров', N'ул.Коммунистическая', N'20')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (19, N'г.Ковров', N'ул.8Марта', N'')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (20, N'г.Ковров', N'ул.Зеленая', N'32')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (21, N'г.Ковров', N'ул.Маяковского', N'47')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (22, N'г.Ковров', N'ул.Светлая', N'46')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (23, N'г.Ковров', N'ул.Цветочная', N'8')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (24, N'г.Ковров', N'ул.Коммунистическая', N'1')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (25, N'г.Ковров', N'ул.Спортивная', N'46')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (26, N'г.Ковров', N'ул.Гоголя', N'41')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (27, N'г.Ковров', N'ул.Северная', N'13')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (28, N'г.Ковров', N'ул.Вишневая', N'32')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (29, N'г.Ковров', N'ул.Подгорная', N'8')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (30, N'г.Ковров', N'ул.Шоссейная', N'24')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (31, N'г.Ковров', N'ул.Полевая', N'35')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (32, N'г.Ковров', N'ул.Маяковского', N'44')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (33, N'г.Ковров', N'ул.Клубная', N'44')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (34, N'г.Ковров', N'ул.Некрасова', N'12')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (35, N'г.Ковров', N'ул.Комсомольская', N'17')
INSERT [dbo].[PointOfIssue] ([IDPointOfIssue], [City], [Street], [House]) VALUES (36, N'г.Ковров', N'ул.Мичурина', N'26')
SET IDENTITY_INSERT [dbo].[PointOfIssue] OFF
GO
SET IDENTITY_INSERT [dbo].[Postavshik] ON 

INSERT [dbo].[Postavshik] ([IdPostavshik], [Name]) VALUES (1, N'Hoff')
INSERT [dbo].[Postavshik] ([IdPostavshik], [Name]) VALUES (2, N'Стокманн')
SET IDENTITY_INSERT [dbo].[Postavshik] OFF
GO
SET IDENTITY_INSERT [dbo].[Proizvoditel] ON 

INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (1, N'Aroma')
INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (2, N'Cube Color')
INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (3, N'Esteban')
INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (4, N'Gallery')
INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (5, N'Home Philosophy')
INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (6, N'Kersten')
INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (7, N'Miksdo')
INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (8, N'True Scents')
INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (9, N'Umbra')
INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (10, N'Valley')
INSERT [dbo].[Proizvoditel] ([IdProizvoditel], [Name]) VALUES (11, N'Весна')
SET IDENTITY_INSERT [dbo].[Proizvoditel] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([IDRoll], [Name]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([IDRoll], [Name]) VALUES (2, N'Клиент')
INSERT [dbo].[Roles] ([IDRoll], [Name]) VALUES (3, N'Менеджер')
INSERT [dbo].[Roles] ([IDRoll], [Name]) VALUES (4, N'Сотрудник')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'B025Y5', N'Блюдо', N'шт.', N'1890', N'5', 5, 2, 4, N'3', N'8', N'Блюдо декоративное flower 35 см Home Philosophy', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'B037T5', N'Блюдо', N'шт.', N'690', N'5', 5, 2, 4, N'2', N'14', N'Блюдо декоративное Flower 35 см', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'D034T5', N'Диффузор', N'шт.', N'800', N'20', 7, 1, 1, N'2', N'15', N'Диффузор Mikado intense Апельсин с корицей', N'D034T5.jpg')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'D044T5', N'Декор настенный', N'шт.', N'1790', N'5', 5, 2, 4, N'3', N'7', N'Декор настенный Фантазия 45х45х1 см', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'D826T5', N'Диффузор', N'шт.', N'600', N'5', 8, 1, 1, N'2', N'13', N'Диффузор True Scents 45 мл манго', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'D832R2', N'Растение', N'шт.', N'1000', N'10', 5, 2, 4, N'3', N'15', N'Декоративное растение 102 см', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'D947R5', N'Диффузор', N'шт.', N'500', N'5', 1, 1, 1, N'4', N'6', N'Диффузор Aroma Harmony Lavender', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'F837T5', N'Фоторамка', N'шт.', N'999', N'5', 4, 1, 5, N'2', N'15', N'Шкатулка для украшений из дерева Stowit', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'F903T5', N'Фоторамка', N'шт.', N'600', N'15', 4, 1, 5, N'2', N'3', N'Фоторамка Gallery 20х30 см', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'F928T5', N'Фоторамка', N'шт.', N'1590', N'25', 9, 2, 5, N'2', N'13', N'Фоторамка Prisma 10х10 см', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'F933T5', N'Кашпо', N'шт.', N'1400', N'20', 2, 1, 3, N'4', N'23', N'Настольное кашпо с автополивом Cube Color', N'F933T5.jpg')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'F937R4', N'Фоторамка', N'шт.', N'359', N'15', 4, 1, 5, N'4', N'17', N'Фоторамка 10х15 см Gallery серый с патиной/золотой', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'H023R8', N'Часы', N'шт.', N'5600', N'15', 9, 2, 7, N'2', N'6', N'Часы настенные Ribbon 30,5 см', N'H023R8.jpg')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'H937R3', N'Часы', N'шт.', N'999', N'10', 9, 1, 7, N'3', N'4', N'Часы настенные 6500 30,2 см', N'H937R3.jpg')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'K083T5', N'Аромат', N'шт.', N'2790', N'20', 3, 2, 1, N'2', N'6', N'Сменный аромат Figue noire 250 мл', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'K478R4', N'Аромат', N'шт.', N'3500', N'30', 3, 2, 1, N'4', N'4', N'Аромат для декобукета Esteban', N'K478R4.jpg')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'K937T4', N'Аромат', N'шт.', N'7900', N'25', 3, 2, 1, N'2', N'17', N'Деко-букет Кедр 250 мл', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'P846R4', N'Подставка', N'шт.', N'1400', N'15', 10, 2, 3, N'3', N'12', N'Подставка для цветочных горшков 55x25x35 см Valley', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'P927R2', N'Подставка', N'шт.', N'4000', N'15', 10, 2, 3, N'2', N'4', N'Подставка для цветочных горшков Valley', N'P927R2.jpg')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'P936E4', N'Подставка', N'шт.', N'3590', N'15', 9, 2, 3, N'4', N'9', N'Подставка для газет и журналов Zina', N'P936E4.jpg')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'R836R5', N'Шкатулка', N'шт.', N'8000', N'30', 9, 2, 8, N'5', N'3', N'Шкатулка для украшений из дерева Stowit', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'R922T5', N'Шкатулка', N'шт.', N'690', N'10', 5, 2, 8, N'2', N'4', N'Шкатулка из керамики Lana 6х7 см', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'S039T5', N'Свеча', N'шт.', N'250', N'10', 8, 1, 6, N'2', N'18', N'Свеча True Moods Feel happy', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'S563T4', N'Свеча', N'шт.', N'1000', N'20', 8, 1, 6, N'3', N'12', N'Свеча в стакане True Scents', N'S563T4.jpg')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'S936Y5', N'Свеча', N'шт.', N'299', N'15', 8, 1, 1, N'3', N'4', N'Свеча в стакане True Scents', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'S937T5', N'Подсвечник', N'шт.', N'2600', N'10', 6, 2, 1, N'3', N'23', N'Подсвечник 37 см', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'V432R6', N'Ваза', N'шт.', N'1990', N'10', 6, 2, 2, N'3', N'30', N'Ваза из фаянса 28,00 x 9,50 x 9,50 см', N'')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'V483R7', N'Ваза', N'шт.', N'100', N'15', 11, 1, 2, N'3', N'7', N'Ваза «Весна» 18 см стекло, цвет прозрачный', N'V483R7.jpg')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'V783T5', N'Ваза', N'шт.', N'1300', N'25', 5, 2, 2, N'2', N'13', N'Ваза из керамики Betty', N'V783T5.jpg')
INSERT [dbo].[Tovars] ([IdT], [Name], [UnitOnes], [Price], [PossibleDiscount], [IdProizvoditel], [IdPostavshik], [IdTypeT], [Discount], [CountStock], [Description], [Image]) VALUES (N'V937E4', N'Ваза', N'шт.', N'1999', N'15', 6, 1, 2, N'3', N'21', N'Ваза 18H2535S 30,5 см', N'')
GO
SET IDENTITY_INSERT [dbo].[TypeT] ON 

INSERT [dbo].[TypeT] ([IdTypeT], [Name]) VALUES (1, N'Ароматы для дома')
INSERT [dbo].[TypeT] ([IdTypeT], [Name]) VALUES (2, N'Вазы')
INSERT [dbo].[TypeT] ([IdTypeT], [Name]) VALUES (3, N'Горшки и подставки')
INSERT [dbo].[TypeT] ([IdTypeT], [Name]) VALUES (4, N'Интерьерные аксессуары')
INSERT [dbo].[TypeT] ([IdTypeT], [Name]) VALUES (5, N'Картины и фоторамки')
INSERT [dbo].[TypeT] ([IdTypeT], [Name]) VALUES (6, N'Свечи')
INSERT [dbo].[TypeT] ([IdTypeT], [Name]) VALUES (7, N'Часы')
INSERT [dbo].[TypeT] ([IdTypeT], [Name]) VALUES (8, N'Шкатулки и подставки')
SET IDENTITY_INSERT [dbo].[TypeT] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id_User], [FIO], [Login], [Password], [IDRoll]) VALUES (1, N'Яковлева Ярослава Даниэльевна', N'yakovleva23@mail.ru', N'dvR2M6', 4)
INSERT [dbo].[Users] ([Id_User], [FIO], [Login], [Password], [IDRoll]) VALUES (2, N'Анисимов Артём Святославович', N'anismoc1996@gmail.ru', N'kbP666h2BS', 4)
INSERT [dbo].[Users] ([Id_User], [FIO], [Login], [Password], [IDRoll]) VALUES (3, N'Лазарева Анастасия Львовна', N'bjcjsvnd4256@yandex.ru', N'hS3546G', 4)
INSERT [dbo].[Users] ([Id_User], [FIO], [Login], [Password], [IDRoll]) VALUES (4, N'Архипова Оливия Дмитриевна', N'bdfbfd2390183@yandex.ru', N'DU88c5Vhx5', 2)
INSERT [dbo].[Users] ([Id_User], [FIO], [Login], [Password], [IDRoll]) VALUES (5, N'Никонова Татьяна Захаровна', N'nikonova1257@mail.ru', N'VvT4mX4x65', 2)
INSERT [dbo].[Users] ([Id_User], [FIO], [Login], [Password], [IDRoll]) VALUES (6, N'Рябова Диана Павловна', N'hcejknvb@gmail.com', N'vyG64', 2)
INSERT [dbo].[Users] ([Id_User], [FIO], [Login], [Password], [IDRoll]) VALUES (7, N'Молчанов Савва Романович', N'molchanov@mail.ru', N'P9i76xN9Sn', 1)
INSERT [dbo].[Users] ([Id_User], [FIO], [Login], [Password], [IDRoll]) VALUES (8, N'Кузнецов Николай Георгиевич', N'nvbffj26882@gmail.com', N'ec36SMU78v', 1)
INSERT [dbo].[Users] ([Id_User], [FIO], [Login], [Password], [IDRoll]) VALUES (9, N'Ларин Максим Львович', N'larin@mail.ru', N'567B4tzuPH', 3)
INSERT [dbo].[Users] ([Id_User], [FIO], [Login], [Password], [IDRoll]) VALUES (10, N'Потапова Арина Давидовна', N'vdrvfdvd23839@gmail.com', N'M885CXh', 3)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PointOfIssue] FOREIGN KEY([IDPointOfIssue])
REFERENCES [dbo].[PointOfIssue] ([IDPointOfIssue])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PointOfIssue]
GO
ALTER TABLE [dbo].[Tovars]  WITH CHECK ADD  CONSTRAINT [FK_Tovars_Postavshik] FOREIGN KEY([IdPostavshik])
REFERENCES [dbo].[Postavshik] ([IdPostavshik])
GO
ALTER TABLE [dbo].[Tovars] CHECK CONSTRAINT [FK_Tovars_Postavshik]
GO
ALTER TABLE [dbo].[Tovars]  WITH CHECK ADD  CONSTRAINT [FK_Tovars_Proizvoditel] FOREIGN KEY([IdProizvoditel])
REFERENCES [dbo].[Proizvoditel] ([IdProizvoditel])
GO
ALTER TABLE [dbo].[Tovars] CHECK CONSTRAINT [FK_Tovars_Proizvoditel]
GO
ALTER TABLE [dbo].[Tovars]  WITH CHECK ADD  CONSTRAINT [FK_Tovars_TypeT] FOREIGN KEY([IdTypeT])
REFERENCES [dbo].[TypeT] ([IdTypeT])
GO
ALTER TABLE [dbo].[Tovars] CHECK CONSTRAINT [FK_Tovars_TypeT]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([IDRoll])
REFERENCES [dbo].[Roles] ([IDRoll])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
