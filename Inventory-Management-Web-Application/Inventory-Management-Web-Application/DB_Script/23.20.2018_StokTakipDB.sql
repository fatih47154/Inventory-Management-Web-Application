USE [StokTakipDB]
GO
/****** Object:  Table [dbo].[AltKategori]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[AnaKategori]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[ArizaDurum]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[Ayarlar]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[Birim]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[ErisimRol]    Script Date: 23.12.2018 16:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErisimRol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RolID] [int] NULL,
	[ErisimID] [int] NULL,
 CONSTRAINT [PK_ErisimRol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IslemErisim]    Script Date: 23.12.2018 16:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IslemErisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adı] [nvarchar](100) NULL,
	[Controller] [nvarchar](100) NULL,
	[Action] [nvarchar](100) NULL,
	[MenuList] [nvarchar](100) NULL,
 CONSTRAINT [PK_IslemErisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KategoriRol]    Script Date: 23.12.2018 16:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KategoriRol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RolID] [int] NULL,
	[KategoriID] [int] NULL,
 CONSTRAINT [PK_KategoriRol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[MenuRol]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[Personel]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[Rol]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[Tedarikci]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[TeslimAlanPersonel]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[Urun]    Script Date: 23.12.2018 16:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[ID] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[UrunBirim]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[UrunCikis]    Script Date: 23.12.2018 16:59:00 ******/
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
/****** Object:  Table [dbo].[UrunGiris]    Script Date: 23.12.2018 16:59:00 ******/
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
	[UrunSeriNo] [nvarchar](100) NULL,
 CONSTRAINT [PK_UrunGiris] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YazılımUrun]    Script Date: 23.12.2018 16:59:00 ******/
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
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (9, N'İşletim Sistemleri', N'Yazılım Ürünleri', 7)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (10, N'Anti Virus Programları', N'Yazılım Ürünleri', 7)
SET IDENTITY_INSERT [dbo].[AltKategori] OFF
SET IDENTITY_INSERT [dbo].[AnaKategori] ON 

INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (1, N'Donanım', N'Bilgisayar Parçaları')
INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (3, N'Ofis', N'Ofis Malzemeleri ve kırtasiye ürünleri')
INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (6, N'Oyun', N'En güzel Oyunlar')
INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (7, N'Yazılım', N'Yazılım Ürünleri')
SET IDENTITY_INSERT [dbo].[AnaKategori] OFF
SET IDENTITY_INSERT [dbo].[ArizaDurum] ON 

INSERT [dbo].[ArizaDurum] ([ID], [UrunID], [VerilisTarihi], [TahminiGelisTarihi], [GarantiFirma], [KargoNo], [GarantiVerenKisiID], [Adet], [aktif]) VALUES (2, 7, CAST(N'2018-12-05 00:00:00.000' AS DateTime), CAST(N'2018-12-26 00:00:00.000' AS DateTime), N'Cangullar A.Ş', N'123543223', 3, 3, 0)
INSERT [dbo].[ArizaDurum] ([ID], [UrunID], [VerilisTarihi], [TahminiGelisTarihi], [GarantiFirma], [KargoNo], [GarantiVerenKisiID], [Adet], [aktif]) VALUES (3, 12, CAST(N'2018-12-14 00:00:00.000' AS DateTime), CAST(N'2018-12-30 00:00:00.000' AS DateTime), N'Beykozlar İnşaat', N'137643453645', 4, 10, 1)
INSERT [dbo].[ArizaDurum] ([ID], [UrunID], [VerilisTarihi], [TahminiGelisTarihi], [GarantiFirma], [KargoNo], [GarantiVerenKisiID], [Adet], [aktif]) VALUES (4, 7, CAST(N'2018-12-20 00:00:00.000' AS DateTime), CAST(N'2018-12-23 00:00:00.000' AS DateTime), N'Beykozlar İnşaat', N'137643453645', 5, 13, 1)
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
SET IDENTITY_INSERT [dbo].[ErisimRol] ON 

INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (10, 1, 2)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (11, 1, 3)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (14, 4, 1)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (15, 4, 2)
SET IDENTITY_INSERT [dbo].[ErisimRol] OFF
SET IDENTITY_INSERT [dbo].[IslemErisim] ON 

INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action], [MenuList]) VALUES (1, N'Ayarlar Güncelle', N'Admin', N'Ayarlar', N'IAyarlar')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action], [MenuList]) VALUES (2, N'Kullanıcı Ekle', N'Kullanici', N'Ekle', N'IKullaniciEkle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action], [MenuList]) VALUES (3, N'Kullanıcı Sil', N'Kullanici', N'Sil', N'IKullaniciSil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action], [MenuList]) VALUES (4, N'Kullanıcı Güncelle', N'Kullanici', N'Guncelle', N'IKullaniciGuncelle')
SET IDENTITY_INSERT [dbo].[IslemErisim] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (1, N'Kullanıcı İşlemleri', N'icon-group', NULL, NULL, NULL, 1, N'KullaniciIslemleri')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (2, N'Profil Tanımı/Listesi', NULL, 1, N'Kullanici', N'ProfilListesi', 0, N'ProfilTanimi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (3, N'Kullanıcı Listesi', NULL, 1, N'Kullanici', N'Listesi', 0, N'KullaniciListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (4, N'Kullanıcı Ekle', NULL, 1, N'Kullanici', N'ekle', 0, N'KullaniciEkle')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (5, N'Personel Listesi', NULL, 1, N'Personel', N'TaListesi', 0, N'taPersonelListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (6, N'Personel Ekle', NULL, 1, N'Personel', N'TaEkle', 0, N'taPersonelEkle')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (7, N'Kategori İşlemleri', N'icon-briefcase', NULL, NULL, NULL, 1, N'KategoriIslemleri')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (8, N'Ana Kategori Listesi', NULL, 7, N'Kategori', N'AnaKategoriListesi', 0, N'AnaKategoriListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (9, N'Ana Kategori Tanımı', NULL, 7, N'Kategori', N'AnaKategoriTanimi', 0, N'AnaKategoriTanimi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (10, N'Alt Kategori Listesi', NULL, 7, N'Kategori', N'AltKategoriListesi', 0, N'AltKategoriListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (11, N'Alt Kategori Tanımı', NULL, 7, N'Kategori', N'AltKategoriTanimi', 0, N'AltKategoriTanimi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (12, N'Ürün İşlemleri', N'icon-tasks', NULL, NULL, NULL, 1, N'UrunIslemleri')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (13, N'Ürün Listesi', NULL, 12, N'Urun', N'Listesi', 0, N'UrunListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (14, N'Yeni Ürün Girişi', NULL, 12, N'Urun', N'Ekle', 0, N'UrunEkle')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (15, N'Ürün Girişleri', NULL, 12, N'Urun', N'urunGirisleri', 0, N'urunGirisleri')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (16, N'Ürün Çıkışları', NULL, 12, N'Urun', N'UrunCikislar', 0, N'UrunCikislar')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (17, N'Yazılım Ürün İşlemleri', N'icon-windows', NULL, NULL, NULL, 1, N'YazilimUrunIslemleri')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (18, N'Yazılım Listesi', NULL, 17, N'YazilimUrun', N'Listesi', 0, N'YazilimUrunListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (19, N'Yeni Yazılım Girişi', NULL, 17, N'YazilimUrun', N'Ekle', 0, N'YazilimUrunEkle')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (20, N'Yazılım Girişleri', NULL, 17, N'YazilimUrun', N'urunGirisleri', 0, N'YazilimUrunGirisler')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (21, N'Yazılım Çıkışları', NULL, 17, N'YazilimUrun', N'UrunCikislar', 0, N'YazilimUrunCikislar')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (22, N'Ürün Arıza İşlemleri', N'icon-bug', NULL, NULL, NULL, 1, N'UrunAriziIslemleri')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (23, N'Garantideki Ürünler', NULL, 22, N'Urun', N'GarantiListesi', 0, N'GarantiListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (24, N'Eski Kayıtlar', NULL, 22, N'Urun', N'EskiGarantiListesi', 0, N'EskiGarantiListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (25, N'Tedarikçi İşlemleri', N'icon-dropbox', NULL, NULL, NULL, 1, N'TedarikciIslemleri')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (26, N'Tedarikçi Listesi', NULL, 25, N'Tedarikci', N'Listesi', 0, N'TedarikciListesi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (27, N'Tedarikçi Ekle', NULL, 25, N'Tedarikci', N'Ekle', 0, N'TedarikciEkle')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (28, N'Raporlar', N'icon-print', NULL, NULL, NULL, 1, N'Raporlar')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (29, N'Ürün Raporu', NULL, 28, N'Rapor', N'Urun', 0, N'RaporUrun')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (30, N'Çıkan Ürün Raporu', NULL, 28, N'Rapor', N'UrunCikis', 0, N'RaporCikanUrun')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (31, N'Yazılım Raporu', NULL, 28, N'Rapor', N'YazilimUrun', 0, N'RaporYazilimUrun')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (32, N'Çıkan Yazılım Raporu', NULL, 28, N'Rapor', N'CikanYazilimUrun', 0, N'RaporCikanYazilimUrun')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (33, N'Tanımlar', N'icon-hdd', NULL, NULL, NULL, 1, N'Tanimlar')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (34, N'Personel Birim Tanımı', NULL, 33, N'Tanim', N'TeslimBirim', 0, N'TeslimBirim')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (35, N'Ürün Birim Tanımı', NULL, 33, N'Tanim', N'UrunBirimTanimi', 0, N'UrunBirimTanimi')
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [MenuList]) VALUES (36, N'Ayarlar', N'icon-cogs', NULL, N'Admin', N'Ayarlar', 0, N'Ayarlar')
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuRol] ON 

INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (97, 3, 1)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (98, 3, 2)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (99, 3, 35)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (100, 3, 36)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (233, 2, 1)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (234, 2, 2)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (235, 2, 3)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (236, 2, 4)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (237, 2, 6)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (238, 2, 7)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (239, 2, 33)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (240, 2, 34)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (241, 2, 35)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (242, 2, 36)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (349, 1, 1)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (350, 1, 2)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (351, 1, 3)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (352, 1, 4)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (353, 1, 5)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (354, 1, 6)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (355, 1, 7)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (356, 1, 8)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (357, 1, 9)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (358, 1, 10)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (359, 1, 11)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (360, 1, 12)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (361, 1, 13)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (362, 1, 14)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (363, 1, 15)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (364, 1, 16)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (365, 1, 17)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (366, 1, 18)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (367, 1, 19)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (368, 1, 20)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (369, 1, 21)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (370, 1, 22)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (371, 1, 23)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (372, 1, 24)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (373, 1, 25)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (374, 1, 26)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (375, 1, 27)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (376, 1, 28)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (377, 1, 29)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (378, 1, 30)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (379, 1, 31)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (380, 1, 32)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (381, 1, 33)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (382, 1, 34)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (383, 1, 35)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (384, 1, 36)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (394, 4, 5)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (395, 4, 6)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (396, 4, 7)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (397, 4, 8)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (398, 4, 10)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (399, 4, 12)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (400, 4, 13)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (401, 4, 17)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (402, 4, 18)
SET IDENTITY_INSERT [dbo].[MenuRol] OFF
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Email], [Sifre], [Tel], [RolID]) VALUES (2, N'Hamza', N'Taş', N'hamza.tas610@gmail.com', N'123', N'05346682748', 1)
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Email], [Sifre], [Tel], [RolID]) VALUES (3, N'Erdi', N'Yalçın', N'erdiyalcin@duzce.edu.tr', N'123', N'05411233696', 1)
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Email], [Sifre], [Tel], [RolID]) VALUES (4, N'Mahmut', N'Uçar', N'mahmut.ucar@gmail.com', N'123', N'05349635415', 4)
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Email], [Sifre], [Tel], [RolID]) VALUES (5, N'Mehmet', N'ÖZDEMİR', N'mehmetozcelik@gmail.com', N'123', N'05396680585', 1)
SET IDENTITY_INSERT [dbo].[Personel] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (1, N'Admin', N'Tüm Yetkileri Açık')
INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (2, N'Teknisyen', N'Yalnızca Garanti')
INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (3, N'LDAP', N'LDAP ile giriş yapanlar')
INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (4, N'Akçakoca', N'Akçakocamyo daki kişilerin yetkisi')
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

INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [StokMiktari], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (7, N'31000201815', N'masa', 4, 20, N'yok', 5, CAST(N'2018-12-12' AS Date), 2, 2)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [StokMiktari], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (12, N'61000201812', N'Casper', 6, 24, N'Bilgisayar Parçaları', 5, CAST(N'2018-12-12' AS Date), 2, 2)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [StokMiktari], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (13, N'71000201813', N'kırmızı havlular', 7, 10, N'Ofis Malzemeleri', 7, CAST(N'2018-12-12' AS Date), 2, 2)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [StokMiktari], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (14, N'61000201814', N'Dell Büyük kasalardan', 6, 9, N'Bilgisayar Parçaları', 5, CAST(N'2018-12-12' AS Date), 2, 2)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [StokMiktari], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (15, N'61000201815', N'Oyun Canavarı', 6, 12, N'yok', 5, CAST(N'2018-12-20' AS Date), 4, 2)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [StokMiktari], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (16, N'61000201816', N'Oyun canavarı 2', 6, 13, N'12', 5, CAST(N'2018-12-20' AS Date), 2, 2)
SET IDENTITY_INSERT [dbo].[Urun] OFF
SET IDENTITY_INSERT [dbo].[UrunBirim] ON 

INSERT [dbo].[UrunBirim] ([ID], [Adi]) VALUES (5, N'Adet')
INSERT [dbo].[UrunBirim] ([ID], [Adi]) VALUES (6, N'Kg')
INSERT [dbo].[UrunBirim] ([ID], [Adi]) VALUES (7, N'Metre')
SET IDENTITY_INSERT [dbo].[UrunBirim] OFF
SET IDENTITY_INSERT [dbo].[UrunCikis] ON 

INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (2, 12, 2, 1, CAST(N'2018-12-07 00:00:00.000' AS DateTime), 3, N'Tüm Yetkileri Açık', NULL, 3019)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (3, 13, 1, 1, CAST(N'2018-12-07 00:00:00.000' AS DateTime), 3, N'Tüm Yetkileri Açık', NULL, 3019)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (4, 13, 4, 1, CAST(N'2018-12-27 00:00:00.000' AS DateTime), 3, N'Yalnızca Garanti', NULL, 3022)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (5, 7, 1, 2, CAST(N'2018-12-04 00:00:00.000' AS DateTime), 2, N'Yazılım Ürünleri', NULL, 3023)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (6, 12, 1, 2, CAST(N'2018-12-04 00:00:00.000' AS DateTime), 2, N'Yazılım Ürünleri', NULL, 3023)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (7, 13, 1, 2, CAST(N'2018-12-04 00:00:00.000' AS DateTime), 2, N'Yazılım Ürünleri', NULL, 3023)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (8, 7, 7, 2, CAST(N'2018-12-22 00:00:00.000' AS DateTime), 2, N'Yalnızca Garanti', NULL, 3026)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (9, NULL, 2, 1, CAST(N'2018-12-30 00:00:00.000' AS DateTime), 2, N'yok', 3, 3027)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (10, NULL, 2, 1, CAST(N'2018-12-14 00:00:00.000' AS DateTime), 2, N'En güzel Oyunlar', 3, 3028)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (11, 7, 2, 1, CAST(N'2018-12-19 00:00:00.000' AS DateTime), 3, N'Yazılım Ürünleri', NULL, 3029)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (12, 7, 2, 2, CAST(N'2018-12-20 00:00:00.000' AS DateTime), 3, N'Ofis Malzemeleri', NULL, 3030)
INSERT [dbo].[UrunCikis] ([ID], [UrunID], [CikanMictar], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi]) VALUES (13, 14, 1, 2, CAST(N'2018-12-20 00:00:00.000' AS DateTime), 3, N'Ofis Malzemeleri', NULL, 3030)
SET IDENTITY_INSERT [dbo].[UrunCikis] OFF
SET IDENTITY_INSERT [dbo].[UrunGiris] ON 

