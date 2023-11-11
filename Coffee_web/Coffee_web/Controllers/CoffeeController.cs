using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnWebCF.Controllers
{
    public class CoffeeController : Controller
    {
        // GET: Coffee
        public ActionResult LayoutMain()
        {
            return View();
        }
    }
}