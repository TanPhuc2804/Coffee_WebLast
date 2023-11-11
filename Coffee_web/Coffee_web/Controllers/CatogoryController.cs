using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Coffee_web.Models;

namespace CoffeeManager.Controllers
{
    public class CatogoryController : Controller
    {
        CoffeeEntities database = new CoffeeEntities();
        // GET: Catogory
        public ActionResult Index()
        {
            var list = database.Catogories.ToList();
            ViewBag.listCatogory = list;
            return PartialView(list);
        }
    }
}