INSERT [dbo].[UrunGiris] ([ID], [UrunID], [AlinanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [UrunSeriNo]) VALUES (5, NULL, 6, 2, N'yok', 1, 3, CAST(N'2018-12-14' AS Date), NULL)
INSERT [dbo].[UrunGiris] ([ID], [UrunID], [AlinanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [UrunSeriNo]) VALUES (6, NULL, 3, 2, N'yok', 2, NULL, CAST(N'2018-12-17' AS Date), NULL)
INSERT [dbo].[UrunGiris] ([ID], [UrunID], [AlinanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [UrunSeriNo]) VALUES (7, NULL, 3, 2, N'yok', 2, NULL, CAST(N'2018-12-17' AS Date), NULL)
INSERT [dbo].[UrunGiris] ([ID], [UrunID], [AlinanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [UrunSeriNo]) VALUES (8, 14, 10, 2, N'Bilgisayar Parçaları', 2, NULL, CAST(N'2018-12-13' AS Date), NULL)
INSERT [dbo].[UrunGiris] ([ID], [UrunID], [AlinanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [UrunSeriNo]) VALUES (9, NULL, 6, 2, N'İşletim Sistemi', 1, 5, CAST(N'2018-12-13' AS Date), NULL)
INSERT [dbo].[UrunGiris] ([ID], [UrunID], [AlinanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [UrunSeriNo]) VALUES (10, 15, 12, 4, N'yok', 2, NULL, CAST(N'2018-12-20' AS Date), NULL)
INSERT [dbo].[UrunGiris] ([ID], [UrunID], [AlinanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [UrunSeriNo]) VALUES (12, 7, 33, 5, N'Ofis Malzemeleri', 2, NULL, CAST(N'2018-12-20' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[UrunGiris] OFF
SET IDENTITY_INSERT [dbo].[YazılımUrun] ON 

INSERT [dbo].[YazılımUrun] ([ID], [UrunID], [UrunAdi], [Aciklama], [LisansBaslangicTarihi], [LisansBitisTarihi], [KeyAdet], [UrunSeriNo], [LisansUyari], [altKategoriID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (3, N'dsad', N'Fry Cry 4', N'Çok güzel oyun', CAST(N'2015-10-10 00:00:00.000' AS DateTime), CAST(N'2019-10-27 00:00:00.000' AS DateTime), 18, N'151001098', N'305', 8, CAST(N'2018-12-12' AS Date), 2, 1)
INSERT [dbo].[YazılımUrun] ([ID], [UrunID], [UrunAdi], [Aciklama], [LisansBaslangicTarihi], [LisansBitisTarihi], [KeyAdet], [UrunSeriNo], [LisansUyari], [altKategoriID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (4, N'41000201814', N'Avast Anti Virus', N'anti virus programı', CAST(N'2018-12-21 00:00:00.000' AS DateTime), CAST(N'2018-12-30 00:00:00.000' AS DateTime), 4, N'151001098', NULL, 4, CAST(N'2018-12-12' AS Date), 2, 1)
INSERT [dbo].[YazılımUrun] ([ID], [UrunID], [UrunAdi], [Aciklama], [LisansBaslangicTarihi], [LisansBitisTarihi], [KeyAdet], [UrunSeriNo], [LisansUyari], [altKategoriID], [EklenmeTarihi], [PersonelID], [TedarikciID]) VALUES (5, N'71000201815', N'Windows 10 Pro', N'İşletim Sistemi', CAST(N'2017-10-03 00:00:00.000' AS DateTime), CAST(N'2018-12-15 00:00:00.000' AS DateTime), 6, N'151001020', NULL, 7, CAST(N'2018-12-12' AS Date), 2, 1)
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
ALTER TABLE [dbo].[ErisimRol]  WITH CHECK ADD  CONSTRAINT [FK_ErisimRol_IslemErisim] FOREIGN KEY([ErisimID])
REFERENCES [dbo].[IslemErisim] ([ID])
GO
ALTER TABLE [dbo].[ErisimRol] CHECK CONSTRAINT [FK_ErisimRol_IslemErisim]
GO
ALTER TABLE [dbo].[ErisimRol]  WITH CHECK ADD  CONSTRAINT [FK_ErisimRol_Rol] FOREIGN KEY([RolID])
REFERENCES [dbo].[Rol] ([ID])
GO
ALTER TABLE [dbo].[ErisimRol] CHECK CONSTRAINT [FK_ErisimRol_Rol]
GO
ALTER TABLE [dbo].[KategoriRol]  WITH CHECK ADD  CONSTRAINT [FK_KategoriRol_AltKategori] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[AltKategori] ([ID])
GO
ALTER TABLE [dbo].[KategoriRol] CHECK CONSTRAINT [FK_KategoriRol_AltKategori]
GO
ALTER TABLE [dbo].[KategoriRol]  WITH CHECK ADD  CONSTRAINT [FK_KategoriRol_Rol] FOREIGN KEY([RolID])
REFERENCES [dbo].[Rol] ([ID])
GO
ALTER TABLE [dbo].[KategoriRol] CHECK CONSTRAINT [FK_KategoriRol_Rol]
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
