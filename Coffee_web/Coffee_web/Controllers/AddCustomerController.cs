using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Coffee_web.Models;
namespace Coffee_web.Controllers
{
    public class AddCustomerController : Controller
    {
        CoffeeEntities db = new CoffeeEntities();
        // GET: AddCustomer
        public ActionResult AddCus()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddCus(Customer _customer)
        {
            if (ModelState.IsValid)
            {
                var check = db.Customers.FirstOrDefault(s=>s.id_customer == _customer.id_customer);
                if (check == null)
                {
                    db.Customers.Add(_customer);
                    db.SaveChanges();
                    return RedirectToAction("Show", "ShoppingCart");
                }
                else
                {
                    ViewBag.error = "Da trung id";
                    return View();
                }
            }
            return View();
        }
    }
}