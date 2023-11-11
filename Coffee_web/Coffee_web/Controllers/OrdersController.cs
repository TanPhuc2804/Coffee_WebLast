using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Coffee_web.Models;
namespace Coffee_web.Controllers
{
    public class OrdersController : Controller
    {
        CoffeeEntities db= new CoffeeEntities();
        // GET: Orders
        public ActionResult test()
        {
            Order x = new Order();  
           
            List<Order> list=db.Orders.ToList();
           
            return View(list);
        }
    }
}