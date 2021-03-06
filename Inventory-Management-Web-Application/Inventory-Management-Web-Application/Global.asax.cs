﻿using Inventory_Management_Web_Application.App_Classes;
using Inventory_Management_Web_Application.Jobs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Inventory_Management_Web_Application
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            GlobalFilters.Filters.Add(new _SecurityFilter());
            JobScheduler.Start();
        }

        

    }
}
