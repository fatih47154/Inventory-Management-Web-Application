﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Inventory_Management_Web_Application.Controllers
{
    public class TedarikciController : Controller
    {
        // GET: Tedarikci
        public ActionResult Listesi()
        {
            return View();
        }
    }
}