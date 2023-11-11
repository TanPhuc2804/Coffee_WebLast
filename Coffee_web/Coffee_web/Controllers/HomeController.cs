using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Coffee_web.Models;
namespace Coffee_web.Controllers
{
    public class HomeController : Controller
    {
        CoffeeEntities db = new CoffeeEntities();
        public ActionResult Manager()
        {
           List<Order> orders = db.Orders.ToList();
           List<orders> list = orders.Select(
               s=>new orders
               {
                   
               }
               ).ToList();
            
            return View(db.Orders.ToList());
        }
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}