﻿using Inventory_Management_Web_Application.App_Classes;
using Inventory_Management_Web_Application.Models;
using Inventory_Management_Web_Application.ReportFilters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Inventory_Management_Web_Application.Controllers
{
    public class UrunController : Controller
    {
        InventoryContext db = new InventoryContext();

        //-------------------------- Ürün İşlemleri -------------------------------------
        [HttpGet]
        public ActionResult Listesi()
        {
            List<Urun> urunler = new List<Urun>();
            if (TempData["filtreliUrunler"] == null)
            {
                urunler = UrunList.IzinliUrunler();
            }
            else
            {
                urunler = (List<Urun>)TempData["filtreliUrunler"];
            }

            ViewBag.ayarlar = db.Ayarlar.FirstOrDefault();

            var uruntipler = db.UrunTip.ToList();
            ViewBag.uruntipler = new SelectList(uruntipler, "ID", "Adi");

            var anakategoriler = db.AnaKategori.ToList();
            ViewBag.anakategoriler = new SelectList(anakategoriler, "ID", "KategoriAdi");

            var urunbirimler = db.UrunBirim.ToList();
            ViewBag.urunbirimler = new SelectList(urunbirimler, "ID", "Adi");

            var tedarikciler = db.Tedarikci.Select(x => new
            {
                ID = x.ID,
                TedarikciAdi = x.FirmaAdi
            });
            var personeller = db.Personel.Select(x => new
            {
                ID = x.ID,
                adiSoyadi = x.Adi + " " + x.Soyadi
            });


            ViewBag.tedarikciler = new SelectList(tedarikciler, "ID", "TedarikciAdi");
            ViewBag.personeller = new SelectList(personeller, "ID", "adiSoyadi");
            return View(urunler);
        }

        [HttpGet]
        public PartialViewResult uruncikarSeriNoGetir(int id)
        {
            var UrunStoklar = db.UrunStok.Where(x => x.UrunID == id && x.Aktif == true).ToList();
            ViewBag.urunGirisler = new SelectList(UrunStoklar, "ID", "UrunSeriNo");
            return PartialView();
        }

        [HttpGet]
        public PartialViewResult uruncikarSeriNoGetirStok(int id)
        {
            var UrunStoklar = db.UrunStok.Where(x => x.UrunID == id && x.Aktif == true).ToList();
            return PartialView(UrunStoklar);
        }

        [HttpPost]
        public ActionResult UrunFiltrele(UrunFilter list)
        {
            try
            {
                List<Urun> rapor = UrunFilter.UrunSorgu(list);
                TempData["filtreliUrunler"] = rapor;
                TempData["GenelMesaj"] = "Filtreleme işlemi başarılı bir şekilde yapılmıştır.";
                return RedirectToAction("Listesi");
            }
            catch (Exception)
            {
                return Redirect("/Admin/Hata");
            }

        }

        public PartialViewResult altKategoriDropdown(int id)
        {
            var altkategoriler = db.AltKategori.Where(x => x.AnaKategorID == id).ToList();
            ViewBag.altkategoriler = new SelectList(altkategoriler, "ID", "KategoriAdi");
            return PartialView();
        }

        [HttpGet]
        public ActionResult Ekle()
        {
            var uruntipler = db.UrunTip.ToList();
            ViewBag.uruntipler = new SelectList(uruntipler, "ID", "Adi");

            var anakategoriler = db.AnaKategori.ToList();
            ViewBag.anakategoriler = new SelectList(anakategoriler, "ID", "KategoriAdi");

            var urunbirimler = db.UrunBirim.ToList();
            ViewBag.urunbirimler = new SelectList(urunbirimler, "ID", "Adi");

            var tedarikciler = db.Tedarikci.Select(x => new
            {
                ID = x.ID,
                TedarikciAdi = x.FirmaAdi
            });
            var personelleri = db.Personel.Select(x => new
            {
                ID = x.ID,
                adiSoyadi = x.Adi + " " + x.Soyadi
            });
            ViewBag.tedarikciler = new SelectList(tedarikciler, "ID", "TedarikciAdi");
            ViewBag.personelleri = new SelectList(personelleri, "ID", "adiSoyadi");
            ViewBag.personeller = db.Personel.ToList();

            return View();
        }

        [HttpPost]
        public ActionResult Ekle(Urun u, string UrunSeriNo)
        {


            try
            {
                //--------------- Ürün Ekle
                int Lastid = 0;
                if (db.Urun.ToList().Count != 0)
                {
                    Lastid = db.Urun.Max(x => x.ID);
                }
                string urunKodu = "BISTK" + DateTime.Now.Year.ToString() + u.altKategoriID.ToString() + (Lastid + 1).ToString();
                u.UrunKodu = urunKodu;
                u.EklenmeTarihi = DateTime.Now;
                u.Aktif = true;
                db.Urun.Add(u);
                db.SaveChanges();

                // ------------ Ürün Stok Ekle
                Urun ku = db.Urun.Where(x => x.UrunKodu == urunKodu).SingleOrDefault();
                if (UrunSeriNo != null)
                {
                    string[] Seriparts = UrunSeriNo.Split('^');
                    for (int i = 0; i < Seriparts.Length; i++)
                    {
                        string s = Seriparts[i].ToString();
                        if (s == "")
                        {
                            continue;
                        }
                        UrunStok st = new UrunStok
                        {
                            Aktif = true,
                            UrunID = ku.ID,
                            UrunSeriNo = s
                        };

                        db.UrunStok.Add(st); // stok Girildi;
                        db.SaveChanges();

                        UrunStok girilenStok = db.UrunStok.Where(x => x.UrunSeriNo == s).SingleOrDefault();

                        UrunGiris ug = new UrunGiris
                        {
                            StokID = girilenStok.ID,
                            AlanPerID = u.PersonelID,
                            TedarikciID = u.TedarikciID,
                            Aciklama = u.Aciklama,
                            GirisTarihi = DateTime.Now
                        };

                        db.UrunGiris.Add(ug);
                        db.SaveChanges();
                    }
                }
                TempData["GenelMesaj"] = "Ürün ekleme işlemi başarılı bir şekilde tamamlanmıştır.";
                return RedirectToAction("Listesi");
            }
            catch (Exception)
            {
                return Redirect("/Admin/Hata");
            }

        }

        [HttpPost]
        public ActionResult Sil(int id, string neden)
        {
            Personel aktifKullanici = (Personel)Session["Kullanici"];
            Urun b = db.Urun.Where(x => x.ID == id).SingleOrDefault();
            var dateAndTime = DateTime.Now;
            var date = dateAndTime.Date;
            if (b == null)
            {
                return Json(false);
            }
            else
            {
                try
                {
                    List<UrunStok> us = db.UrunStok.Where(x => x.UrunID == b.ID).ToList();
                    if (us.Count != 0)
                    {
                        return Json("stok");
                    }
                    foreach (UrunStok item in us)
                    {
                        ArizaDurum a = db.ArizaDurum.Where(x => x.stkID == item.ID).SingleOrDefault();
                        if (a != null)
                        {
                            return Json("garanti");
                        }
                    }

                    b.Aktif = false;
                    b.SilmeNedeni = neden;
                    b.SilenKisiID = aktifKullanici.ID;
                    b.SilmeTarihi = date;
                    db.SaveChanges();
                    return Json(true);

                }
                catch (Exception)
                {
                    return Json("FK");
                }

            }
        }

        [HttpGet]
        public ActionResult SilinenUrunler()
        {
            return View(db.Urun.Where(x => x.Aktif == false).ToList());
        }

        [HttpPost]
        public ActionResult SilinenAktif(int id)
        {
            Urun b = db.Urun.Where(x => x.ID == id).SingleOrDefault();
            if (b == null)
            {
                return RedirectToAction("Hata", "Admin");
            }
            else
            {
                try
                {
                    b.Aktif = true;
                    ViewBag.Mesaj = "Ürün Tekrar Aktif Edilmiştir.";
                    b.SilenKisiID = null;
                    b.SilmeNedeni = null;
                    b.SilmeTarihi = null;
                    db.SaveChanges();
                    return Json(true);
                }
                catch (Exception)
                {
                    return RedirectToAction("Hata", "Admin");
                }

            }
        }

        [HttpGet]
        public ActionResult Guncelle(int id)
        {
            Urun u = db.Urun.Where(x => x.ID == id).FirstOrDefault();

            var uruntipler = db.UrunTip.ToList();
            ViewBag.uruntipler = new SelectList(uruntipler, "ID", "Adi");

            var anakategoriler = db.AltKategori.ToList();
            var urunbirimler = db.UrunBirim.ToList();
            ViewBag.anakategoriler = new SelectList(anakategoriler, "ID", "KategoriAdi");
            ViewBag.urunbirimler = new SelectList(urunbirimler, "ID", "Adi");
            if (u == null)
            {
                return RedirectToAction("Hata", "Admin");
            }
            return View(u);
        }

        [HttpPost]
        public ActionResult Guncelle(Urun u)
        {
            try
            {
                Urun gu = db.Urun.Where(x => x.ID == u.ID).FirstOrDefault();
                if (gu == null)
                {
                    return RedirectToAction("Hata", "Admin");
                }
                if (gu.UrunKodu != u.UrunKodu)
                {
                    return RedirectToAction("Hata", "Admin");
                }
                gu.altKategoriID = u.altKategoriID;
                gu.UrunAdi = u.UrunAdi;
                gu.Aciklama = u.Aciklama;
                gu.UrunBirimID = u.UrunBirimID;
                gu.UrunTipID = u.UrunTipID;
                //gu.UrunSeriNo = u.UrunSeriNo;
                db.SaveChanges();
                TempData["GenelMesaj"] = "Ürün Güncelleme işlemi başarılı bir şekilde tamamlanmıştır.";
                return RedirectToAction("Listesi");
            }
            catch (Exception)
            {
                return Redirect("/Admin/Hata");
            }

        }


        //----------------------- Ürün Garanti İşlemleri -------------------------------------
        public ActionResult GarantiListesi()
        {
            return View(db.ArizaDurum.Where(x => x.Aktif == true).ToList());

        }
        [HttpGet]
        public ActionResult Garanti(int id)
        {
            Urun u = db.Urun.Where(x => x.ID == id).FirstOrDefault();
            if (u == null)
            {
                return RedirectToAction("Hata", "Admin");
            }
            var urunler = db.UrunStok.Where(x => x.UrunID == u.ID && x.Aktif == true).ToList();
            ViewBag.urunler = new SelectList(urunler, "ID", "UrunSeriNo");
            return View(u);
        }

        [HttpPost]
        public ActionResult Garanti(ArizaDurum g, int UrunID)
        {
            Urun u = db.Urun.Where(x => x.ID == UrunID).FirstOrDefault();
            if (u == null)
            {
                return RedirectToAction("Hata", "Admin");
            }
            int id = Convert.ToInt32(g.stkID);
            UrunStok ug = db.UrunStok.Where(x => x.ID == id).SingleOrDefault();
            if (ug == null)
            {
                return RedirectToAction("Hata", "Admin");
            }
            if (ug.Aktif == false)
            {
                return RedirectToAction("Hata", "Admin");
            }

            ug.Aktif = false;
            db.SaveChanges();
            g.GarantiVerenKisiID = ((Personel)Session["Kullanici"]).ID;
            g.Aktif = true;
            db.ArizaDurum.Add(g);
            db.SaveChanges();
            TempData["GenelMesaj"] = ug.UrunSeriNo + "Seri Numaralı Stok için arıza kaydı işlemi başarılı bir şekilde gerçekleştirilmiştir.";
            return Redirect("/Urun/Garanti/" + UrunID);
        }

        [HttpPost]
        public ActionResult GarantiCikar(int id, string serino)
        {
            try
            {
                ArizaDurum ad = db.ArizaDurum.Where(x => x.ID == id).FirstOrDefault();
                if (ad.UrunStok.Aktif != false)
                {
                    return Json(1);
                }

                //Stoğu aktif etme
                ad.UrunStok.Aktif = true;
                if (serino != "")
                {
                    ad.UrunStok.UrunSeriNo = serino;
                }
                //Garantiden çıkarma
                ad.Aktif = false;
                db.SaveChanges();



                // Ürün Giriş Kayıttı Atılır.
                UrunGiris ug = new UrunGiris();
                ug.AlanPerID = ((Personel)Session["Kullanici"]).ID;
                ug.Aciklama = "Garantiden Stoğa tekrar geçiş";
                ug.TedarikciID = ad.UrunStok.Urun.TedarikciID;
                ug.GirisTarihi = DateTime.Now;
                ug.StokID = ad.stkID;
                db.UrunGiris.Add(ug);
                db.SaveChanges();

                // eski kayıtlara atma
                ArizaEskiKayitlar aek = new ArizaEskiKayitlar();
                aek.ArizaDurumID = ad.ID;
                aek.GarantiAlanID = ((Personel)Session["Kullanici"]).ID;
                aek.StokEklenmeTarihi = DateTime.Now;
                db.ArizaEskiKayitlar.Add(aek);
                db.SaveChanges();
                TempData["GenelMesaj"] = "Stok ekleme işlemi başarılı bir şekilde tamamlanmıştır.";

                return RedirectToAction("GarantiListesi");
            }
            catch (Exception)
            {
                return Redirect("/Admin/Hata");
            }
          
        }

        public ActionResult EskiGarantiListesi()
        {
            return View(db.ArizaEskiKayitlar.ToList());
        }

        //------------------------ Ürün Çıkarma İşlemler --------------------------------------------------

        public ActionResult stokCikar(int urunStokID)
        {

            try
            {
                UrunStok us = db.UrunStok.Where(x => x.ID == urunStokID).SingleOrDefault();

                if (us.Aktif == false)
                {
                    ViewBag.hata = "Bu Seri Numaralı ürün için stok bulunmamaktadır.";
                    return RedirectToAction("Listesi");
                }
                if (us == null)
                {
                    return RedirectToAction("Hata", "Admin");
                }

                var urunSepet = (App_Classes.UrunCikisSepet)Session["Urun"];
                if (urunSepet == null)
                {
                    urunSepet = new App_Classes.UrunCikisSepet();
                    Session["Urun"] = urunSepet;
                }
                urunSepet.ListeyeEkle(us);
                TempData["GenelMesaj"] = "Ürün sepete eklenmiştir.";
                return RedirectToAction("Listesi");
            }
            catch (Exception)
            {
                return Redirect("/Admin/Hata");
            }
          
        }

        [HttpGet]
        public ActionResult stokCikarView()
        {
            var personeller = db.TeslimAlanPersonel.Select(x => new
            {
                ID = x.ID,
                adiSoyadi = x.Adi + " " + x.Soyadi
            });
            var personellerVeren = db.Personel.Select(x => new
            {
                ID = x.ID,
                adiSoyadi = x.Adi + " " + x.Soyadi
            });
            ViewBag.Birimler = db.Birim.ToList();
            var urunbirimler = db.UrunBirim.ToList();
            ViewBag.personeller = db.Personel.ToList();
            ViewBag.teslimalanlar = new SelectList(personeller, "ID", "adiSoyadi");
            ViewBag.teslimverenler = new SelectList(personellerVeren, "ID", "adiSoyadi");
            return View();
        }

        [HttpPost]
        public ActionResult stokCikarView(Models.UrunCikis uc)
        {
            try
            {

                int Lastid = 0;
                if (db.UrunCikis.Count() != 0)
                {
                    Lastid = db.UrunCikis.Max(x => x.ID);
                }
                int CikisNumarasi = 1000 + DateTime.Now.Year + (Lastid + 1);
                var urunler = (App_Classes.UrunCikisSepet)Session["Urun"];

                List<UrunStok> liste = urunler.HepsiniGetir();
                List<UrunStok> temp = new List<UrunStok>();
                foreach (UrunStok item in liste)
                {
                    if (temp.Where(x => x.ID == item.ID).SingleOrDefault() != null)
                    {
                        continue;
                    }

                    UrunStok stokDus = db.UrunStok.Where(x => x.ID == item.ID).FirstOrDefault();
                    if (stokDus.Aktif == false)
                    {
                        ViewBag.hatali = "Çıkarılacak ürünler arasında stok miktarı 0 olan ürünler bulanmaktadır.";
                        return View();
                    }
                    stokDus.Aktif = false;
                    db.SaveChanges();
                    uc.StokID = item.ID;
                    uc.CikisNumarasi = CikisNumarasi;
                    db.UrunCikis.Add(uc);
                    db.SaveChanges();
                    temp.Add(item);
                }
                urunler.ListeTemizle();
                Session.Remove("Urun");
                TempData["basariid"] = CikisNumarasi;
                return RedirectToAction("CikisBasarili");
            }
            catch (Exception)
            {
                return Redirect("/Admin/Hata");
            }
        }

        public ActionResult CikisBasarili()
        {
            ViewBag.id = TempData["basariid"];
            return View();
        }

        public ActionResult UrunCikislar()
        {
            return View(db.UrunCikis.Where(x => x.UrunStok.UrunID != null).ToList());
        }


        public void urunSepetAl()
        {
            var urunler = (App_Classes.UrunCikisSepet)Session["Urun"];
            if (urunler != null)
            {
                var liste = urunler.HepsiniGetir();
            }
        }


        [HttpGet]
        public ActionResult SepetSil(int id)
        {
            var urunler = (App_Classes.UrunCikisSepet)Session["Urun"];
            UrunStok b = db.UrunStok.Where(x => x.ID == id).SingleOrDefault();
            if (b == null)
            {
                RedirectToAction("Hata", "Admin");
            }
            urunler.ListedenCikart(b);
            if (urunler.HepsiniGetir().Count == 0)
            {
                urunler.ListeTemizle();
                Session.Remove("Urun");
                return RedirectToAction("Listesi");
            }
            return RedirectToAction("stokCikarView");
        }


        //----------------------- Ürün stok İşlemleri ---------------------------
        #region,Ürün stok İşlemleri
        [HttpGet]
        public ActionResult stokEkleView(int id)
        {
            var tedarikciler = db.Tedarikci.Select(x => new
            {
                ID = x.ID,
                TedarikciAdi = x.FirmaAdi
            });
            var personeller = db.Personel.Select(x => new
            {
                ID = x.ID,
                adiSoyadi = x.Adi + " " + x.Soyadi
            });
            var urunbirimler = db.UrunBirim.ToList();
            ViewBag.tedarikciler = new SelectList(tedarikciler, "ID", "TedarikciAdi");
            ViewBag.personeller = new SelectList(personeller, "ID", "adiSoyadi");
            ViewBag.personelleri = db.Personel.ToList();
            Urun eklenecekUrun = db.Urun.Where(x => x.ID == id).FirstOrDefault();
            return View(eklenecekUrun);
        }

        [HttpPost]
        public ActionResult stokEkle(UrunGiris veri, string UrunSeriNo, int UrunID)
        {
            try
            {
                Urun urun = db.Urun.FirstOrDefault(x => x.ID == UrunID);
                if (UrunSeriNo != null)
                {
                    string[] Seriparts = UrunSeriNo.Split('^');
                    for (int i = 0; i < Seriparts.Length; i++)
                    {
                        string s = Seriparts[i].ToString();
                        if (s == "")
                        {
                            continue;
                        }
                        UrunStok st = new UrunStok
                        {
                            Aktif = true,
                            UrunID = urun.ID,
                            UrunSeriNo = s
                        };

                        db.UrunStok.Add(st); // stok Girildi;
                        db.SaveChanges();

                        UrunStok girilenStok = db.UrunStok.Where(x => x.UrunSeriNo == s).SingleOrDefault();

                        UrunGiris ug = new UrunGiris
                        {
                            StokID = girilenStok.ID,
                            AlanPerID = urun.PersonelID,
                            TedarikciID = urun.TedarikciID,
                            Aciklama = urun.Aciklama,
                            GirisTarihi = DateTime.Now
                        };

                        db.UrunGiris.Add(ug);
                        db.SaveChanges();
                    }
                }
                TempData["GenelMesaj"] = "Stok ekleme işlemi başarılı bir şekilde tamamlanmıştır.";
                return RedirectToAction("Listesi", "Urun");
            }
            catch (Exception)
            {
                return Redirect("/Admin/Hata");
            }

            
        }

        [HttpGet]
        public ActionResult urunGirisleri()
        {
            var urunler = db.UrunGiris.Where(x => x.UrunStok.UrunID != null).ToList();
            ViewBag.yazilimUrunler = db.UrunGiris.Where(x => x.YazilimUrunID != null).ToList();
            return View(urunler);
        }

        #endregion
    }
}