    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Coffee_web.Models;
namespace CoffeeManager.Controllers
{
    public class ShoppingCartController : Controller
    {
        CoffeeEntities db = new CoffeeEntities();
        //Lay cart
        public CartCK GetCartCK()
        {
            CartCK cart = Session["CartCK"] as CartCK;
            if(cart == null|| Session["CartCK"]==null) {
            
            cart = new CartCK();
                Session["CartCK"] = cart;
            }
            return cart;
        }
        // GET: ShoppingCart


        //Them cart vao 
        public ActionResult AddtoCart(int id)
        {
            var pro = db.Products.SingleOrDefault(s => s.id_product == id);
            if (pro != null)
            {
                GetCartCK().Add(pro);
            }
            return RedirectToAction("Show", "ShoppingCart");
        }
        //Xem gio hang
        public ActionResult Show()
        {
            if (Session["CartCK"] == null)
            {
                return RedirectToAction("Show", "ShoppingCart");
            }
            CartCK cart = Session["CartCK"]as CartCK;
            return View(cart);
        }
        //Update so luong
        public ActionResult Update_Cart(FormCollection form)
        {
            CartCK cart = Session["CartCK"] as CartCK;
            int id_pro =int.Parse( form["Id_pro"]);
            int quantity = int.Parse(form["Quantity"]);
            cart.Update_quantity(id_pro, quantity);
            return RedirectToAction("Show", "ShoppingCart");
        }
        //Xoa cart khoi gio hang
        public ActionResult Remove_Cart(int id)
        {
            CartCK cart = Session["CartCK"] as CartCK;
            cart.Remove(id);
            return RedirectToAction("Show", "ShoppingCart");
        }
        //Gio hang de xem co bnh hang da duoc them
        public PartialViewResult BagCart()
        {
            int total_bill = 0;
            CartCK cart = Session["CartCk"] as CartCK;
            if(cart != null)
            
                total_bill = cart.Total_Quantity_in_CartCK();
                ViewBag.Total_Quantity_in_ = total_bill;
                return PartialView("BagCart");
        }
        //Hien thi sau khi thanh toan thanh cong
        public ActionResult Shopping_Success()
        {
            return View();
        }
        //Method Checkout
        //Them cai mat hang vao bang order va order dentail
        public ActionResult CheckOut(FormCollection form)
        {
            try
            {
                CartCK cart = Session["CartCk"] as CartCK;
                Order _orders = new Order();
                _orders.customer_id = int.Parse(form["CodeCustomer"]);
                _orders.IsType = form["Type"];
                _orders.price_total = int.Parse(form["TotalPrice"]);
                
                db.Orders.Add(_orders);
                 foreach(var item in cart.Items)
                 {
                    Order_Dentail _order_Dentail = new Order_Dentail();
                    _order_Dentail.product_id = item.shop_pro.id_product;
                    _order_Dentail.price = item.shop_pro.price;
                    _order_Dentail.price_total = Convert.ToDouble(item.shop_pro.price * item.shop_quan);
                    _order_Dentail.num = item.shop_quan; 
                    db.Order_Dentail.Add(_order_Dentail);
                  foreach(var p in db.Products.Where(s => s.id_product == _order_Dentail.product_id))
                    {
                        var update_quan_pro = p.num - item.shop_quan;
                        p.num = update_quan_pro;
                    }
                 }
                db.SaveChanges();
                cart.ClearCartCK();
                return RedirectToAction("Shopping_Success", "ShoppingCart");

            }
            catch
            { 
                return Content("Error Checkout. Please information of Customer....");
            }
        }
    }
}