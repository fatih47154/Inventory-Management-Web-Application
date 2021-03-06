USE [StokTakipDB]
GO
/****** Object:  Table [dbo].[AltKategori]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AltKategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](100) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[AnaKategorID] [int] NULL,
 CONSTRAINT [PK_AltKategori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnaKategori]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnaKategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](100) NOT NULL,
	[Aciklama] [nvarchar](500) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArizaDurum]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArizaDurum](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[VerilisTarihi] [datetime] NULL,
	[TahminiGelisTarihi] [datetime] NULL,
	[GarantiFirma] [nvarchar](100) NULL,
	[KargoNo] [nvarchar](100) NULL,
	[GarantiVerenKisiID] [int] NULL,
	[Adet] [int] NULL,
	[aktif] [bit] NULL,
 CONSTRAINT [PK_ArizaDurum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ayarlar]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ayarlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[YazilimUrun] [int] NULL,
	[UrunStok] [int] NULL,
	[YazilimUrunStok] [int] NULL,
 CONSTRAINT [PK_Ayarlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Birim]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Birim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Birim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](100) NULL,
	[Icon] [nvarchar](100) NULL,
	[ParentMenuID] [int] NULL,
	[Controller] [nvarchar](50) NULL,
	[Action] [nvarchar](50) NULL,
	[AcilirMenu] [bit] NULL,
	[MenuList] [nvarchar](100) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuRol]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuRol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RolID] [int] NULL,
	[MenuID] [int] NULL,
 CONSTRAINT [PK_MenuRol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](100) NULL,
	[Soyadi] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Sifre] [nvarchar](100) NULL,
	[Tel] [nvarchar](100) NULL,
	[RolID] [int] NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [nvarchar](100) NULL,
	[Aciklama] [nvarchar](500) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikci]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikci](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirmaAdi] [nvarchar](100) NULL,
	[FirmaTel] [nvarchar](20) NULL,
	[FirmaAdres] [nvarchar](500) NULL,
	[FirmaMail] [nvarchar](100) NULL,
	[YetkiliAdi] [nvarchar](100) NULL,
	[YetkiliSoyadi] [nvarchar](100) NULL,
	[YetkiliUnvani] [nvarchar](100) NULL,
	[YetkiliTel] [nvarchar](20) NULL,
	[YetkiliMail] [nvarchar](100) NULL,
 CONSTRAINT [PK_Tedarikci] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeslimAlanPersonel]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeslimAlanPersonel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](100) NULL,
	[Soyadi] [nvarchar](100) NULL,
	[TeslimBirimID] [int] NULL,
	[Tel] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_TeslimAlanPersonel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunSeriNo] [nvarchar](100) NULL,
	[UrunKodu] [nvarchar](50) NULL,
	[UrunAdi] [nvarchar](100) NULL,
	[altKategoriID] [int] NULL,
	[StokMiktari] [int] NULL,
	[Aciklama] [nvarchar](500) NULL,
	[UrunBirimID] [int] NULL,
	[EklenmeTarihi] [date] NULL,
	[PersonelID] [int] NULL,
	[TedarikciID] [int] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunBirim]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunBirim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](100) NULL,
 CONSTRAINT [PK_UrunBirim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunCikis]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunCikis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[CikanMictar] [int] NULL,
	[TeslimAlanKisiID] [int] NULL,
	[TeslimTarihi] [datetime] NULL,
	[TeslimVerenID] [int] NULL,
	[Aciklama] [nvarchar](500) NULL,
	[YazilimUrunID] [int] NULL,
	[CikisNumarasi] [int] NULL,
 CONSTRAINT [PK_UrunCikis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunGiris]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunGiris](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[AlinanMiktar] [int] NULL,
	[AlanPerID] [int] NULL,
	[Aciklama] [nvarchar](500) NULL,
	[TedarikciID] [int] NULL,
	[YazilimUrunID] [int] NULL,
	[GirisTarihi] [date] NULL,
 CONSTRAINT [PK_UrunGiris] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YazılımUrun]    Script Date: 13.12.2018 00:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YazılımUrun](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [nvarchar](100) NULL,
	[UrunAdi] [nvarchar](100) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[LisansBaslangicTarihi] [datetime] NULL,
	[LisansBitisTarihi] [datetime] NULL,
	[KeyAdet] [int] NULL,
	[UrunSeriNo] [nvarchar](100) NULL,
	[LisansUyari] [nvarchar](100) NULL,
	[altKategoriID] [int] NULL,
	[EklenmeTarihi] [date] NULL,
	[PersonelID] [int] NULL,
	[TedarikciID] [int] NULL,
 CONSTRAINT [PK_YazılımUrun] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AltKategori] ON 

INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (3, N'call of duty', N'En güzel Oyunlar', 6)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (4, N'Masalar', N'En güzel masalar', 3)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (5, N'Savaş Oyunları', N'En güzel Oyunlar', 6)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (6, N'Kasalar', N'Bilgisayar Parçaları', 1)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (7, N'Cam Sileceği', N'Ofis Malzemeleri', 3)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (8, N'fry Cry', N'En güzel Oyunlar', 6)
SET IDENTITY_INSERT [dbo].[AltKategori] OFF
SET IDENTITY_INSERT [dbo].[AnaKategori] ON 

INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (1, N'Donanım', N'Bilgisayar Parçaları')
INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (3, N'Ofis', N'Ofis Malzemeleri ve kırtasiye ürünleri')
INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (6, N'Oyun', N'En güzel Oyunlar')
SET IDENTITY_INSERT [dbo].[AnaKategori] OFF
SET IDENTITY_INSERT [dbo].[ArizaDurum] ON 

INSERT [dbo].[ArizaDurum] ([ID], [UrunID], [VerilisTarihi], [TahminiGelisTarihi], [GarantiFirma], [KargoNo], [GarantiVerenKisiID], [Adet], [aktif]) VALUES (2, 7, CAST(N'2018-12-05T00:00:00.000' AS DateTime), CAST(N'2018-12-26T00:00:00.000' AS DateTime), N'Cangullar A.Ş', N'123543223', 3, 3, 0)
SET IDENTITY_INSERT [dbo].[ArizaDurum] OFF
SET IDENTITY_INSERT [dbo].[Ayarlar] ON 

INSERT [dbo].[Ayarlar] ([ID], [YazilimUrun], [UrunStok], [YazilimUrunStok]) VALUES (1, 15, 5, 5)
SET IDENTITY_INSERT [dbo].[Ayarlar] OFF
SET IDENTITY_INSERT [dbo].[Birim] ON 

INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (8, N'Eğitim Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (11, N'Teknoloji Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (12, N'Fen-Edebiyat Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (14, N'Orman Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (15, N'Spor Bilimleri Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (16, N'İşletme Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (17, NULL)
SET IDENTITY_INSERT [dbo].[Birim] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (1, N'Ürün İşlemleri', N'icon-book', NULL, NULL, NULL, 1, N'UrunIslemleri')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (2, N'Ürün Listesi', NULL, 1, N'Urun', N'Listesi', 0, N'UrunListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (3, N'Yazılım Listesi', NULL, 1, N'Urun', N'YazilimListesi', 0, N'YazilimListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (4, N'Kullanıcı İşlemleri', N'icon-laptop', NULL, NULL, NULL, 1, N'KullaniciIslemleri')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (5, N'Profil Tanımı/Listesi', NULL, 4, N'Kullanici', N'ProfilListesi', 0, N'ProfilTanimi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (6, N'Kullanıcı Ekle', NULL, 4, N'Kullanici', N'KullaniciEkle', 0, N'KullaniciEkle')
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuRol] ON 

INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (25, 1, 3)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (26, 1, 5)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (27, 1, 6)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (28, 2, 3)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (29, 2, 4)
SET IDENTITY_INSERT [dbo].[MenuRol] OFF
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Email], [Sifre], [Tel], [RolID]) VALUES (2, N'Hamza', N'Taş', N'hamza.tas610@gmail.com', N'123', N'05346682748', 1)
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Email], [Sifre], [Tel], [RolID]) VALUES (3, N'Erdi', N'Yalçın', N'erdiyalcin@duzce.edu.tr', N'123', N'05411233696', 1)
SET IDENTITY_INSERT [dbo].[Personel] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (1, N'Admin', N'Tüm Yetkileri Açık')
INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (2, N'Teknisyen', N'Yalnızca Garanti')
SET IDENTITY_INSERT [dbo].[Rol] OFF
SET IDENTITY_INSERT [dbo].[Tedarikci] ON 

INSERT [dbo].[Tedarikci] ([ID], [FirmaAdi], [FirmaTel], [FirmaAdres], [FirmaMail], [YetkiliAdi], [YetkiliSoyadi], [YetkiliUnvani], [YetkiliTel], [YetkiliMail]) VALUES (1, N'Eker', N'0300000000', N'fevzi çakmak mah. 13.sok. no:15', N'eker@eker.com', N'Mehmet', N'Eker', N'Firma Sahibi', N'05596987895', N'mehmeteker@eker.com')
INSERT [dbo].[Tedarikci] ([ID], [FirmaAdi], [FirmaTel], [FirmaAdres], [FirmaMail], [YetkiliAdi], [YetkiliSoyadi], [YetkiliUnvani], [YetkiliTel], [YetkiliMail]) VALUES (2, N'Yavuzlar Ticaret', N'03804123258', N'Düzce merkez', N'yavuzlar@gmail.com', N'Yavuz', N'lar', N'Patron', N'05489633215', N'yuvuzlarr@gmail.com')
SET IDENTITY_INSERT [dbo].[Tedarikci] OFF
SET IDENTITY_INSERT [dbo].[TeslimAlanPersonel] ON 

INSERT [dbo].[TeslimAlanPersonel] ([ID], [Adi], [Soyadi], [TeslimBirimID], [Tel], [Email]) VALUES (1, N'Abdullah', N'Küçüker', 11, N'05349635415', N'abdullah.kucuker@gmail.com')
INSERT [dbo].[TeslimAlanPersonel] ([ID], [Adi], [Soyadi], [TeslimBirimID], [Tel], [Email]) VALUES (2, N'Fatih', N'Kayaalp', 17, N'05349635415', N'erdiyalcin@duzce.edu.tr')
SET IDENTITY_INSERT [dbo].[TeslimAlanPersonel] OFF
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([ID], [UrunSeriNo], [UrunKodu], [UrunAdi], [altKategoriID], [StokMiktari], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (7, N'151001011', N'31000201815', N'masa', 3, 4, N'yok', 6, NULL, NULL, NULL)
INSERT [dbo].[Urun] ([ID], [UrunSeriNo], [UrunKodu], [UrunAdi], [altKategoriID], [StokMiktari], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (12, N'121001141', N'61000201812', N'Casper', 6, 34, N'Bilgisayar Parçaları', 5, NULL, NULL, NULL)
INSERT [dbo].[Urun] ([ID], [UrunSeriNo], [UrunKodu], [UrunAdi], [altKategoriID], [StokMiktari], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (13, N'121001141', N'71000201813', N'kırmızı havlular', 7, 10, N'Ofis Malzemeleri', 7, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Urun] OFF
SET IDENTITY_INSERT [dbo].[UrunBirim] ON 

INSERT [dbo].[UrunBirim] ([ID], [Adi]) VALUES (5, N'Adet')
INSERT [dbo].[UrunBirim] ([ID], [Adi]) VALUES (6, N'Kg')
INSERT [dbo].[UrunBirim] ([ID], [Adi]) VALUES (7, N'Metre')
SET IDENTITY_INSERT [dbo].[UrunBirim] OFF
SET IDENTITY_INSERT [dbo].[UrunCikis] ON 

INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (2, 12, 2, 1, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 3, N'Tüm Yetkileri Açık', NULL, 3019)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (3, 13, 1, 1, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 3, N'Tüm Yetkileri Açık', NULL, 3019)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (4, 13, 4, 1, CAST(N'2018-12-27T00:00:00.000' AS DateTime), 3, N'Yalnızca Garanti', NULL, 3022)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (5, 7, 1, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 2, N'Yazılım Ürünleri', NULL, 3023)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (6, 12, 1, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 2, N'Yazılım Ürünleri', NULL, 3023)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (7, 13, 1, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 2, N'Yazılım Ürünleri', NULL, 3023)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (8, 7, 7, 2, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 2, N'Yalnızca Garanti', NULL, 3026)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (9, NULL, 2, 1, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 2, N'yok', 3, 3027)
SET IDENTITY_INSERT [dbo].[UrunCikis] OFF
SET IDENTITY_INSERT [dbo].[UrunGiris] ON 

INSERT [dbo].[UrunGiris] ([ID], [UrunID], [AlinanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi]) VALUES (5, NULL, 6, 2, N'yok', 1, 3, CAST(N'2018-12-14' AS Date))
INSERT [dbo].[UrunGiris] ([ID], [UrunID], [AlinanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi]) VALUES (6, NULL, 3, 2, N'yok', 2, NULL, CAST(N'2018-12-17' AS Date))
INSERT [dbo].[UrunGiris] ([ID], [UrunID], [AlinanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi]) VALUES (7, NULL, 3, 2, N'yok', 2, NULL, CAST(N'2018-12-17' AS Date))
SET IDENTITY_INSERT [dbo].[UrunGiris] OFF
SET IDENTITY_INSERT [dbo].[YazılımUrun] ON 

INSERT [dbo].[YazılımUrun] ([ID], [UrunID], [UrunAdi], [Aciklama], [LisansBaslangicTarihi], [LisansBitisTarihi], [KeyAdet], [UrunSeriNo], [LisansUyari], [altKategoriID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (3, N'dsad', N'sdaas', N'asdsad', CAST(N'2015-10-10T00:00:00.000' AS DateTime), CAST(N'2019-10-27T00:00:00.000' AS DateTime), 20, N'sdadasdsadas', N'305', 8, NULL, NULL, NULL)
INSERT [dbo].[YazılımUrun] ([ID], [UrunID], [UrunAdi], [Aciklama], [LisansBaslangicTarihi], [LisansBitisTarihi], [KeyAdet], [UrunSeriNo], [LisansUyari], [altKategoriID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (4, N'41000201814', N'sdasdasd', N'asdasdas', CAST(N'2018-12-21T00:00:00.000' AS DateTime), CAST(N'2018-12-30T00:00:00.000' AS DateTime), 4, N'sddsaasd', NULL, 4, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[YazılımUrun] OFF
ALTER TABLE [dbo].[AltKategori]  WITH CHECK ADD  CONSTRAINT [FK_AltKategori_AnaKategori] FOREIGN KEY([AnaKategorID])
REFERENCES [dbo].[AnaKategori] ([ID])
GO
ALTER TABLE [dbo].[AltKategori] CHECK CONSTRAINT [FK_AltKategori_AnaKategori]
GO
ALTER TABLE [dbo].[ArizaDurum]  WITH CHECK ADD  CONSTRAINT [FK_ArizaDurum_Personel] FOREIGN KEY([GarantiVerenKisiID])
REFERENCES [dbo].[Personel] ([ID])
GO
ALTER TABLE [dbo].[ArizaDurum] CHECK CONSTRAINT [FK_ArizaDurum_Personel]
GO
ALTER TABLE [dbo].[ArizaDurum]  WITH CHECK ADD  CONSTRAINT [FK_ArizaDurum_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([ID])
GO
ALTER TABLE [dbo].[ArizaDurum] CHECK CONSTRAINT [FK_ArizaDurum_Urun]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Menu] FOREIGN KEY([ParentMenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Menu]
GO
ALTER TABLE [dbo].[MenuRol]  WITH CHECK ADD  CONSTRAINT [FK_MenuRol_Menu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[MenuRol] CHECK CONSTRAINT [FK_MenuRol_Menu]
GO
ALTER TABLE [dbo].[MenuRol]  WITH CHECK ADD  CONSTRAINT [FK_MenuRol_Rol] FOREIGN KEY([RolID])
REFERENCES [dbo].[Rol] ([ID])
GO
ALTER TABLE [dbo].[MenuRol] CHECK CONSTRAINT [FK_MenuRol_Rol]
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_Rol] FOREIGN KEY([RolID])
REFERENCES [dbo].[Rol] ([ID])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_Rol]
GO
ALTER TABLE [dbo].[TeslimAlanPersonel]  WITH CHECK ADD  CONSTRAINT [FK_TeslimAlanPersonel_Birim] FOREIGN KEY([TeslimBirimID])
REFERENCES [dbo].[Birim] ([ID])
GO
ALTER TABLE [dbo].[TeslimAlanPersonel] CHECK CONSTRAINT [FK_TeslimAlanPersonel_Birim]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_AltKategori] FOREIGN KEY([altKategoriID])
REFERENCES [dbo].[AltKategori] ([ID])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_AltKategori]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_UrunBirim] FOREIGN KEY([UrunBirimID])
REFERENCES [dbo].[UrunBirim] ([ID])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_UrunBirim]
GO
ALTER TABLE [dbo].[UrunCikis]  WITH CHECK ADD  CONSTRAINT [FK_UrunCikis_Personel] FOREIGN KEY([TeslimVerenID])
REFERENCES [dbo].[Personel] ([ID])
GO
ALTER TABLE [dbo].[UrunCikis] CHECK CONSTRAINT [FK_UrunCikis_Personel]
GO
ALTER TABLE [dbo].[UrunCikis]  WITH CHECK ADD  CONSTRAINT [FK_UrunCikis_TeslimAlanPersonel] FOREIGN KEY([TeslimAlanKisiID])
REFERENCES [dbo].[TeslimAlanPersonel] ([ID])
GO
ALTER TABLE [dbo].[UrunCikis] CHECK CONSTRAINT [FK_UrunCikis_TeslimAlanPersonel]
GO
ALTER TABLE [dbo].[UrunCikis]  WITH CHECK ADD  CONSTRAINT [FK_UrunCikis_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([ID])
GO
ALTER TABLE [dbo].[UrunCikis] CHECK CONSTRAINT [FK_UrunCikis_Urun]
GO
ALTER TABLE [dbo].[UrunCikis]  WITH CHECK ADD  CONSTRAINT [FK_UrunCikis_YazılımUrun1] FOREIGN KEY([YazilimUrunID])
REFERENCES [dbo].[YazılımUrun] ([ID])
GO
ALTER TABLE [dbo].[UrunCikis] CHECK CONSTRAINT [FK_UrunCikis_YazılımUrun1]
GO
ALTER TABLE [dbo].[UrunGiris]  WITH CHECK ADD  CONSTRAINT [FK_UrunGiris_Personel] FOREIGN KEY([AlanPerID])
REFERENCES [dbo].[Personel] ([ID])
GO
ALTER TABLE [dbo].[UrunGiris] CHECK CONSTRAINT [FK_UrunGiris_Personel]
GO
ALTER TABLE [dbo].[UrunGiris]  WITH CHECK ADD  CONSTRAINT [FK_UrunGiris_Tedarikci] FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikci] ([ID])
GO
ALTER TABLE [dbo].[UrunGiris] CHECK CONSTRAINT [FK_UrunGiris_Tedarikci]
GO
ALTER TABLE [dbo].[UrunGiris]  WITH CHECK ADD  CONSTRAINT [FK_UrunGiris_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([ID])
GO
ALTER TABLE [dbo].[UrunGiris] CHECK CONSTRAINT [FK_UrunGiris_Urun]
GO
ALTER TABLE [dbo].[UrunGiris]  WITH CHECK ADD  CONSTRAINT [FK_UrunGiris_YazılımUrun1] FOREIGN KEY([YazilimUrunID])
REFERENCES [dbo].[YazılımUrun] ([ID])
GO
ALTER TABLE [dbo].[UrunGiris] CHECK CONSTRAINT [FK_UrunGiris_YazılımUrun1]
GO
ALTER TABLE [dbo].[YazılımUrun]  WITH CHECK ADD  CONSTRAINT [FK_YazılımUrun_AltKategori] FOREIGN KEY([altKategoriID])
REFERENCES [dbo].[AltKategori] ([ID])
GO
ALTER TABLE [dbo].[YazılımUrun] CHECK CONSTRAINT [FK_YazılımUrun_AltKategori]
GO
