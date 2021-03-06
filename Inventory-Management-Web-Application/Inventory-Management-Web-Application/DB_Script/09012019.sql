USE [StokTakipDB]
GO
/****** Object:  Table [dbo].[AltKategori]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[AnaKategori]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[ArizaDurum]    Script Date: 9.01.2019 10:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArizaDurum](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VerilisTarihi] [datetime] NULL,
	[TahminiGelisTarihi] [datetime] NULL,
	[GarantiFirma] [nvarchar](100) NULL,
	[KargoNo] [nvarchar](100) NULL,
	[GarantiVerenKisiID] [int] NULL,
	[Aktif] [bit] NULL,
	[stkID] [int] NULL,
 CONSTRAINT [PK_ArizaDurum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArizaEskiKayitlar]    Script Date: 9.01.2019 10:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArizaEskiKayitlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArizaDurumID] [int] NULL,
	[GarantiAlanID] [int] NULL,
	[StokEklenmeTarihi] [datetime] NULL,
 CONSTRAINT [PK_ArizaEskiKayitlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ayarlar]    Script Date: 9.01.2019 10:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ayarlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[YazilimUrun] [int] NULL,
	[UrunStok] [int] NULL,
	[YazilimUrunStok] [int] NULL,
	[mailUserName] [nvarchar](100) NULL,
	[mailPassword] [nvarchar](100) NULL,
	[mailHost] [nvarchar](100) NULL,
	[mailSSL] [int] NULL,
	[mailPort] [int] NULL,
 CONSTRAINT [PK_Ayarlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Birim]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[ErisimRol]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[IslemErisim]    Script Date: 9.01.2019 10:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IslemErisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adı] [nvarchar](100) NULL,
	[Controller] [nvarchar](100) NULL,
	[Action] [nvarchar](100) NULL,
 CONSTRAINT [PK_IslemErisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KategoriRol]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[Menu]    Script Date: 9.01.2019 10:28:16 ******/
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
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuRol]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[Personel]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[Rol]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[Tedarikci]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[TeslimAlanPersonel]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[Urun]    Script Date: 9.01.2019 10:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunKodu] [nvarchar](50) NULL,
	[UrunAdi] [nvarchar](100) NULL,
	[altKategoriID] [int] NULL,
	[Aciklama] [nvarchar](500) NULL,
	[UrunBirimID] [int] NULL,
	[EklenmeTarihi] [date] NULL,
	[PersonelID] [int] NULL,
	[TedarikciID] [int] NULL,
	[Aktif] [bit] NULL,
	[SilenKisiID] [int] NULL,
	[SilmeTarihi] [date] NULL,
	[SilmeNedeni] [nvarchar](500) NULL,
	[UrunTipID] [int] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrunBirim]    Script Date: 9.01.2019 10:28:16 ******/
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
/****** Object:  Table [dbo].[UrunCikis]    Script Date: 9.01.2019 10:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunCikis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TeslimAlanKisiID] [int] NULL,
	[TeslimTarihi] [datetime] NULL,
	[TeslimVerenID] [int] NULL,
	[Aciklama] [nvarchar](500) NULL,
	[YazilimUrunID] [int] NULL,
	[CikisNumarasi] [int] NULL,
	[StokID] [int] NULL,
 CONSTRAINT [PK_UrunCikis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrunGiris]    Script Date: 9.01.2019 10:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunGiris](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AlinanMiktar] [int] NULL,
	[KalanMiktar] [int] NULL,
	[AlanPerID] [int] NULL,
	[Aciklama] [nvarchar](500) NULL,
	[TedarikciID] [int] NULL,
	[YazilimUrunID] [int] NULL,
	[GirisTarihi] [date] NULL,
	[StokID] [int] NULL,
 CONSTRAINT [PK_UrunGiris] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrunStok]    Script Date: 9.01.2019 10:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunStok](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[UrunSeriNo] [nvarchar](100) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_UrunStok] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrunTip]    Script Date: 9.01.2019 10:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunTip](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](100) NULL,
	[Aciklama] [nvarchar](500) NULL,
 CONSTRAINT [PK_UrunTip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YazilimUrun]    Script Date: 9.01.2019 10:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YazilimUrun](
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
	[Aktif] [bit] NULL,
	[SilenKisiID] [int] NULL,
	[SilmeTarihi] [date] NULL,
	[SilmeNedeni] [nvarchar](500) NULL,
 CONSTRAINT [PK_YazılımUrun] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AltKategori] ON 

INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (3, N'Savaş Oyunları', N'En güzel Savaş Oyunlar', 6)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (4, N'Masalar', N'En güzel masalar', 3)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (5, N'Çocuk Oyunları', N'En güzel Oyunlar', 6)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (6, N'Kasalar', N'Bilgisayar Parçaları', 1)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (7, N'A4 Kağıt', N'Ofis Malzemeleri', 3)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (8, N'Strateji Oyunları', N'En güzel Oyunlar', 6)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (9, N'İşletim Sistemleri', N'Yazılım Ürünleri', 7)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (10, N'Anti Virus Programları', N'Yazılım Ürünleri', 7)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (11, N'Yazıcılar', N'yazıcı ürünleri', 1)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (14, N'Monitörler', N'Bilgisayar Parçaları', 1)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (15, N'Deterjanlar', NULL, 9)
INSERT [dbo].[AltKategori] ([ID], [KategoriAdi], [Aciklama], [AnaKategorID]) VALUES (16, N'Ders Yazılımları', N'Ders Yazılımları', 7)
SET IDENTITY_INSERT [dbo].[AltKategori] OFF
SET IDENTITY_INSERT [dbo].[AnaKategori] ON 

INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (1, N'Donanım', N'Bilgisayar Parçaları')
INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (3, N'Ofis', N'Ofis Malzemeleri ve kırtasiye ürünleri')
INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (6, N'Oyun', N'En güzel Oyunlar')
INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (7, N'Yazılım', N'Yazılım Ürünleri')
INSERT [dbo].[AnaKategori] ([ID], [KategoriAdi], [Aciklama]) VALUES (9, N'Temizlik Malzemeleri', N'Temizlik Malzemeleri ')
SET IDENTITY_INSERT [dbo].[AnaKategori] OFF
SET IDENTITY_INSERT [dbo].[ArizaDurum] ON 

INSERT [dbo].[ArizaDurum] ([ID], [VerilisTarihi], [TahminiGelisTarihi], [GarantiFirma], [KargoNo], [GarantiVerenKisiID], [Aktif], [stkID]) VALUES (11, CAST(N'2019-01-25 00:00:00.000' AS DateTime), CAST(N'2019-01-06 00:00:00.000' AS DateTime), N'Beykozlar İnşaat', N'137643453645', 2, 0, 1012)
INSERT [dbo].[ArizaDurum] ([ID], [VerilisTarihi], [TahminiGelisTarihi], [GarantiFirma], [KargoNo], [GarantiVerenKisiID], [Aktif], [stkID]) VALUES (12, CAST(N'2019-01-22 00:00:00.000' AS DateTime), CAST(N'2019-01-07 00:00:00.000' AS DateTime), N'Telekom A.Ş.', N'155698562365', 2, 1, 1007)
INSERT [dbo].[ArizaDurum] ([ID], [VerilisTarihi], [TahminiGelisTarihi], [GarantiFirma], [KargoNo], [GarantiVerenKisiID], [Aktif], [stkID]) VALUES (13, CAST(N'2019-01-18 00:00:00.000' AS DateTime), CAST(N'2019-01-25 00:00:00.000' AS DateTime), N'Beykozlar İnşaat', N'155698562365', 2, 0, 1009)
SET IDENTITY_INSERT [dbo].[ArizaDurum] OFF
SET IDENTITY_INSERT [dbo].[ArizaEskiKayitlar] ON 

INSERT [dbo].[ArizaEskiKayitlar] ([ID], [ArizaDurumID], [GarantiAlanID], [StokEklenmeTarihi]) VALUES (11, 11, 2, CAST(N'2019-01-07 18:47:51.980' AS DateTime))
INSERT [dbo].[ArizaEskiKayitlar] ([ID], [ArizaDurumID], [GarantiAlanID], [StokEklenmeTarihi]) VALUES (12, 13, 2, CAST(N'2019-01-07 18:55:31.263' AS DateTime))
SET IDENTITY_INSERT [dbo].[ArizaEskiKayitlar] OFF
SET IDENTITY_INSERT [dbo].[Ayarlar] ON 

INSERT [dbo].[Ayarlar] ([ID], [YazilimUrun], [UrunStok], [YazilimUrunStok], [mailUserName], [mailPassword], [mailHost], [mailSSL], [mailPort]) VALUES (1, 15, 5, 10, N'hamza.tas610@gmail.com', N'b.1411230131b', N'smtp.gmail.com', 1, 25)
SET IDENTITY_INSERT [dbo].[Ayarlar] OFF
SET IDENTITY_INSERT [dbo].[Birim] ON 

INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (8, N'Eğitim Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (11, N'Teknoloji Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (12, N'Fen-Edebiyat Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (14, N'Orman Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (15, N'Spor Bilimleri Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (16, N'İşletme Fakültesi')
INSERT [dbo].[Birim] ([ID], [Adi]) VALUES (17, N'Mimarlık Fakültesi')
SET IDENTITY_INSERT [dbo].[Birim] OFF
SET IDENTITY_INSERT [dbo].[ErisimRol] ON 

INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (158, 1, 56)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (159, 1, 55)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (160, 1, 54)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (161, 1, 53)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (162, 1, 52)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (163, 1, 51)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (164, 1, 50)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (165, 1, 49)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (166, 1, 48)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (167, 1, 47)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (168, 1, 46)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (169, 1, 45)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (170, 1, 44)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (171, 1, 43)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (172, 1, 42)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (173, 1, 41)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (174, 1, 40)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (175, 1, 39)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (176, 1, 38)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (177, 1, 37)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (178, 1, 36)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (179, 1, 35)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (180, 1, 34)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (181, 1, 33)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (182, 1, 32)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (183, 1, 31)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (184, 1, 30)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (185, 1, 29)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (186, 1, 28)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (187, 1, 27)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (188, 1, 26)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (189, 1, 25)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (190, 1, 24)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (191, 1, 23)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (192, 1, 22)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (193, 1, 21)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (194, 1, 20)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (195, 1, 19)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (196, 1, 18)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (197, 1, 17)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (198, 1, 16)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (199, 1, 15)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (200, 1, 14)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (201, 1, 13)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (202, 1, 57)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (203, 1, 58)
INSERT [dbo].[ErisimRol] ([ID], [RolID], [ErisimID]) VALUES (204, 1, 59)
SET IDENTITY_INSERT [dbo].[ErisimRol] OFF
SET IDENTITY_INSERT [dbo].[IslemErisim] ON 

INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (13, N'Ayarlar Güncelleme', N'Admin', N'Ayarlar')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (14, N'Ana Kategori Tanımı', N'Kategori', N'AnaKategoriTanimi')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (15, N'Ana Kategori Silme', N'Kategori', N'AnaKategoriSil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (16, N'Ana Kategori Güncelleme', N'Kategori', N'AnaKategoriGuncelle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (17, N'Alt Kategori Tanımı', N'Kategori', N'AltKategoriTanimi')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (18, N'Alt Kategori Silme', N'Kategori', N'AltKategoriSil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (19, N'Alt Kategori Güncelleme', N'Kategori', N'AltKategoriGuncelle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (20, N'Profil Ekleme', N'Kullanici', N'ProfilEkle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (21, N'Profil Yetki Düzenleme', N'Kullanici', N'Yetkiler')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (22, N'Profil Silme', N'Kullanici', N'YetkiSil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (23, N'Profil Düzenleme', N'Kullanici', N'YetkiDuzenle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (24, N'Kullanıcı Ekleme', N'Kullanici', N'Ekle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (25, N'Kullanici Silme', N'Kullanici', N'Sil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (26, N'Kullanıcı Güncelle', N'Kullanici', N'Guncelle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (27, N'Personel Ekleme', N'Personel', N'TaEkle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (28, N'Personel Düzenleme', N'Personel', N'TaDuzenle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (29, N'Personel Silme', N'Personel', N'TaSil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (30, N'Ürün Raporu Çıkartma', N'Rapor', N'Urun')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (31, N'Ürün Çıkışları Raporu Çıkartma', N'Rapor', N'UrunCikis')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (32, N'Yazılım Ürün Raporu Çıkartma', N'Rapor', N'YazilimUrun')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (33, N'Yazılım Ürün Çıkışları Raporu Çıkartma', N'Rapor', N'CikanYazilimUrun')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (34, N'Teslim Birimi Tanımı', N'Tanim', N'TeslimBirimEkle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (35, N'Teslim Birimi Silme', N'Tanim', N'teslimBirimSil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (36, N'Teslim Birimi Düzenleme', N'Tanim', N'TeslimBirimDuzenle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (37, N'Ürün Birimi Tanımı', N'Tanim', N'UrunBirimEkle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (38, N'Ürün Birimi Silme', N'Tanim', N'UrunBirimSil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (39, N'Ürün Birimi Düzenleme', N'Tanim', N'UrunBirimDuzenle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (40, N'Tedarikçi Tanımı', N'Tedarikci', N'Ekle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (41, N'Tedarikçi Silme', N'Tedarikci', N'Sil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (42, N'Tedarikçi Ekleme', N'Tedarikci', N'Guncelle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (43, N'Ürün Ekleme', N'Urun', N'Ekle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (44, N'Ürün Pasif Etme', N'Urun', N'Sil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (45, N'Ürün Güncelleme', N'Urun', N'Guncelle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (46, N'Silinen Ürün Aktif Etme', N'Urun', N'SilinenAktif')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (47, N'Ürün Garantiye Çıkarma', N'Urun', N'Garanti')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (48, N'Garantiden Tekrar Stoğa Ekleme', N'Urun', N'GarantiCikar')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (49, N'Ürün Çıkarabilme', N'Urun', N'stokCikarView')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (50, N'Ürün Stok Ekleme', N'Urun', N'stokEkle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (51, N'Yazılım Ürün Ekleme', N'YazilimUrun', N'Ekle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (52, N'Yazılım Ürün Pasif Etme', N'YazilimUrun', N'Sil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (53, N'Yazılım Silinen Ürün Aktif Etme', N'YazilimUrun', N'SilinenAktif')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (54, N'Yazılım Ürün Güncelleme', N'YazilimUrun', N'Guncelle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (55, N'Yazılım Ürün Çıkarabilme', N'YazilimUrun', N'stokCikarView')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (56, N'Yazılım Ürün Stok Ekleme', N'YazilimUrun', N'stokEkle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (57, N'Ürün Tipi Tanımı', N'Tanim', N'UrunTipiEkle')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (58, N'Ürün Tipi Silme', N'Tanim', N'UrunTipiSil')
INSERT [dbo].[IslemErisim] ([ID], [Adı], [Controller], [Action]) VALUES (59, N'Ürün Tipi Düzenleme', N'Tanim', N'UrunTipiDuzenle')
SET IDENTITY_INSERT [dbo].[IslemErisim] OFF
SET IDENTITY_INSERT [dbo].[KategoriRol] ON 

INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (89, 1, 15)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (90, 1, 14)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (91, 1, 11)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (92, 1, 10)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (93, 1, 9)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (94, 1, 8)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (95, 1, 7)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (96, 1, 6)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (97, 1, 5)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (98, 1, 4)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (99, 1, 3)
INSERT [dbo].[KategoriRol] ([ID], [RolID], [KategoriID]) VALUES (100, 1, 16)
SET IDENTITY_INSERT [dbo].[KategoriRol] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (1, N'Kullanıcı İşlemleri', N'icon-group', NULL, NULL, NULL, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (2, N'Profil Tanımı/Listesi', NULL, 1, N'Kullanici', N'ProfilListesi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (3, N'Kullanıcı Listesi', NULL, 1, N'Kullanici', N'Listesi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (4, N'Kullanıcı Ekle', NULL, 1, N'Kullanici', N'ekle', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (5, N'Personel Listesi', NULL, 1, N'Personel', N'TaListesi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (6, N'Personel Ekle', NULL, 1, N'Personel', N'TaEkle', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (7, N'Kategori İşlemleri', N'icon-briefcase', NULL, NULL, NULL, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (8, N'Ana Kategori Listesi', NULL, 7, N'Kategori', N'AnaKategoriListesi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (9, N'Ana Kategori Tanımı', NULL, 7, N'Kategori', N'AnaKategoriTanimi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (10, N'Alt Kategori Listesi', NULL, 7, N'Kategori', N'AltKategoriListesi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (11, N'Alt Kategori Tanımı', NULL, 7, N'Kategori', N'AltKategoriTanimi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (12, N'Ürün İşlemleri', N'icon-tasks', NULL, NULL, NULL, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (13, N'Ürün Listesi', NULL, 12, N'Urun', N'Listesi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (14, N'Yeni Ürün Girişi', NULL, 12, N'Urun', N'Ekle', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (15, N'Ürün Girişleri', NULL, 12, N'Urun', N'urunGirisleri', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (16, N'Ürün Çıkışları', NULL, 12, N'Urun', N'UrunCikislar', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (17, N'Yazılım Ürün İşlemleri', N'icon-windows', NULL, NULL, NULL, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (18, N'Yazılım Listesi', NULL, 17, N'YazilimUrun', N'Listesi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (19, N'Yeni Yazılım Girişi', NULL, 17, N'YazilimUrun', N'Ekle', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (20, N'Yazılım Girişleri', NULL, 17, N'YazilimUrun', N'urunGirisleri', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (21, N'Yazılım Çıkışları', NULL, 17, N'YazilimUrun', N'UrunCikislar', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (22, N'Ürün Arıza İşlemleri', N'icon-bug', NULL, NULL, NULL, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (23, N'Garantideki Ürünler', NULL, 22, N'Urun', N'GarantiListesi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (24, N'Eski Kayıtlar', NULL, 22, N'Urun', N'EskiGarantiListesi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (25, N'Tedarikçi İşlemleri', N'icon-dropbox', NULL, NULL, NULL, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (26, N'Tedarikçi Listesi', NULL, 25, N'Tedarikci', N'Listesi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (27, N'Tedarikçi Ekle', NULL, 25, N'Tedarikci', N'Ekle', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (28, N'Raporlar', N'icon-print', NULL, NULL, NULL, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (29, N'Ürün Raporu', NULL, 28, N'Rapor', N'Urun', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (30, N'Çıkan Ürün Raporu', NULL, 28, N'Rapor', N'UrunCikis', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (31, N'Yazılım Raporu', NULL, 28, N'Rapor', N'YazilimUrun', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (32, N'Çıkan Yazılım Raporu', NULL, 28, N'Rapor', N'CikanYazilimUrun', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (33, N'Tanımlar', N'icon-hdd', NULL, NULL, NULL, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (34, N'Personel Birim Tanımı', NULL, 33, N'Tanim', N'TeslimBirim', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (35, N'Ürün Birim Tanımı', NULL, 33, N'Tanim', N'UrunBirimTanimi', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (36, N'Ayarlar', N'icon-cogs', NULL, N'Admin', N'Ayarlar', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (37, N'Silinen Ürünler', NULL, 12, N'Urun', N'SilinenUrunler', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (38, N'Silinen Yazılım Ürünleri', NULL, 17, N'YazilimUrun', N'SilinenUrunler', 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu]) VALUES (39, N'Ürün Tipi Tanımı', NULL, 33, N'Tanim', N'UrunTipiTanimi', 0)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuRol] ON 

INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (97, 3, 1)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (98, 3, 2)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (99, 3, 35)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (100, 3, 36)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (930, 2, 3)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (931, 2, 2)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (932, 2, 1)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1047, 1, 1)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1048, 1, 2)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1049, 1, 3)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1050, 1, 4)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1051, 1, 5)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1052, 1, 6)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1053, 1, 7)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1054, 1, 8)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1055, 1, 9)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1056, 1, 10)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1057, 1, 11)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1058, 1, 12)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1059, 1, 13)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1060, 1, 14)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1061, 1, 15)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1062, 1, 16)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1063, 1, 17)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1064, 1, 18)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1065, 1, 19)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1066, 1, 20)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1067, 1, 21)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1068, 1, 22)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1069, 1, 23)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1070, 1, 24)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1071, 1, 25)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1072, 1, 26)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1073, 1, 27)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1074, 1, 28)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1075, 1, 29)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1076, 1, 30)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1077, 1, 31)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1078, 1, 32)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1079, 1, 33)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1080, 1, 34)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1081, 1, 35)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1082, 1, 36)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1083, 1, 37)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1084, 1, 38)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1085, 1, 39)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1086, 4, 7)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1087, 4, 8)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1088, 4, 9)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1089, 4, 10)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1090, 4, 11)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1091, 4, 12)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1092, 4, 13)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1093, 4, 14)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1094, 4, 15)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1095, 4, 16)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1096, 4, 17)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1097, 4, 18)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1098, 4, 19)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1099, 4, 20)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1100, 4, 21)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1101, 4, 22)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1102, 4, 23)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1103, 4, 24)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1104, 4, 25)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1105, 4, 26)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1106, 4, 27)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1107, 4, 28)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1108, 4, 29)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1109, 4, 30)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1110, 4, 31)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1111, 4, 32)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1112, 4, 33)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1113, 4, 34)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1114, 4, 35)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1115, 4, 36)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1116, 4, 37)
INSERT [dbo].[MenuRol] ([ID], [RolID], [MenuID]) VALUES (1117, 4, 38)
SET IDENTITY_INSERT [dbo].[MenuRol] OFF
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Email], [Sifre], [Tel], [RolID]) VALUES (2, N'Hamza', N'TAŞ', N'hamza.tas610@gmail.com', N'123', N'05346682748', 1)
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Email], [Sifre], [Tel], [RolID]) VALUES (3, N'Erdi', N'Yalçın', N'erdiyalcin@duzce.edu.tr', N'123', N'05346682748', 1)
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Email], [Sifre], [Tel], [RolID]) VALUES (4, N'Mahmut', N'Uçar', N'mahmut.ucar@gmail.com', N'123', N'05349635415', 4)
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Email], [Sifre], [Tel], [RolID]) VALUES (5, N'Mehmet', N'ÖZDEMİR', N'mehmetozcelik@gmail.com', N'123', N'05396680585', 1)
SET IDENTITY_INSERT [dbo].[Personel] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (1, N'Admin', N'Tüm Yetkileri Açık')
INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (2, N'Teknisyen', N'Yalnızca Garanti işlemleri')
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
INSERT [dbo].[TeslimAlanPersonel] ([ID], [Adi], [Soyadi], [TeslimBirimID], [Tel], [Email]) VALUES (3, N'Cumali', N'Cuma', 11, N'05346682748', N'cumali@cuma.com')
INSERT [dbo].[TeslimAlanPersonel] ([ID], [Adi], [Soyadi], [TeslimBirimID], [Tel], [Email]) VALUES (4, N'Ali', N'Kim', 14, N'05346682748', N'ali@kim.com')
SET IDENTITY_INSERT [dbo].[TeslimAlanPersonel] OFF
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID], [Aktif], [SilenKisiID], [SilmeTarihi], [SilmeNedeni], [UrunTipID]) VALUES (23, N'BISTK201861', N'Casper v210', 6, N'Güzel Kasa', 5, CAST(N'2018-12-28' AS Date), 2, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID], [Aktif], [SilenKisiID], [SilmeTarihi], [SilmeNedeni], [UrunTipID]) VALUES (24, N'BISTK20181524', N'Domestos Büyük Boy', 15, N'Kir ve pasa birebir', 5, CAST(N'2018-12-28' AS Date), 2, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID], [Aktif], [SilenKisiID], [SilmeTarihi], [SilmeNedeni], [UrunTipID]) VALUES (25, N'BISTK20181525', N'Domestos Büyük Boy', 15, N'Kir ve pasa birebir', 5, CAST(N'2018-12-28' AS Date), 2, 2, 0, 2, CAST(N'2018-12-28' AS Date), N'Yanlışlıkla 2 kere ekledik', NULL)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID], [Aktif], [SilenKisiID], [SilmeTarihi], [SilmeNedeni], [UrunTipID]) VALUES (26, N'BISTK20191126', N'Xeros Yazıcı', 11, N'Güzel yazıcı', 5, CAST(N'2019-01-06' AS Date), 2, 2, 1, NULL, NULL, NULL, 4)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID], [Aktif], [SilenKisiID], [SilmeTarihi], [SilmeNedeni], [UrunTipID]) VALUES (27, N'BISTK20191427', N'Dell Büyük Boy', 14, N'Güzel Monitör', 5, CAST(N'2019-01-06' AS Date), 2, 1, 1, NULL, NULL, NULL, 6)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID], [Aktif], [SilenKisiID], [SilmeTarihi], [SilmeNedeni], [UrunTipID]) VALUES (28, N'BISTK20191128', N'Canon Sanayi Tipi Yazıcı', 11, N'Güzel yazıcı ama çok büyük', 5, CAST(N'2019-01-06' AS Date), 2, 1, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID], [Aktif], [SilenKisiID], [SilmeTarihi], [SilmeNedeni], [UrunTipID]) VALUES (29, N'BISTK2019429', N'Yuvarlak Masa', 4, N'Toplantı yapmak için', 5, CAST(N'2019-01-06' AS Date), 2, 1, 1, NULL, NULL, NULL, 4)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID], [Aktif], [SilenKisiID], [SilmeTarihi], [SilmeNedeni], [UrunTipID]) VALUES (30, N'BISTK20191530', N'4 lü Sabun', 15, N'Temizlik Malzemeleri', 5, CAST(N'2019-01-06' AS Date), 2, 1, 1, NULL, NULL, NULL, 4)
INSERT [dbo].[Urun] ([ID], [UrunKodu], [UrunAdi], [altKategoriID], [Aciklama], [UrunBirimID], [EklenmeTarihi], [PersonelID], [TedarikciID], [Aktif], [SilenKisiID], [SilmeTarihi], [SilmeNedeni], [UrunTipID]) VALUES (31, N'BISTK20191431', N'Asus Oval Full HD', 14, N'Merak ettik', 5, CAST(N'2019-01-06' AS Date), 2, 2, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Urun] OFF
SET IDENTITY_INSERT [dbo].[UrunBirim] ON 

INSERT [dbo].[UrunBirim] ([ID], [Adi]) VALUES (5, N'Adet')
INSERT [dbo].[UrunBirim] ([ID], [Adi]) VALUES (6, N'Kg')
INSERT [dbo].[UrunBirim] ([ID], [Adi]) VALUES (7, N'Metre')
SET IDENTITY_INSERT [dbo].[UrunBirim] OFF
SET IDENTITY_INSERT [dbo].[UrunCikis] ON 

INSERT [dbo].[UrunCikis] ([ID], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi], [StokID]) VALUES (25, 4, CAST(N'2019-01-07 00:00:00.000' AS DateTime), 2, N'Yazılım Ürünleri', NULL, 3020, 6)
INSERT [dbo].[UrunCikis] ([ID], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi], [StokID]) VALUES (26, 4, CAST(N'2019-01-07 00:00:00.000' AS DateTime), 2, N'Yazılım Ürünleri', NULL, 3020, 4)
INSERT [dbo].[UrunCikis] ([ID], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi], [StokID]) VALUES (27, 3, CAST(N'2019-01-24 00:00:00.000' AS DateTime), 2, N'Ofis Malzemeleri', NULL, 3046, 5)
INSERT [dbo].[UrunCikis] ([ID], [TeslimAlanKisiID], [TeslimTarihi], [TeslimVerenID], [Aciklama], [YazilimUrunID], [CikisNumarasi], [StokID]) VALUES (28, 3, CAST(N'2019-01-24 00:00:00.000' AS DateTime), 2, N'Ofis Malzemeleri', NULL, 3046, 12)
SET IDENTITY_INSERT [dbo].[UrunCikis] OFF
SET IDENTITY_INSERT [dbo].[UrunGiris] ON 

INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (28, NULL, NULL, 2, N'Temizlik Malzemeleri', 1, NULL, CAST(N'2019-01-06' AS Date), 3)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (29, NULL, NULL, 2, N'Temizlik Malzemeleri', 1, NULL, CAST(N'2019-01-06' AS Date), 4)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (30, NULL, NULL, 2, N'Merak ettik', 2, NULL, CAST(N'2019-01-06' AS Date), 5)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (31, NULL, NULL, 2, N'Merak ettik', 2, NULL, CAST(N'2019-01-06' AS Date), 6)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (32, NULL, NULL, 2, N'Merak ettik', 2, NULL, CAST(N'2019-01-06' AS Date), 7)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (33, NULL, NULL, 2, N'Merak ettik', 2, NULL, CAST(N'2019-01-06' AS Date), 8)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (34, NULL, NULL, 2, N'Merak ettik', 2, NULL, CAST(N'2019-01-06' AS Date), 9)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (35, NULL, NULL, 2, N'Merak ettik', 2, NULL, CAST(N'2019-01-06' AS Date), 10)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (36, NULL, NULL, 2, N'Merak ettik', 2, NULL, CAST(N'2019-01-06' AS Date), 11)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (37, NULL, NULL, 2, N'Merak ettik', 2, NULL, CAST(N'2019-01-06' AS Date), 12)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (38, NULL, NULL, 2, N'Kir ve pasa birebir', 2, NULL, CAST(N'2019-01-07' AS Date), 1003)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (39, NULL, NULL, 2, N'Kir ve pasa birebir', 2, NULL, CAST(N'2019-01-07' AS Date), 1004)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (40, NULL, NULL, 2, NULL, 1, NULL, CAST(N'2019-01-07' AS Date), 1005)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (41, NULL, NULL, 2, NULL, 1, NULL, CAST(N'2019-01-07' AS Date), 1006)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (42, NULL, NULL, 2, NULL, 1, NULL, CAST(N'2019-01-07' AS Date), 1007)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (43, NULL, NULL, 2, NULL, 1, NULL, CAST(N'2019-01-07' AS Date), 1008)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (44, NULL, NULL, 2, NULL, 1, NULL, CAST(N'2019-01-07' AS Date), 1009)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (45, NULL, NULL, 2, NULL, 1, NULL, CAST(N'2019-01-07' AS Date), 1010)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (46, NULL, NULL, 2, NULL, 1, NULL, CAST(N'2019-01-07' AS Date), 1011)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (47, NULL, NULL, 2, NULL, 1, NULL, CAST(N'2019-01-07' AS Date), 1012)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (48, NULL, NULL, 2, NULL, 1, NULL, CAST(N'2019-01-07' AS Date), 1013)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (49, NULL, NULL, 2, NULL, 1, NULL, CAST(N'2019-01-07' AS Date), 1014)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (50, NULL, NULL, 2, N'Garantiden Stoğa tekrar geçiş', 1, NULL, CAST(N'2019-01-07' AS Date), 1012)
INSERT [dbo].[UrunGiris] ([ID], [AlinanMiktar], [KalanMiktar], [AlanPerID], [Aciklama], [TedarikciID], [YazilimUrunID], [GirisTarihi], [StokID]) VALUES (51, NULL, NULL, 2, N'Garantiden Stoğa tekrar geçiş', 1, NULL, CAST(N'2019-01-07' AS Date), 1009)
SET IDENTITY_INSERT [dbo].[UrunGiris] OFF
SET IDENTITY_INSERT [dbo].[UrunStok] ON 

INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1, 28, N'C', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (2, 29, N'M', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (3, 30, N's963', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (4, 30, N'S123', 0)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (5, 31, N'Asus15107c', 0)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (6, 31, N'Asus15106c', 0)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (7, 31, N'Asus15105c', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (8, 31, N'Asus15104c', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (9, 31, N'Asus15103c', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (10, 31, N'Asus15102c', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (11, 31, N'Asus15101c', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (12, 31, N'Asus15100c', 0)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1002, 23, N'Casper v210-12001030', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1003, 24, N'DB13', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1004, 24, N'DB12', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1005, 27, N'DELL10', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1006, 27, N'DELL9', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1007, 27, N'DELL8', 0)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1008, 27, N'DELL7', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1009, 27, N'DELL20', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1010, 27, N'DELL5', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1011, 27, N'DELL4', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1012, 27, N'DELL3', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1013, 27, N'DELL2', 1)
INSERT [dbo].[UrunStok] ([ID], [UrunID], [UrunSeriNo], [Aktif]) VALUES (1014, 27, N'DELL1', 1)
SET IDENTITY_INSERT [dbo].[UrunStok] OFF
SET IDENTITY_INSERT [dbo].[UrunTip] ON 

INSERT [dbo].[UrunTip] ([ID], [Adi], [Aciklama]) VALUES (1, N'Kırmızı', N'Kırmızı Renkli Masalar')
INSERT [dbo].[UrunTip] ([ID], [Adi], [Aciklama]) VALUES (2, N'A Tipi Switch', N'Switch Türleri')
INSERT [dbo].[UrunTip] ([ID], [Adi], [Aciklama]) VALUES (3, N'B Tipi Switch', N'Switch Türleri')
INSERT [dbo].[UrunTip] ([ID], [Adi], [Aciklama]) VALUES (4, N'Büyük Boy', NULL)
INSERT [dbo].[UrunTip] ([ID], [Adi], [Aciklama]) VALUES (6, N'HD Ekran', NULL)
SET IDENTITY_INSERT [dbo].[UrunTip] OFF
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
ALTER TABLE [dbo].[ArizaDurum]  WITH CHECK ADD  CONSTRAINT [FK_ArizaDurum_UrunStok] FOREIGN KEY([stkID])
REFERENCES [dbo].[UrunStok] ([ID])
GO
ALTER TABLE [dbo].[ArizaDurum] CHECK CONSTRAINT [FK_ArizaDurum_UrunStok]
GO
ALTER TABLE [dbo].[ArizaEskiKayitlar]  WITH CHECK ADD  CONSTRAINT [FK_ArizaEskiKayitlar_ArizaDurum1] FOREIGN KEY([ArizaDurumID])
REFERENCES [dbo].[ArizaDurum] ([ID])
GO
ALTER TABLE [dbo].[ArizaEskiKayitlar] CHECK CONSTRAINT [FK_ArizaEskiKayitlar_ArizaDurum1]
GO
ALTER TABLE [dbo].[ArizaEskiKayitlar]  WITH CHECK ADD  CONSTRAINT [FK_ArizaEskiKayitlar_Personel] FOREIGN KEY([GarantiAlanID])
REFERENCES [dbo].[Personel] ([ID])
GO
ALTER TABLE [dbo].[ArizaEskiKayitlar] CHECK CONSTRAINT [FK_ArizaEskiKayitlar_Personel]
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
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Personel] FOREIGN KEY([SilenKisiID])
REFERENCES [dbo].[Personel] ([ID])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Personel]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_UrunBirim] FOREIGN KEY([UrunBirimID])
REFERENCES [dbo].[UrunBirim] ([ID])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_UrunBirim]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_UrunTip] FOREIGN KEY([UrunTipID])
REFERENCES [dbo].[UrunTip] ([ID])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_UrunTip]
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
ALTER TABLE [dbo].[UrunCikis]  WITH CHECK ADD  CONSTRAINT [FK_UrunCikis_UrunStok] FOREIGN KEY([StokID])
REFERENCES [dbo].[UrunStok] ([ID])
GO
ALTER TABLE [dbo].[UrunCikis] CHECK CONSTRAINT [FK_UrunCikis_UrunStok]
GO
ALTER TABLE [dbo].[UrunCikis]  WITH CHECK ADD  CONSTRAINT [FK_UrunCikis_YazılımUrun1] FOREIGN KEY([YazilimUrunID])
REFERENCES [dbo].[YazilimUrun] ([ID])
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
ALTER TABLE [dbo].[UrunGiris]  WITH CHECK ADD  CONSTRAINT [FK_UrunGiris_UrunStok] FOREIGN KEY([StokID])
REFERENCES [dbo].[UrunStok] ([ID])
GO
ALTER TABLE [dbo].[UrunGiris] CHECK CONSTRAINT [FK_UrunGiris_UrunStok]
GO
ALTER TABLE [dbo].[UrunGiris]  WITH CHECK ADD  CONSTRAINT [FK_UrunGiris_YazılımUrun1] FOREIGN KEY([YazilimUrunID])
REFERENCES [dbo].[YazilimUrun] ([ID])
GO
ALTER TABLE [dbo].[UrunGiris] CHECK CONSTRAINT [FK_UrunGiris_YazılımUrun1]
GO
ALTER TABLE [dbo].[UrunStok]  WITH CHECK ADD  CONSTRAINT [FK_UrunStok_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urun] ([ID])
GO
ALTER TABLE [dbo].[UrunStok] CHECK CONSTRAINT [FK_UrunStok_Urun]
GO
ALTER TABLE [dbo].[YazilimUrun]  WITH CHECK ADD  CONSTRAINT [FK_YazılımUrun_AltKategori] FOREIGN KEY([altKategoriID])
REFERENCES [dbo].[AltKategori] ([ID])
GO
ALTER TABLE [dbo].[YazilimUrun] CHECK CONSTRAINT [FK_YazılımUrun_AltKategori]
GO
ALTER TABLE [dbo].[YazilimUrun]  WITH CHECK ADD  CONSTRAINT [FK_YazılımUrun_Personel] FOREIGN KEY([SilenKisiID])
REFERENCES [dbo].[Personel] ([ID])
GO
ALTER TABLE [dbo].[YazilimUrun] CHECK CONSTRAINT [FK_YazılımUrun_Personel]
GO
