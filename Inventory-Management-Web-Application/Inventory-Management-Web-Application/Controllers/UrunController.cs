﻿using Inventory_Management_Web_Application.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Inventory_Management_Web_Application.Controllers
{
    public class UrunController : Controller
    {
        // GET: Urun
        InventoryContext db = new InventoryContext();

        [HttpGet]
        public ActionResult Listesi()
        {
            ViewBag.ayarlar = db.Ayarlar.FirstOrDefault();
            return View(db.Urun.ToList());
        }

        public PartialViewResult altKategoriDropdown(int id)
        {
            var altkategoriler = db.AltKategori.Where(x=>x.AnaKategorID==id).ToList();
            ViewBag.altkategoriler = new SelectList(altkategoriler, "ID", "KategoriAdi");
            return PartialView();
        }

        [HttpGet]
        public ActionResult Ekle()
        {
            var anakategoriler = db.AnaKategori.ToList();
            var urunbirimler = db.UrunBirim.ToList();
            ViewBag.anakategoriler = new SelectList(anakategoriler, "ID", "KategoriAdi");
            ViewBag.urunbirimler = new SelectList(urunbirimler, "ID", "Adi");
            return View();
        }

        [HttpPost]
        public ActionResult Ekle(Urun u)
        {
            int Lastid = 0;
            if (db.Urun != null)
            {
                Lastid = db.Urun.Max(x => x.ID);
            }
            Lastid = db.Urun.Max(x => x.ID);           
            string urunKodu = u.altKategoriID.ToString() + "1000" + DateTime.Now.Year.ToString() + (Lastid+1).ToString();
            u.UrunKodu = urunKodu;
            db.Urun.Add(u);
            db.SaveChanges();
            return RedirectToAction("Listesi");
        }

        [HttpPost]
        public ActionResult Sil(int id)
        {
            Urun b = db.Urun.Where(x => x.ID == id).SingleOrDefault();
            if (b == null)
            {
                return Json(false);
            }
            else
            {
                try
                {
                    db.Urun.Remove(b);
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
        public ActionResult Guncelle(int id)
        {
            Urun u = db.Urun.Where(x => x.ID == id).FirstOrDefault();

            var anakategoriler = db.AltKategori.ToList();
            var urunbirimler = db.UrunBirim.ToList();
            ViewBag.anakategoriler = new SelectList(anakategoriler, "ID", "KategoriAdi");
            ViewBag.urunbirimler = new SelectList(urunbirimler, "ID", "Adi");
            if (u==null)
            {
                return RedirectToAction("Hata", "Admin");
            }
            return View(u);
        }

        [HttpPost]
        public ActionResult Guncelle(Urun u)
        {
            Urun gu = db.Urun.Where(x => x.ID == u.ID).FirstOrDefault();
            if (gu==null)
            {
                return RedirectToAction("Hata", "Admin");
            }
            gu.altKategoriID = u.altKategoriID;
            gu.UrunAdi = u.UrunAdi;
            gu.Aciklama = u.Aciklama;
            gu.StokMiktari = u.StokMiktari;
            gu.UrunBirimID = u.UrunBirimID;
            gu.UrunKodu = u.UrunKodu;
            gu.UrunSeriNo = u.UrunSeriNo;
            db.SaveChanges();
            return RedirectToAction("Listesi");
        }

        // Garanti 
        [HttpGet]
        public ActionResult Garanti(int id)
        {
            Urun u = db.Urun.Where(x => x.ID == id).FirstOrDefault();
            var personeller = db.Personel.Select(x => new
            {
                ID = x.ID,
                adiSoyadi = x.Adi + " " + x.Soyadi
            });
            ViewBag.personeller = new SelectList(personeller, "ID", "adiSoyadi");
            if (u == null)
            {
                return RedirectToAction("Hata", "Admin");
            }
            return View(u);
        }

        [HttpPost]
        public ActionResult Garanti(ArizaDurum g)
        {
            Urun u = db.Urun.Where(x => x.ID == g.UrunID).FirstOrDefault();
            if (u == null)
            {
                return RedirectToAction("Hata", "Admin");
            }
            if (u.StokMiktari<=0)
            {
                ViewBag.stok = "Bu ürünün stok miktarından daha büyük bir değer girdiniz.";
                return RedirectToAction("Garanti",u);
            }
            u.StokMiktari = u.StokMiktari- g.Adet;
            db.SaveChanges();
            g.aktif = true;
            db.ArizaDurum.Add(g);
            db.SaveChanges();
            return RedirectToAction("GarantiListesi");
        }

        public ActionResult GarantiListesi()
        {
            return View(db.ArizaDurum.Where(x=>x.aktif==true).ToList());
        }

        public ActionResult GarantiCikar(int id)
        {
            ArizaDurum ad = db.ArizaDurum.Where(x => x.ID == id).FirstOrDefault();
            if (ad == null)
            {
                return RedirectToAction("Hata", "Admin");
            }
            Urun u = db.Urun.Where(x => x.ID == ad.UrunID).FirstOrDefault();

            u.StokMiktari = u.StokMiktari + ad.Adet;
            db.SaveChanges();
            ad.aktif = false;
            db.SaveChanges();
            return RedirectToAction("GarantiListesi");
        }

        public ActionResult EskiGarantiListesi()
        {
            return View(db.ArizaDurum.Where(x => x.aktif == false).ToList());
        }

        [HttpPost]
        public ActionResult EskiGarantiSil(int id)
        {
            ArizaDurum b = db.ArizaDurum.Where(x => x.ID == id).SingleOrDefault();
            if (b == null)
            {
                return Json(false);
            }
            else
            {
                try
                {
                    db.ArizaDurum.Remove(b);
                    db.SaveChanges();
                    return Json(true);
                }
                catch (Exception)
                {
                    return Json("FK");
                }

            }
        }

        // urun çıkarma
        public ActionResult stokCikar(int id)
        {
            Urun u = db.Urun.Where(x => x.ID == id).SingleOrDefault();
            if (u.StokMiktari==0)
            {
                ViewBag.hata = "Bu ürün için stok bulunmamaktadır.";
                return RedirectToAction("Listesi");
            }
            if (u == null)
            {
                return RedirectToAction("Hata", "Admin");
            }

            var urunSepet = (App_Classes.UrunCikis)Session["Urun"];
            if (urunSepet == null)
            {
                urunSepet = new App_Classes.UrunCikis();
                Session["Urun"] = urunSepet;
            }
            urunSepet.ListeyeEkle(u);
            return RedirectToAction("Listesi");
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
            var urunbirimler = db.UrunBirim.ToList();
            ViewBag.teslimalanlar = new SelectList(personeller, "ID", "adiSoyadi");
            ViewBag.teslimverenler = new SelectList(personellerVeren, "ID", "adiSoyadi");
            return View();
        }
        [HttpPost]
        public ActionResult stokCikarView(UrunCikis uc)
        {
            int Lastid = 0;
            if (db.UrunCikis.Count() !=0)
            {
                Lastid = db.UrunCikis.Max(x => x.ID);
            }
            int CikisNumarasi = 1000+ DateTime.Now.Year + (Lastid + 1);
            var urunler = (App_Classes.UrunCikis)Session["Urun"];
            List<Urun> liste = urunler.HepsiniGetir();
            List<Urun> temp = new List<Urun>();
            foreach (Urun item in liste)
            {
                if (temp.Where(x => x.ID == item.ID).SingleOrDefault() != null)
                {
                    continue;
                }
                Urun stokDus = db.Urun.Where(x => x.ID == item.ID).FirstOrDefault();
                if (stokDus.StokMiktari==0)
                {
                    ViewBag.hatali = "Çıkarılacak ürünler arasında stok miktarı 0 olan ürünler bulanmaktadır.";
                    return View();
                }
                stokDus.StokMiktari = stokDus.StokMiktari - liste.Where(x => x.ID == item.ID).ToList().Count;
                db.SaveChanges();
                uc.UrunID = item.ID;
                uc.CikisNumarasi = CikisNumarasi;
                uc.CikanMictar = liste.Where(x => x.ID == item.ID).ToList().Count;
                db.UrunCikis.Add(uc);
                db.SaveChanges();
                temp.Add(item);
            }
            urunler.ListeTemizle();
            Session.Remove("Urun");
            return RedirectToAction("UrunCikislar");
        }

        public void urunSepetAl()
        {
            var urunler = (App_Classes.UrunCikis)Session["Urun"];
            if (urunler !=null)
            {
                var liste = urunler.HepsiniGetir();
            }
        }
    }
}