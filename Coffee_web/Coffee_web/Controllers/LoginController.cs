using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Coffee_web.Models;

namespace Coffee_web.Controllers
{
    public class LoginController : Controller
    {
        CoffeeEntities database= new CoffeeEntities();
        // GET: Login
        public ActionResult PrintStaff()
        {
            return View(database.Staffs.ToList());
        }


        [HttpGet]
        public ActionResult FormLogin()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Authen(Staff _staff)
        {
            var check = database.Staffs.Where(
                s => s.id_staff.Equals(_staff.id_staff) 
             && s.password_staff.Equals(_staff.password_staff)
            ).FirstOrDefault();

            if(check == null)
            {
                ViewBag.Login = "Ten dang nhap hay mat khau khong dung";
                return View("FormLogin");

            }
            Session["name_staff"] = _staff.name_staff;
            return RedirectToAction("Index","ProductClient");
        }
        [HttpGet]
        public ActionResult Register()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Register(Staff _staff)
        {
            if (ModelState.IsValid)
            {
                var check = database.Staffs.FirstOrDefault(s=>s.id_staff == _staff.id_staff);
                if(check == null)
                {
                    database.Staffs.Add(_staff);
                    database.SaveChanges();
                    return RedirectToAction("FormLogin");
                }
                else
                {
                    ViewBag.error = "Ten id da trung vui long dat id khac";
                    return View();
                }
            }
            return View();
        }

    }
}