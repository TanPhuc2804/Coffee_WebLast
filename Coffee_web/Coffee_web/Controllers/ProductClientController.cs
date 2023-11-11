using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Coffee_web.Models;

namespace CoffeeManager.Controllers
{
    public class ProductClientController : Controller
    {
        CoffeeEntities database = new CoffeeEntities();
        // GET: ProductClient

        //Xem danh sach cac mat hang
        public ActionResult Index(int? Category)
        {
            if (Category != null)
                return View(database.Products.Where(s => s.id_catogory == Category).ToList());
            else
                return View(database.Products.ToList());
        }
    }
}