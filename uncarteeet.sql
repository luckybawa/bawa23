USE [uncarte]
GO
/****** Object:  Table [dbo].[tbusr]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbusr](
	[usrcod] [int] IDENTITY(1,1) NOT NULL,
	[usreml] [varchar](100) NULL,
	[usrpwd] [varchar](100) NULL,
	[usrregdat] [datetime] NULL,
	[usrrol] [char](1) NULL,
 CONSTRAINT [PK_tbusr] PRIMARY KEY CLUSTERED 
(
	[usrcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbusr] ON
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpwd], [usrregdat], [usrrol]) VALUES (1, N'abc@gmail.com', N'1a09a0b5-f', CAST(0x0000A74E00ED0624 AS DateTime), N'E')
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpwd], [usrregdat], [usrrol]) VALUES (2, N'rana@gmail.com', N'rana', CAST(0x0000A74E00FEC779 AS DateTime), N'E')
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpwd], [usrregdat], [usrrol]) VALUES (3, N'admin@uncarte.com', N'admin', CAST(0x0000A6DA00000000 AS DateTime), N'A')
SET IDENTITY_INSERT [dbo].[tbusr] OFF
/****** Object:  Table [dbo].[tbsubcat]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbsubcat](
	[subcatcod] [int] IDENTITY(1,1) NOT NULL,
	[subcatnam] [varchar](100) NULL,
	[subcatcatcod] [int] NULL,
 CONSTRAINT [PK_tbsubcat] PRIMARY KEY CLUSTERED 
(
	[subcatcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbsubcat] ON
INSERT [dbo].[tbsubcat] ([subcatcod], [subcatnam], [subcatcatcod]) VALUES (1, N'SUV', 1)
INSERT [dbo].[tbsubcat] ([subcatcod], [subcatnam], [subcatcatcod]) VALUES (2, N'Novels', 2)
INSERT [dbo].[tbsubcat] ([subcatcod], [subcatnam], [subcatcatcod]) VALUES (3, N'TextBooks', 2)
INSERT [dbo].[tbsubcat] ([subcatcod], [subcatnam], [subcatcatcod]) VALUES (5, N'Mixers', 4)
INSERT [dbo].[tbsubcat] ([subcatcod], [subcatnam], [subcatcatcod]) VALUES (6, N'Egg Boiler', 4)
INSERT [dbo].[tbsubcat] ([subcatcod], [subcatnam], [subcatcatcod]) VALUES (7, N'VXI', 1)
SET IDENTITY_INSERT [dbo].[tbsubcat] OFF
/****** Object:  Table [dbo].[tbstu]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbstu](
	[stucod] [int] IDENTITY(205,1) NOT NULL,
	[stunam] [varchar](50) NULL,
	[stucol] [varchar](100) NULL,
	[sturolno] [varchar](50) NULL,
	[stutrgstrdat] [datetime] NULL,
	[stutrgenddat] [datetime] NULL,
	[stupic] [varchar](50) NULL,
	[stuusrnam] [varchar](50) NULL,
	[stupwd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[stucod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbstu] ON
INSERT [dbo].[tbstu] ([stucod], [stunam], [stucol], [sturolno], [stutrgstrdat], [stutrgenddat], [stupic], [stuusrnam], [stupwd]) VALUES (205, N'RANA', N'LPU PHAGWARA', N'55016', CAST(0x0000A76700000000 AS DateTime), CAST(0x0000A76F00000000 AS DateTime), N'.jpg', N'rana', N'rana')
SET IDENTITY_INSERT [dbo].[tbstu] OFF
/****** Object:  Table [dbo].[tbselprd]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbselprd](
	[selprdcod] [int] IDENTITY(1,1) NOT NULL,
	[selprdprdcod] [int] NULL,
	[selprdselcod] [int] NULL,
	[selprdprc] [float] NULL,
	[selprdlnk] [varchar](500) NULL,
 CONSTRAINT [PK_tbselprd] PRIMARY KEY CLUSTERED 
(
	[selprdcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbselprd] ON
INSERT [dbo].[tbselprd] ([selprdcod], [selprdprdcod], [selprdselcod], [selprdprc], [selprdlnk]) VALUES (1, 1, 4, 240, N'http://www.amazon.in/PETRICE-Deluxe-Electric-Boiler-Steamer/dp/B01MUV9IPZ/ref=sr_1_1?ie=UTF8&qid=1493016039&sr=8-1-spons&keywords=egg+boiler&psc=1&smid=A3SMGGFQAJUQEE')
SET IDENTITY_INSERT [dbo].[tbselprd] OFF
/****** Object:  Table [dbo].[tbsel]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbsel](
	[selcod] [int] IDENTITY(1,1) NOT NULL,
	[selnam] [varchar](100) NULL,
	[sellog] [varchar](100) NULL,
	[seltrm] [varchar](1000) NULL,
 CONSTRAINT [PK_tbsel] PRIMARY KEY CLUSTERED 
(
	[selcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbsel] ON
INSERT [dbo].[tbsel] ([selcod], [selnam], [sellog], [seltrm]) VALUES (1, N'Ebay', N'.jpg', N'Refurbished: Use only if noted in the Category-Specific Condition Guidelines. A refurbished product has been professionally restored to working order. Typically this means that the product has been inspected, cleaned, and repaired to meet manufacturer specifications. The item may or may not be in its original packaging. The manufacturer''s or refurbisher''s warranty must apply and should be included in the listing comments. Refurbished items are sometimes referred to as "remanufactured.')
INSERT [dbo].[tbsel] ([selcod], [selnam], [sellog], [seltrm]) VALUES (4, N'Amazon', N'.png', N' A brand-new, unused, unopened item in its original packaging, with all original packaging materials included. Original protective wrapping, if any, is intact. Original manufacturer''s warranty, if any, still applies, with warranty details included in the listing comments.')
SET IDENTITY_INSERT [dbo].[tbsel] OFF
/****** Object:  Table [dbo].[tbprdspc]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbprdspc](
	[prdspccod] [int] IDENTITY(1,1) NOT NULL,
	[prdspcprdcod] [int] NULL,
	[prdspctit] [varchar](200) NULL,
	[prdspcdsc] [varchar](2000) NULL,
 CONSTRAINT [PK_tbprdspc] PRIMARY KEY CLUSTERED 
(
	[prdspccod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbprdspc] ON
INSERT [dbo].[tbprdspc] ([prdspccod], [prdspcprdcod], [prdspctit], [prdspcdsc]) VALUES (1, 1, N'Power', N'adsfsddf')
INSERT [dbo].[tbprdspc] ([prdspccod], [prdspcprdcod], [prdspctit], [prdspcdsc]) VALUES (2, 1, N'Capacity', N'6 Eggs')
INSERT [dbo].[tbprdspc] ([prdspccod], [prdspcprdcod], [prdspctit], [prdspcdsc]) VALUES (3, 2, N'what is', N'thissssssssss')
INSERT [dbo].[tbprdspc] ([prdspccod], [prdspcprdcod], [prdspctit], [prdspcdsc]) VALUES (4, 8, N'Safty,Performance', N'Safety
Passenger Airbag 	1
Side Airbag-Front 	0
Side Airbag-Rear 	0
Child Safety Locks 	1
Brake Assist 	0
Ebd 	1 
Performance
Engine Displacement 	2198 cc
Power 	157.7 bhp
Mileage Highway 	12.62 kmpl
Seating Capacity 	7 seater
Fuel Type 	Diesel
Torque 	385Nm@1600-2500rpm ')
SET IDENTITY_INSERT [dbo].[tbprdspc] OFF
/****** Object:  Table [dbo].[tbprdrev]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbprdrev](
	[prdrevcod] [int] IDENTITY(1,1) NOT NULL,
	[prdrevprdcod] [int] NULL,
	[prdrevexpcod] [int] NULL,
	[prdrevdat] [datetime] NULL,
	[prdrevtit] [varchar](100) NULL,
	[prdrevdsc] [varchar](1000) NULL,
 CONSTRAINT [PK_tbprdrev] PRIMARY KEY CLUSTERED 
(
	[prdrevcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbprdrev] ON
INSERT [dbo].[tbprdrev] ([prdrevcod], [prdrevprdcod], [prdrevexpcod], [prdrevdat], [prdrevtit], [prdrevdsc]) VALUES (1, 2, 1, CAST(0x0000A75C00E1D848 AS DateTime), N'sagfdgsaf', N'zfc sdf  asd fa sdff asdg afg sad gas dg asdg sdff sdg')
SET IDENTITY_INSERT [dbo].[tbprdrev] OFF
/****** Object:  Table [dbo].[tbprdpic]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbprdpic](
	[prdpiccod] [int] IDENTITY(1,1) NOT NULL,
	[prdpicprdcod] [int] NULL,
	[prdpicpic] [varchar](100) NULL,
	[prdpicdsc] [varchar](1000) NULL,
 CONSTRAINT [PK_tbprdpic] PRIMARY KEY CLUSTERED 
(
	[prdpiccod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbprdpic] ON
INSERT [dbo].[tbprdpic] ([prdpiccod], [prdpicprdcod], [prdpicpic], [prdpicdsc]) VALUES (1, 1, N'.jpg', N'Cooking eggs exactly the way you like them has never been simpler or more foolproof. With this user-friendly machine you can prepare up to seven eggs')
INSERT [dbo].[tbprdpic] ([prdpiccod], [prdpicprdcod], [prdpicpic], [prdpicdsc]) VALUES (2, 1, N'.jpg', N'George Hrabovsky is the president of Madison Area Science and Technology (MAST), a nonprofit organization dedicated to scientific and technological research and education. He lives in Madison, Wisconsin')
INSERT [dbo].[tbprdpic] ([prdpiccod], [prdpicprdcod], [prdpicpic], [prdpicdsc]) VALUES (3, 1, N'.jpg', N'arqwerqwet')
INSERT [dbo].[tbprdpic] ([prdpiccod], [prdpicprdcod], [prdpicpic], [prdpicdsc]) VALUES (4, 2, N'.jpg', N'its sooooo funnny')
INSERT [dbo].[tbprdpic] ([prdpiccod], [prdpicprdcod], [prdpicpic], [prdpicdsc]) VALUES (5, 8, N'.jpg', N'The Dodge Avenger was a front-wheel drive, mid-sized sedan that was built by Dodge. The Dodge Avenger made its North American debut in 1994 as a two-door coupe, which was produced until 2000. It was re-introduced to the market as a four-door sports sedan starting in 2008. The 2014 model year marked the last production for the Avenger, as models for both the Dodge and Chrysler brands were consolidated into the single 2015 Chrysler 200 model,')
INSERT [dbo].[tbprdpic] ([prdpiccod], [prdpicprdcod], [prdpicpic], [prdpicdsc]) VALUES (6, 8, N'.jpg', N'It was re-introduced to the market as a four-door sports sedan starting in 2008. The 2014 model year marked the last production for the Avenger, as models for both the Dodge and Chrysler brands were consolidated into the single 2015 Chrysler 200 model,')
SET IDENTITY_INSERT [dbo].[tbprdpic] OFF
/****** Object:  Table [dbo].[tbprd]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbprd](
	[prdcod] [int] IDENTITY(1,1) NOT NULL,
	[prdtit] [varchar](200) NULL,
	[prddsc] [nvarchar](200) NULL,
	[prdreldat] [datetime] NULL,
	[prdsubcatcod] [int] NULL,
	[prdmrkprc] [float] NULL,
	[prdmanpiccod] [int] NULL,
 CONSTRAINT [PK_tbprd] PRIMARY KEY CLUSTERED 
(
	[prdcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbprd] ON
INSERT [dbo].[tbprd] ([prdcod], [prdtit], [prddsc], [prdreldat], [prdsubcatcod], [prdmrkprc], [prdmanpiccod]) VALUES (1, N'Keggs Best Eggs', N'Cooking eggs exactly the way you like them has never been simpler or more foolproof. With this user-friendly machine you can prepare up to seven eggs', CAST(0x0000A72900000000 AS DateTime), 6, 450, 4)
INSERT [dbo].[tbprd] ([prdcod], [prdtit], [prddsc], [prdreldat], [prdsubcatcod], [prdmrkprc], [prdmanpiccod]) VALUES (2, N'The Theoretical Minimum', N'Leonard Susskind has been the Felix Bloch Professor in Theoretical Physics at Stanford University since 1978. He lives in Palo Alto, California.
', CAST(0x0000A75B00000000 AS DateTime), 3, 3456, 2)
INSERT [dbo].[tbprd] ([prdcod], [prdtit], [prddsc], [prdreldat], [prdsubcatcod], [prdmrkprc], [prdmanpiccod]) VALUES (8, N'Ford Endeavour', N'Engine Displacement 	2198 cc
Power 	157.7 bhp
Mileage Highway 	12.62 kmpl
Seating Capacity 	7 seater
Fuel Type 	Diesel
Torque 	385Nm@1600-2500rpm ', CAST(0x0000A75200000000 AS DateTime), 1, 230000, 6)
SET IDENTITY_INSERT [dbo].[tbprd] OFF
/****** Object:  Table [dbo].[tbexp]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbexp](
	[expcod] [int] IDENTITY(1,1) NOT NULL,
	[expnam] [varchar](100) NULL,
	[expprf] [varchar](1000) NULL,
	[exppic] [varchar](50) NULL,
	[expcatcod] [int] NULL,
	[expusrcod] [int] NULL,
 CONSTRAINT [PK_tbexp] PRIMARY KEY CLUSTERED 
(
	[expcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbexp] ON
INSERT [dbo].[tbexp] ([expcod], [expnam], [expprf], [exppic], [expcatcod], [expusrcod]) VALUES (1, N'Hardeep Singh', N'Ford''s DNA boasts of amazing handling with an acceptable ride. This trait completely extends to the Figo. The suspension behaviour is very mature, classic European stuff', N'.jpg', 1, 1)
INSERT [dbo].[tbexp] ([expcod], [expnam], [expprf], [exppic], [expcatcod], [expusrcod]) VALUES (2, N' Mr Naveen Rana ', N'its so cool', N'.jpg', 2, 2)
SET IDENTITY_INSERT [dbo].[tbexp] OFF
/****** Object:  Table [dbo].[tbcat]    Script Date: 05/18/2017 16:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbcat](
	[catcod] [int] IDENTITY(1,1) NOT NULL,
	[catnam] [varchar](100) NULL,
	[catban] [varchar](100) NULL,
 CONSTRAINT [PK_tbcat] PRIMARY KEY CLUSTERED 
(
	[catcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbcat] ON
INSERT [dbo].[tbcat] ([catcod], [catnam], [catban]) VALUES (1, N'Cars', N'.jpg')
INSERT [dbo].[tbcat] ([catcod], [catnam], [catban]) VALUES (2, N'Books', N'.png')
INSERT [dbo].[tbcat] ([catcod], [catnam], [catban]) VALUES (4, N'KItchen Equipments', N'.jpg')
SET IDENTITY_INSERT [dbo].[tbcat] OFF
/****** Object:  StoredProcedure [dbo].[updusr]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updusr]
@usrcod int,
@usreml varchar(100),
@usrpwd varchar(100),
@usrregdat datetime,
@usrrol char(1)

AS

update tbusr set usreml=@usreml,usrpwd=@usrpwd,usrregdat=@usrregdat,usrrol=@usrrol where usrcod=@usrcod
GO
/****** Object:  StoredProcedure [dbo].[updsubcat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updsubcat]
@subcatcod int,
@subcatnam varchar(100),
@subcatcatcod int
AS
	update tbsubcat set subcatnam=@subcatnam,subcatcatcod=@subcatcatcod where subcatcod=@subcatcod
GO
/****** Object:  StoredProcedure [dbo].[updselprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updselprd]
 @selprdcod int,
 @selprdprdcod int,
 @selprdselcod int,
 @selprdprc float,
 @selprdlnk varchar(500)
AS
	update tbselprd set selprdprdcod=@selprdprdcod,selprdselcod=@selprdselcod,selprdprc=@selprdprc,selprdlnk=@selprdlnk where selprdcod=@selprdcod
GO
/****** Object:  StoredProcedure [dbo].[updsel]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updsel]
@selcod int,
@selnam varchar(100),
@sellog varchar(100),
@seltrm varchar(1000)
AS

update tbsel set selnam=@selnam,sellog=@sellog,seltrm=@seltrm where selcod=@selcod
GO
/****** Object:  StoredProcedure [dbo].[updprdspc]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updprdspc]
    @prdspccod int,
	@prdspcprdcod int,
	@prdspctit varchar(200),
	@prdspcdsc varchar(2000)
AS
	update tbprdspc set prdspcprdcod=@prdspcprdcod,prdspctit=@prdspctit,prdspcdsc=@prdspcdsc where prdspccod=@prdspccod
GO
/****** Object:  StoredProcedure [dbo].[updprdrev]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updprdrev]
    @prdrevcod int,
	@prdrevprdcod int,
	@prdrevexpcod int,
	@prdrevdat datetime,
	@prdrevtit varchar(100),
	@prdrevdsc varchar(1000)
AS
	update tbprdrev set prdrevprdcod=@prdrevprdcod,prdrevexpcod=@prdrevexpcod,prdrevdat=@prdrevdat,prdrevtit=@prdrevtit,prdrevdsc=@prdrevdsc where prdrevcod=@prdrevcod
GO
/****** Object:  StoredProcedure [dbo].[updprdpic]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updprdpic]

@prdpiccod int,
@prdpicprdcod int,
@prdpicpic varchar(100),
@prdpicdsc varchar(1000)
AS
update tbprdpic set prdpicprdcod=@prdpicprdcod,prdpicpic=@prdpicpic,prdpicdsc=@prdpicdsc where prdpiccod=@prdpiccod
GO
/****** Object:  StoredProcedure [dbo].[updprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updprd]
@prdcod int,
@prdtit varchar(200),
@prddsc nvarchar (2000),
@prdreldat datetime,
@prdsubcatcod int,
@prdmrkprc float
AS
update tbprd set prdtit=@prdtit,prddsc=@prddsc,prdreldat=@prdreldat,
prdsubcatcod=@prdsubcatcod,prdmrkprc=@prdmrkprc where prdcod=@prdcod
GO
/****** Object:  StoredProcedure [dbo].[updmanpic]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updmanpic]
	@prdcod int,
	@piccod int
AS
update tbprd set prdmanpiccod=@piccod where prdcod=@prdcod
GO
/****** Object:  StoredProcedure [dbo].[updexp]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updexp]
    @expcod int,
	@expnam varchar(100),
	@expprf varchar(1000),
	@exppic varchar(50),
	@expcatcod int,
	@expusrcod int
AS
update tbexp set expnam=@expnam,expprf=@expprf,exppic=@exppic,expcatcod=@expcatcod,expusrcod=@expusrcod where expcod=@expcod
GO
/****** Object:  StoredProcedure [dbo].[updcat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updcat]
	@catcod int,
	@catnam varchar(100),
	@catban varchar(100)
AS

update tbcat set catnam=@catnam,catban=@catban where catcod=@catcod
GO
/****** Object:  StoredProcedure [dbo].[srcprdbytit]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[srcprdbytit]
	@tit varchar(200)
AS
select prdcod,prdtit,SUBSTRING(prddsc,1,100) dsc,
prdreldat,prdmrkprc,(select cast(prdpiccod as varchar(50))
+prdpicpic from tbprdpic where prdpiccod=a.prdmanpiccod)
pic,catnam,subcatnam,(select count(*) from tbselprd where
selprdprdcod=a.prdcod)nos from tbprd a,tbcat,tbsubcat
where prdsubcatcod=subcatcod and subcatcatcod=catcod
and prdtit like @tit order by prdreldat desc
GO
/****** Object:  StoredProcedure [dbo].[srcprdbycat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[srcprdbycat]
	@subcatcod int
AS
select prdcod,prdtit,SUBSTRING(prddsc,1,100) dsc,
prdreldat,prdmrkprc,(select cast(prdpiccod as varchar(50))
+prdpicpic from tbprdpic where prdpiccod=a.prdmanpiccod)
pic,catnam,subcatnam,(select count(*) from tbselprd where
selprdprdcod=a.prdcod)nos from tbprd a,tbcat,tbsubcat
where prdsubcatcod=subcatcod and subcatcatcod=catcod
and prdsubcatcod=@subcatcod order by prdreldat desc
GO
/****** Object:  StoredProcedure [dbo].[srcprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[srcprd]
@subcatcod int
AS
select prdcod,prdtit,prdreldat,prdmrkprc,
(select cast(prdpiccod as varchar(50))+prdpicpic from tbprdpic
where prdpiccod=a.prdmanpiccod) pic,(select count(*) from
tbselprd where selprdprdcod=a.prdcod) nos from tbprd a
where prdsubcatcod=@subcatcod order by prdreldat desc;
GO
/****** Object:  StoredProcedure [dbo].[selbyprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selbyprd]
	@pcod int
AS
	select selcod, sellog,selprdprc,selprdlnk from tbsel,tbselprd where selprdselcod=selcod 
and selprdprdcod=@pcod
GO
/****** Object:  StoredProcedure [dbo].[ltsprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ltsprd]
AS
select top 9 prdcod,prdtit,SUBSTRING(prddsc,1,100) dsc,
prdreldat,prdmrkprc,(select cast(prdpiccod as varchar(50))
+prdpicpic from tbprdpic where prdpiccod=a.prdmanpiccod)
pic,catnam,subcatnam,(select count(*) from tbselprd where
selprdprdcod=a.prdcod)nos from tbprd a,tbcat,tbsubcat
where prdsubcatcod=subcatcod and subcatcatcod=catcod
order by prdreldat desc
GO
/****** Object:  StoredProcedure [dbo].[logstu]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[logstu]
	@stuusrnam varchar(50),
	@stupwd varchar(50)
AS
	declare @actpwd varchar(50)
	declare @r int
	select @actpwd=stupwd from tbstu where
	stuusrnam=@stuusrnam
	if @actpwd=@stupwd 
	select @r=stucod from tbstu where stuusrnam=@stuusrnam
	else
	set @r=-1
	return @r
GO
/****** Object:  StoredProcedure [dbo].[logincheck]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[logincheck]
	@eml varchar(50),
	@pwd varchar(50),
	@cod int output,
	@rol char(1) output
AS
declare @actpwd varchar(50)
select @actpwd=usrpwd from tbusr where usreml=@eml
if @actpwd=@pwd
begin
select @rol=usrrol from tbusr where usreml=@eml
if @rol='E'
select @cod=expcod from tbexp,tbusr where expusrcod=usrcod and usreml=@eml
else
select @cod=usrcod from tbusr where usreml=@eml
end
else
begin
  set @cod=-1
  set @rol='N'
end
GO
/****** Object:  StoredProcedure [dbo].[insusr]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insusr]
@usreml varchar(100),
@usrpwd varchar(100),
@usrregdat datetime,
@usrrol char(1)
AS
declare @r int
insert tbusr values(@usreml,@usrpwd,@usrregdat,@usrrol)
select @r=@@IDENTITY
return @r
GO
/****** Object:  StoredProcedure [dbo].[inssubcat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inssubcat]
 @subcatnam varchar(100),
 @subcatcatcod int
AS
	insert tbsubcat values(@subcatnam,@subcatcatcod)
GO
/****** Object:  StoredProcedure [dbo].[insstu]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insstu]
	@stunam varchar(50),
	@stucol varchar(50),
	@sturolno varchar(50),
	@stutrgstrdat datetime,
	@stutrgenddat datetime,
	@stupic varchar(50),
	@stuusrnam varchar(50),
	@stupwd varchar(50)
AS
declare @r int
insert into tbstu values(@stunam,@stucol,@sturolno,@stutrgstrdat,@stutrgenddat,@stupic,@stuusrnam,@stupwd)
select @r=@@IDENTITY
update tbstu set stuusrnam='cssoft'+cast(@r as varchar(50)) where stucod=@r
return @r
GO
/****** Object:  StoredProcedure [dbo].[insselprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insselprd]
 @selprdprdcod int,
 @selprdselcod int,
 @selprdprc float,
 @selprdlnk varchar(500)
AS
	insert tbselprd values(@selprdprdcod,@selprdselcod,@selprdprc,@selprdlnk)
GO
/****** Object:  StoredProcedure [dbo].[inssel]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inssel]
@selnam varchar(100),
@sellog varchar(100),
@seltrm varchar(1000)
AS
declare @r int
insert tbsel values(@selnam,@sellog,@seltrm)
set @r=@@IDENTITY
return @r
GO
/****** Object:  StoredProcedure [dbo].[insprdspc]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[insprdspc]
	@prdspcprdcod int,
	@prdspctit varchar(200),
	@prdspcdsc varchar(2000)
AS
	insert tbprdspc values(@prdspcprdcod,@prdspctit,@prdspcdsc)
GO
/****** Object:  StoredProcedure [dbo].[insprdrev]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insprdrev]
	@prdrevprdcod int,
	@prdrevexpcod int,
	@prdrevdat datetime,
	@prdrevtit varchar(100),
	@prdrevdsc varchar(1000)
AS
	insert tbprdrev values(@prdrevprdcod,@prdrevexpcod,@prdrevdat,@prdrevtit,@prdrevdsc)
GO
/****** Object:  StoredProcedure [dbo].[insprdpic]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insprdpic]

@prdpicprdcod int,
@prdpicpic varchar(100),
@prdpicdsc varchar(1000)
AS
declare @r int
insert tbprdpic values(@prdpicprdcod,@prdpicpic,@prdpicdsc)
select @r=@@IDENTITY
return @r
GO
/****** Object:  StoredProcedure [dbo].[insprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insprd]
@prdtit varchar(200),
@prddsc nvarchar(2000),
@prdreldat datetime,
@prdsubcatcod int,
@prdmrkprc float
AS
declare @r int
insert into tbprd(prdtit,prddsc,prdreldat,prdsubcatcod,prdmrkprc)
 values(@prdtit,@prddsc,@prdreldat,@prdsubcatcod,@prdmrkprc)
select @r=@@IDENTITY
return @r
GO
/****** Object:  StoredProcedure [dbo].[insexp]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insexp]
	@expnam varchar(100),
	@expprf varchar(1000),
	@exppic varchar(50),
	@expcatcod int,
	@expusrcod int
AS
declare @r int
insert tbexp values(@expnam,@expprf,@exppic,@expcatcod,@expusrcod)
set @r=@@IDENTITY
return @r
GO
/****** Object:  StoredProcedure [dbo].[inscat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inscat]
@catnam varchar(100),
@catban varchar(100)
AS
declare @r int
   insert tbcat values(@catnam,@catban)
   set @r=@@IDENTITY
   return @r
GO
/****** Object:  StoredProcedure [dbo].[fndusr]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndusr]
	@usrcod int
AS
	select * from tbusr where usrcod=@usrcod
GO
/****** Object:  StoredProcedure [dbo].[fndsubcat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndsubcat]
@subcatcod int

AS
	select * from tbsubcat where subcatcod=@subcatcod
GO
/****** Object:  StoredProcedure [dbo].[fndstu]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndstu]
	@stucod int
AS
	SELECT * from tbstu where stucod=@stucod
GO
/****** Object:  StoredProcedure [dbo].[fndselprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndselprd]
@selprdcod int
AS

select * from tbselprd where selprdcod=@selprdcod
GO
/****** Object:  StoredProcedure [dbo].[fndsel]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndsel]
  @selcod int
AS
select * from tbsel where selcod=@selcod
GO
/****** Object:  StoredProcedure [dbo].[fndprdspc]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndprdspc]
	@prdspccod int
AS
	select * from tbprdspc where prdspccod=@prdspccod
GO
/****** Object:  StoredProcedure [dbo].[fndprdrev]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndprdrev]
	@prdcod int,
	@expcod int
AS
select * from tbprdrev where prdrevprdcod=@prdcod and prdrevexpcod=@expcod
GO
/****** Object:  StoredProcedure [dbo].[fndprdpic]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndprdpic]
	@prdpiccod int
AS
select * from tbprdpic where prdpiccod=@prdpiccod
GO
/****** Object:  StoredProcedure [dbo].[fndprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndprd]
@prdcod int
AS
select prdcod,prdtit,prddsc,prdreldat,prdsubcatcod,prdmrkprc,
ISNULL(prdmanpiccod,0) from tbprd where prdcod=@prdcod
GO
/****** Object:  StoredProcedure [dbo].[fndexp]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndexp]
@expcod int
AS
	select * from tbexp where expcod=@expcod
GO
/****** Object:  StoredProcedure [dbo].[fndcat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndcat]
	@catcod int
AS
select * from tbcat where catcod=@catcod
GO
/****** Object:  StoredProcedure [dbo].[dspusr]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspusr]
	
AS
select * from tbusr
GO
/****** Object:  StoredProcedure [dbo].[dspsubcat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspsubcat]
(
	@catcod int
)
AS
select * from tbsubcat where subcatcatcod=@catcod
GO
/****** Object:  StoredProcedure [dbo].[dspselprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspselprd]
	@selcod int	
AS
select catnam,subcatnam,prdtit,selprdprc,selprdlnk,selprdcod,
catcod,subcatcod,prdcod from tbselprd,tbprd,tbcat,tbsubcat
where selprdprdcod=prdcod and prdsubcatcod=subcatcod and
subcatcatcod=catcod and selprdselcod=@selcod
GO
/****** Object:  StoredProcedure [dbo].[dspsel]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspsel]
  
AS
select * from tbsel
GO
/****** Object:  StoredProcedure [dbo].[dspprdspc]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspprdspc]
	@prdcod int
AS
select * from tbprdspc where prdspcprdcod=@prdcod
GO
/****** Object:  StoredProcedure [dbo].[dspprdrevdet]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspprdrevdet]
	@pcod int
AS
	select prdrevdat,prdrevtit,prdrevdsc from tbprdrev where prdrevprdcod=@pcod
GO
/****** Object:  StoredProcedure [dbo].[dspprdrev]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspprdrev]
	
AS
select * from tbprdrev
GO
/****** Object:  StoredProcedure [dbo].[dspprdpic]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspprdpic]
	@prdcod int
AS
select * from tbprdpic where prdpicprdcod=@prdcod
GO
/****** Object:  StoredProcedure [dbo].[dspprdforrev]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspprdforrev]
	@expcod int
AS
select prdcod,prdtit,prddsc,prdreldat,prdmrkprc,
(select cast(prdpiccod as varchar(50))+prdpicpic 
from tbprdpic where prdpiccod=a.prdmanpiccod) pic
,(select count(*) from tbprdrev where prdrevprdcod=
a.prdcod and prdrevexpcod=@expcod) sts from
tbprd a where prdsubcatcod in(select subcatcod 
from tbsubcat where subcatcatcod in(select expcatcod
from tbexp where expcod=@expcod) )order by prdreldat desc
GO
/****** Object:  StoredProcedure [dbo].[dspprddet]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspprddet]
	@pcod int
AS
	select  prdcod,prdtit,SUBSTRING(prddsc,1,100) dsc,
prdreldat,prdmrkprc,(select cast(prdpiccod as varchar(50))
+prdpicpic from tbprdpic where prdpiccod=a.prdmanpiccod)
pic from tbprd a where prdcod=@pcod
GO
/****** Object:  StoredProcedure [dbo].[dspprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspprd]

AS
select * from tbprd
GO
/****** Object:  StoredProcedure [dbo].[dspexp]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspexp]
	@cod int
AS
select * from tbexp where expcatcod=@cod
GO
/****** Object:  StoredProcedure [dbo].[dspcat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspcat]
	
AS
select * from tbcat
GO
/****** Object:  StoredProcedure [dbo].[delusr]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delusr]
@usrcod int
AS
delete from tbusr where usrcod=@usrcod
GO
/****** Object:  StoredProcedure [dbo].[delsubcat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delsubcat]
@subcatcod int
AS
	delete from tbsubcat where subcatcod=@subcatcod
GO
/****** Object:  StoredProcedure [dbo].[delselprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delselprd]
	@selprdcod int
AS
delete from tbselprd where selprdcod=@selprdcod
GO
/****** Object:  StoredProcedure [dbo].[delsel]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delsel]
  @selcod int
AS
delete from tbsel where selcod=@selcod
GO
/****** Object:  StoredProcedure [dbo].[delprdspc]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delprdspc]
@prdspccod int
AS
	delete from tbprdspc  where prdspccod=@prdspccod
GO
/****** Object:  StoredProcedure [dbo].[delprdrev]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delprdrev]
	@prdrevcod int
AS
delete from tbprdrev where prdrevcod=@prdrevcod
GO
/****** Object:  StoredProcedure [dbo].[delprdpic]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delprdpic]
@prdpiccod int
AS
	delete from tbprdpic where prdpiccod=@prdpiccod
GO
/****** Object:  StoredProcedure [dbo].[delprd]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delprd]

	@prdcod int
AS
delete from tbprd where prdcod=@prdcod
GO
/****** Object:  StoredProcedure [dbo].[delexp]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delexp]
@expcod int
AS
delete from tbexp where expcod=@expcod
GO
/****** Object:  StoredProcedure [dbo].[delcat]    Script Date: 05/18/2017 16:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delcat]
  @catcod int
AS
delete from  tbcat where catcod=@catcod
GO
