﻿using Inventory_Management_Web_Application.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Inventory_Management_Web_Application.Controllers
{
    public class AdminController : Controller
    {

        InventoryContext db = new InventoryContext();
        // GET: Admin
        public ActionResult Index()
        {
            ViewBag.yazilimlar= db.YazılımUrun.ToList();
            ViewBag.urunler = db.Urun.ToList();
            ViewBag.ayarlar = db.Ayarlar.FirstOrDefault();
            return View();
        }

        public ActionResult Hata()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Ayarlar()
        {
            return View(db.Ayarlar.FirstOrDefault());
        }

        [HttpPost]
        public ActionResult Ayarlar(Ayarlar ayarlar)
        {
            Ayarlar a = db.Ayarlar.FirstOrDefault();
            a.UrunStok = ayarlar.UrunStok;
            a.YazilimUrun = ayarlar.YazilimUrun;
            a.YazilimUrunStok = ayarlar.YazilimUrunStok;
            db.SaveChanges();
            return View(db.Ayarlar.FirstOrDefault());
        }
    }
}