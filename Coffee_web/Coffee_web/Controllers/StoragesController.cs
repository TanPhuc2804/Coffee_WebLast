using Coffee_web.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Coffee_web.Controllers
{
    public class StoragesController : Controller
    {
        CoffeeEntities db = new CoffeeEntities();
        // GET: Storages
        public ActionResult StoragesMain()
        {
            List<Product> products = db.Products.ToList();
         
            List<Storages> list= products.Select(
                x=>new Storages()
                {
                    images=x.Images,
                    ProductID = x.id_product,
                    ProductName = x.name_product,
                    Num = x.num
                }
                ).ToList();
            return View(list);
        }

        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Product product)
        {
            db.Products.Add(product);
            db.SaveChanges();
            return RedirectToAction("StoragesMain");
        }

        public ActionResult Edit(int id)
        {
            return View(db.Products.Where(s=> s.id_product == id).FirstOrDefault());
        }
        [HttpPost]
        public ActionResult Edit(int id,Product pro)
        {
            db.Entry(pro).State=System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("StoragesMain");
        }
        public ActionResult Delete(int id)
        {
            return View(db.Products.Where(s=>s.id_product == id).FirstOrDefault());
        }
        [HttpPost]
        public ActionResult Delete(int id,Product product)
        {
            product = db.Products.Where(s => s.id_product == id).FirstOrDefault();
            db.Products.Remove(product);
            db.SaveChanges();
            return RedirectToAction("StoragesMain");
        }
        public ActionResult Details(int id)
        {
            return View(db.Products.Where(s => s.id_product == id).FirstOrDefault()) ;
        }
    }
}