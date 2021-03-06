USE [StokTakipDB]
GO
/****** Object:  Table [dbo].[ArizaDurum]    Script Date: 30.10.2018 20:19:06 ******/
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
 CONSTRAINT [PK_ArizaDurum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Birim]    Script Date: 30.10.2018 20:19:06 ******/
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
/****** Object:  Table [dbo].[Kategori]    Script Date: 30.10.2018 20:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](100) NOT NULL,
	[Aciklama] [nvarchar](500) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 30.10.2018 20:19:06 ******/
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
/****** Object:  Table [dbo].[MenuRol]    Script Date: 30.10.2018 20:19:06 ******/
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
/****** Object:  Table [dbo].[Personel]    Script Date: 30.10.2018 20:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](100) NULL,
	[Soyadi] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Tel] [nvarchar](100) NULL,
	[RolID] [int] NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rol]    Script Date: 30.10.2018 20:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tedarikci]    Script Date: 30.10.2018 20:19:06 ******/
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
/****** Object:  Table [dbo].[TeslimAlanPersonel]    Script Date: 30.10.2018 20:19:06 ******/
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
/****** Object:  Table [dbo].[Urun]    Script Date: 30.10.2018 20:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrunSeriNo] [nvarchar](100) NULL,
	[UrunKodu] [nvarchar](100) NULL,
	[UrunAdi] [nvarchar](100) NULL,
	[KategoriID] [int] NULL,
	[StokMiktari] [int] NULL,
	[Aciklama] [nvarchar](500) NULL,
	[UrunBirimID] [int] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrunBirim]    Script Date: 30.10.2018 20:19:06 ******/
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
/****** Object:  Table [dbo].[UrunCikis]    Script Date: 30.10.2018 20:19:06 ******/
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
 CONSTRAINT [PK_UrunCikis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrunGiris]    Script Date: 30.10.2018 20:19:06 ******/
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
 CONSTRAINT [PK_UrunGiris] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YazılımUrun]    Script Date: 30.10.2018 20:19:06 ******/
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
	[KategoriID] [int] NULL,
	[TeslimAlanKisiID] [int] NULL,
 CONSTRAINT [PK_YazılımUrun] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

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
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Kategori] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategori] ([ID])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Kategori]
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
ALTER TABLE [dbo].[UrunCikis]  WITH CHECK ADD  CONSTRAINT [FK_UrunCikis_YazılımUrun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[YazılımUrun] ([ID])
GO
ALTER TABLE [dbo].[UrunCikis] CHECK CONSTRAINT [FK_UrunCikis_YazılımUrun]
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
ALTER TABLE [dbo].[UrunGiris]  WITH CHECK ADD  CONSTRAINT [FK_UrunGiris_YazılımUrun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[YazılımUrun] ([ID])
GO
ALTER TABLE [dbo].[UrunGiris] CHECK CONSTRAINT [FK_UrunGiris_YazılımUrun]
GO
ALTER TABLE [dbo].[YazılımUrun]  WITH CHECK ADD  CONSTRAINT [FK_YazılımUrun_Kategori] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategori] ([ID])
GO
ALTER TABLE [dbo].[YazılımUrun] CHECK CONSTRAINT [FK_YazılımUrun_Kategori]
GO
ALTER TABLE [dbo].[YazılımUrun]  WITH CHECK ADD  CONSTRAINT [FK_YazılımUrun_TeslimAlanPersonel] FOREIGN KEY([TeslimAlanKisiID])
REFERENCES [dbo].[TeslimAlanPersonel] ([ID])
GO
ALTER TABLE [dbo].[YazılımUrun] CHECK CONSTRAINT [FK_YazılımUrun_TeslimAlanPersonel]
GO
