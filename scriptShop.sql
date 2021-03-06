USE [ShopNew]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201604242053480_DataMigration', N'Shop.UI.Migrations.Configuration', 0x1F8B0800000000000400ED5CDD6EE33616BE2FD0771074B52D522BC9A08B6E60CF20E324ADD1FC619C147B37A025DA162A51AA44A509167DB25EEC23ED2B2C2951324991122DC93F5314030C6291FCCEE1E147F290FAECFFFDF9DFF187D730B05E6092FA119AD867A353DB82C88D3C1FAD26768697DFFD607F78FFF557E36B2F7CB57E29EBBDA3F5484B944EEC35C6F185E3A4EE1A86201D85BE9B4469B4C423370A1DE045CEF9E9E9BF9CB3330712089B6059D6F85386B01FC2FC03F9388D900B639C81E02EF26090B2E7A4649EA35AF72084690C5C38B1E7EB281E3DCF4645CDD1CC83040ABFD9D665E003E2CE1C064BDB0208451860E2ECC5730AE73889D06A1E930720787A8B21A9B704410A59272E36D54DFB737A4EFBE36C1A96506E96E228DC12F0EC1D0B902337EF1466BB0A2009E1751E1FDAEB3C8C13FB328E3F4501E9BB6CEB621A24B49E36C823D6F4C462154E2A4A10E6D07F27D6340B7096C00982194E4070623D668BC0777F866F4FD1AF104D501604BC7FC44352263C208F1E932886097EFB0497CCEB99675B8ED8CE911B56CDB83645876608BF3BB7AD7B621C2C02580D3FD7F9398E12F823443001187A8F006398208A5112CC69B445FF2FAD11BE91F9635B77E0F516A2155E4FECF3EFFF695B37FE2BF4CA27CC8367E493E9461AE124830A0F25ABF7E0C55FE50E4BF609CD93D4B63EC1202F4DD77E5C4C8672D03EB31A374914D2CF15118A82CFF3284B5CDA854855FA049215C4A23B6367C3AD46C64D73A251A0AEC413110EC13F6ABBCE416555EA6217BA96269A29DB4CC3D2B63986F1281242500F3BAE1BB4E9DFEB46DDD68D9FA4B865F1207F1A2D1ECD966EC19E0C5D91407CF413BCF6C05B698C3E7BF24383154E02BB0E811F0CB0B01A582169C8D24F42588DFEC788CC2680B6F6F911A4E9EF51E2FD04D2F5CEA33D876E9610A2CD3108E39D5B7B5C4708DE67E1822E04FBB335D8D03CFD1EDD00974CD96B445BF5C6BB8DDC5FA30C5F238F32FC19BB75C21B020CE2CEA5EBC234BD216486DE34225976BFDD842EDA874E6CA601F0436D66433DFC5C5611521BAE4495DBF0C5AAE4A6C9A5DB68E5A36697CA2A75978A12AD4BAC785B972848B347AC46DDA1BC40EB4F513A50FA97C7BB5FFE9743FC9D48EC267BCC834B0176BEB6E7967E014136B4A90EACCCA75C3F56E6108760656E983C7EF13DBA231B9C4ECACA04DEA8BEFAE0D3CE7DC933ED209F9DFF30C80622270F7C37F76D7CFBB9A8A3ED659A46AE9FF351BCBE61C779D10D9286588D67FB220EDCAD00890661A61F132E12EB2420B6CC880774050388A175E916F7595390BAC0ABC780F4C03373A7DC4D3877E42B02D1AB6F6BC6083F6142A721A0697B4AE6948F709DCC3E72FD18044D41911A19AEFDB4BF15BC5C72056388E822D1D47B13BBEA9B046ABB32218D415B5CC60EC7A856A2F1D955C3D02A532D816AC5C5C1BEA8A6CAED945C63F9C8AEC8A688CB7ED8A608808961ED1DD73EE9C632E7B6E195D3E843D34DCADB95746389C64EE926C6658F741303F0C5D0AD3816B58DAE74463A34D9C443D901B6D17A50F6C834A1F74746B4228B236D306901930DD9C818E495AF16B410BE62C58183F8C9CE1C294B3C652250F039C4E2A17F9339CAB99DD3DC5E648B0A49E6530B207BC5A472A89825C60E95573A0D1EB1CDDB18B2BC926980640BB404C90DF506577AABC6D551BE769399D796A957DDA846B946DEB6EC9A83A80DB4BCE6885D34EBBE70F5A6ECBF367D34492039F7598C9B23A04AFA9421285D1E2C0625B1F43150E53426594DA7184899883206A5CB83C580F14A1F02C53E6BB0D3760A80B83B0E320DCAE379B5B0576563A7D0A8B0076347236619DF8138F6D18A13B7B027D6BC50B64CBF9B6FAFF6080B0CC74D15A28FCADBCA128E12B0825229314D3CCD5F445E010C16805E4E4CBDB0564DB98D6996DFD224BF53D587AE5C89CBDAF46FF65AAB5982A2D8F719C60DE961489386FC3E951B7D6D4B8BEA8C400012C5EDED340AB210E9D3177DEBE2BD09DFBE785247183B92EBB534A516A85ACA2846DD684CE4D930C4E848F9C2F683D406A08B7699E2F1F1D6A57D7A94F2BE8547D1DDC11C6CDC740945A7B994A7659DE692BAE56EE6122792E041B8C7E6581B19040FB5796A8E24EA1C7834B1C41C91891D7828F6684B0CEE7D790D8C2B334715250D3CA658628E28E9167848A9680B2F797582E0245FD0094F1351750D730B753D028F5E2FDD82E775658240F87A71076C85CF729939AA42BCC0032B8ACDB1374A06798738DA5D597B70EAB32D1787E63EFBB20661370BFF30DB3AF75A9B07E21E6F89C55E5CD7C0D8F3232493F604DA874CC575491F326910F4EB8EF04E595C761A5F84EB318517C5C2D2DEF4A25C8FB71D65774A8CDAA955AE5259AF4EAFD22975CC4E8CEDDFCBA81D218B2AB655869110EA2DC5301CD10AA3F96FC134F0215DC4CB0A7700F94B98E24210619F9F9E9D4BDFEA389E6F583869EA058A13B7E26B16E270ED416AE4D3A0B68A89B65434F02A40F40212770D544AF019F2E0EBC4FE4FDEEA22BF97A17FE58F4FAC59FA8CFCDF3252F09464D0FAA32E241C46A9DE74883C52B57F3E686DE19CFDFB73D1EAC47A48C88CB9B04E69107B7D45C0D470D16A0BC35B7FAFE0AF31516A7AFE72B6FC2304AFDFF0705D34FBBDC054BA7C8F3CC3BD75F99B15413FA1BBCBF0173E1E4482DF2B784A997D2F4485947E28BC4142A893CA77C1D2CAE455FC339A184AD97C17D7B492F97C79E8299837DF2ACB9607DB2A15E7BA2F76113ED8DE5A1350F79AD17591F416709D85D01D28F085A99095DB552E05EE2F321E0C7B4F1CDE91F0F8805A6359B3722095F13E1451ADAFDBBE6849F10185763595D1A1E4C3FB6591EE76F848B59B6652E1A3A01153961D4A16BC5F1AE9EE858F94464612E0A360D1C136B4FD73C878433BB8B8B72E9ED2BC9B912E861B74BBC5DD39391D2F2232DC45EE7699C6F710AB856BCDC25E035DAFDEA05E2DA7E8573129F4F2DF6633DBF48B6DBDEDF2E066931A2D688B88D84443DC6C57A3BFDC8BD25890446AA4E28DEB8F5EAE758CBA62B9BB2A217A73EED7F01AFC1845C43D3A2CB05BF9AAF6F814C33DBA3B1C9DB7D007D7DFA8921D89FB3D3CB227A6FE6A03417F1D0F4157D88BAA3A33B48CCA2D51F2A8AC225D2BDC410C3CB2515D26D85F021793627AFF997F313ABF6AA2B7F00BE8CDD04386E30C932EC3701108B734746B6DB29F8BA0459FC70F71FEBB14437481B8E9D37BE307F431F303AFF2FB4671BBA181A07B36BB6FA46389E9BDE3EAAD42BA8F9021100B5F956A3CC1300E0858FA80E6E00576F18DD0EF16AE80FBB6B9B6D281B40F8418F6F1950F5609085386B1694F3E120E7BE1EBFBFF03970DA4B516520000, N'6.1.3-40302')
/****** Object:  Table [dbo].[Sale]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[SaleId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DataSale] [datetime] NOT NULL,
	[Summa] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[SaleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerId] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (1, N'Asus')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (2, N'Acer')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (3, N'Dell')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName]) VALUES (4, N'Fujitsu')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
/****** Object:  Table [dbo].[Converter]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Converter](
	[ConverterId] [int] IDENTITY(1,1) NOT NULL,
	[CurrentDate] [date] NOT NULL,
	[OneUsd] [money] NOT NULL,
	[Hryvnia] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ConverterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Converter] ON
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (1, CAST(0xAA390B00 AS Date), 1.0000, 30.2287)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (2, CAST(0xAB390B00 AS Date), 1.0000, 28.0946)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (3, CAST(0xAC390B00 AS Date), 1.0000, 26.4655)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (4, CAST(0xAD390B00 AS Date), 1.0000, 25.5446)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (5, CAST(0xAE390B00 AS Date), 1.0000, 27.3947)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (6, CAST(0xB2390B00 AS Date), 1.0000, 27.2815)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (7, CAST(0xB3390B00 AS Date), 1.0000, 26.1805)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (8, CAST(0xB4390B00 AS Date), 1.0000, 25.7322)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (9, CAST(0xB5390B00 AS Date), 1.0000, 25.5414)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (10, CAST(0xB8390B00 AS Date), 1.0000, 25.5029)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (11, CAST(0xB9390B00 AS Date), 1.0000, 25.5237)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (12, CAST(0xBA390B00 AS Date), 1.0000, 25.7368)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (13, CAST(0xBB390B00 AS Date), 1.0000, 26.7689)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (14, CAST(0xBC390B00 AS Date), 1.0000, 26.6392)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (15, CAST(0xBF390B00 AS Date), 1.0000, 26.5053)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (16, CAST(0xC0390B00 AS Date), 1.0000, 26.2668)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (17, CAST(0xC1390B00 AS Date), 1.0000, 26.3132)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (18, CAST(0xC2390B00 AS Date), 1.0000, 26.3842)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (19, CAST(0xC3390B00 AS Date), 1.0000, 26.2921)
INSERT [dbo].[Converter] ([ConverterId], [CurrentDate], [OneUsd], [Hryvnia]) VALUES (20, CAST(0xC6390B00 AS Date), 1.0000, 26.2667)
SET IDENTITY_INSERT [dbo].[Converter] OFF
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateBirthday] [datetime] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers] 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [DateBirthday], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (4, N'Владислав', N'Бакало', CAST(0x0000A5F30003B489 AS DateTime), NULL, 0, N'AFee73g72Bndu3KuseigUfpiUEmOYpA3IdwJixUJFyJUM8k8kW8kv9eBW4lrycMNvw==', N'73588de3-64a7-44c5-810d-2811683f319e', NULL, 0, 0, NULL, 0, 0, N'vladbakalo@gmail.com')
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
/****** Object:  Table [dbo].[Salepos]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salepos](
	[SaleposId] [int] IDENTITY(1,1) NOT NULL,
	[SaleId] [int] NOT NULL,
	[GoodsId] [int] NOT NULL,
	[CountGoods] [decimal](18, 3) NOT NULL,
	[Summa] [money] NOT NULL,
 CONSTRAINT [PK_Salepos] PRIMARY KEY CLUSTERED 
(
	[SaleposId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Good]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Good](
	[GoodId] [int] IDENTITY(1,1) NOT NULL,
	[GoodName] [varchar](100) NOT NULL,
	[ManufacturerId] [int] NULL,
	[PriceUsd] [money] NOT NULL,
	[Rest] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GoodId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Good] ON
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (1, N'Asus X553MA', 1, 283.4900, 12)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (2, N'Asus Transformer Book', 1, 359.4500, 11)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (3, N'Asus X555LN', 1, 821.3200, 2)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (4, N'Asus Zenbook', 1, 1203.3400, 4)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (5, N'Asus ROG G751JM', 1, 1756.2300, 0)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (6, N'Acer Aspire ES1-111M-C09T', 2, 208.0000, 0)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (7, N'Acer Aspire E5-511G-PG1A', 2, 358.4500, 12)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (8, N'Acer Aspire E1-771G-33118G1TMnii', 2, 489.4200, 11)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (9, N'Dell Inspiron 3531', 3, 277.4900, 10)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (10, N'Dell Inspiron 3541', 3, 300.4500, 7)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (11, N'Dell Latitude 3540 ', 3, 477.3200, 15)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (12, N'Dell XPS 12 Ultrabook', 3, 1331.3400, 16)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (13, N'Dell Inspiron 5537', 3, 647.2300, 2)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (14, N'Dell Inspiron 5748', 3, 647.2300, 21)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (15, N'Fujitsu Lifebook NH532', 4, 678.2300, 22)
INSERT [dbo].[Good] ([GoodId], [GoodName], [ManufacturerId], [PriceUsd], [Rest]) VALUES (16, N'Fujitsu Lifebook A512', 4, 409.2300, 11)
SET IDENTITY_INSERT [dbo].[Good] OFF
/****** Object:  Table [dbo].[Photo]    Script Date: 04/25/2016 01:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[PhotoId] [int] IDENTITY(1,1) NOT NULL,
	[GoodId] [int] NOT NULL,
	[PathPhoto] [nvarchar](128) NOT NULL,
	[IsMain] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Photo] ON
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (1, 1, N'/Images/Asus-X553MA_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (2, 1, N'/Images/Asus-X553MA_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (3, 1, N'/Images/Asus-X553MA_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (4, 2, N'/Images/Asus-Transformer-Book_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (5, 2, N'/Images/Asus-Transformer-Book_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (6, 2, N'/Images/Asus-Transformer-Book_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (7, 3, N'/Images/Asus-X555LN_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (8, 3, N'/Images/Asus-X555LN_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (9, 3, N'/Images/Asus-X555LN_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (10, 4, N'/Images/Asus-Zenbook_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (11, 4, N'/Images/Asus-Zenbook_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (12, 4, N'/Images/Asus-Zenbook_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (13, 5, N'/Images/Asus-ROG-G751JM_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (14, 5, N'/Images/Asus-ROG-G751JM_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (15, 5, N'/Images/Asus-ROG-G751JM_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (16, 6, N'/Images/Acer-Aspire-ES1-111M-C09T_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (17, 6, N'/Images/Acer-Aspire-ES1-111M-C09T_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (18, 6, N'/Images/Acer-Aspire-ES1-111M-C09T_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (19, 7, N'/Images/Acer-Aspire-E5-511G-PG1A_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (20, 7, N'/Images/Acer-Aspire-E5-511G-PG1A_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (21, 7, N'/Images/Acer-Aspire-E5-511G-PG1A_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (22, 8, N'/Images/Acer-Aspire-E1-771G-33118G1TMnii_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (23, 8, N'/Images/Acer-Aspire-E1-771G-33118G1TMnii_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (24, 8, N'/Images/Acer-Aspire-E1-771G-33118G1TMnii_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (25, 9, N'/Images/Dell-Inspiron-3531_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (26, 9, N'/Images/Dell-Inspiron-3531_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (27, 9, N'/Images/Dell-Inspiron-3531_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (28, 10, N'/Images/Dell-Inspiron-3541_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (29, 10, N'/Images/Dell-Inspiron-3541_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (30, 10, N'/Images/Dell-Inspiron-3541_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (31, 11, N'/Images/Dell-Latitude-3540_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (32, 11, N'/Images/Dell-Latitude-3540_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (33, 11, N'/Images/Dell-Latitude-3540_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (34, 12, N'/Images/Dell-XPS-12-Ultrabook_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (35, 12, N'/Images/Dell-XPS-12-Ultrabook_2.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (36, 12, N'/Images/Dell-XPS-12-Ultrabook_3.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (37, 13, N'/Images/Dell-Inspiron-5537_1', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (38, 13, N'/Images/Dell-Inspiron-5537_2', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (39, 13, N'/Images/Dell-Inspiron-5537_3', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (40, 14, N'/Images/Dell-Inspiron-5748_1', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (41, 14, N'/Images/Dell-Inspiron-5748_2', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (42, 14, N'/Images/Dell-Inspiron-5748_3', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (43, 15, N'/Images/Asus-X553MA_1.jpg', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (44, 15, N'/Images/Asus-X553MA_1.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (45, 15, N'/Images/Asus-X553MA_1.jpg', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (46, 16, N'/Images/Fujitsu-Lifebook-NH532_1', 1)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (47, 16, N'/Images/Fujitsu-Lifebook-NH532_2', 0)
INSERT [dbo].[Photo] ([PhotoId], [GoodId], [PathPhoto], [IsMain]) VALUES (48, 16, N'/Images/Fujitsu-Lifebook-NH532_3', 0)
SET IDENTITY_INSERT [dbo].[Photo] OFF
/****** Object:  Default [DF__Sale__DataSale__1ED998B2]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Sale] ADD  DEFAULT (getdate()) FOR [DataSale]
GO
/****** Object:  Default [DF__Converter__Curre__1A14E395]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Converter] ADD  DEFAULT (getdate()) FOR [CurrentDate]
GO
/****** Object:  Default [DF__Converter__OneUs__1B0907CE]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Converter] ADD  DEFAULT ((1)) FOR [OneUsd]
GO
/****** Object:  Default [DF__Salepos__Summa__1FCDBCEB]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Salepos] ADD  DEFAULT ((1)) FOR [Summa]
GO
/****** Object:  Default [DF__Good__PriceUsd__1BFD2C07]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Good] ADD  DEFAULT ((0)) FOR [PriceUsd]
GO
/****** Object:  Default [DF__Good__Rest__1CF15040]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Good] ADD  DEFAULT ((0)) FOR [Rest]
GO
/****** Object:  Default [DF__Photo__IsMain__1DE57479]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Photo] ADD  DEFAULT ((0)) FOR [IsMain]
GO
/****** Object:  Check [CK__Good__Rest__239E4DCF]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Good]  WITH CHECK ADD CHECK  (([Rest]>=(0)))
GO
/****** Object:  Check [CK__Good__Rest__3C69FB99]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Good]  WITH CHECK ADD CHECK  (([Rest]>=(0)))
GO
/****** Object:  ForeignKey [FK_Salepos_Sale]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Salepos]  WITH CHECK ADD  CONSTRAINT [FK_Salepos_Sale] FOREIGN KEY([SaleId])
REFERENCES [dbo].[Sale] ([SaleId])
GO
ALTER TABLE [dbo].[Salepos] CHECK CONSTRAINT [FK_Salepos_Sale]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK__Good__Manufactur__20C1E124]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Good]  WITH CHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([ManufacturerId])
GO
/****** Object:  ForeignKey [FK__Good__Manufactur__3A81B327]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Good]  WITH CHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([ManufacturerId])
GO
/****** Object:  ForeignKey [FK__Photo__GoodId__21B6055D]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD FOREIGN KEY([GoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
/****** Object:  ForeignKey [FK__Photo__GoodId__3B75D760]    Script Date: 04/25/2016 01:11:05 ******/
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD FOREIGN KEY([GoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
