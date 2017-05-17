using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shop.Service.Services;
using Shop.Repository.Repositories;
using Shop.DataLayer.DbLayer;
using System.Data.Entity;
using Shop.UI.Models;


namespace Shop.UI.Controllers
{
    [Authorize]
    public class GoodsController : Controller
    {
        List<ShopingCart> shopingCart = new List<ShopingCart>();

        IGenericRepository<Good> repoGood;
        IGenericRepository<Photo> repoPhoto;
        //
        IEnumerable<TravelMode> list = new List<TravelMode>()
            {
                new TravelMode {id = 1, name = "на автомобиле"},
                new TravelMode {id = 2, name = "на общественном транспорте"},
                new TravelMode {id = 3, name = "пешком"},
            };
        public GoodsController(IGenericRepository<Good> _repoGood, IGenericRepository<Photo> _repoPhoto)
        {
            repoGood = _repoGood;
            repoPhoto = _repoPhoto;
        }
        // GET: Goods
        public ActionResult Index()
        {
            ViewModelGoodRepository repo = new ViewModelGoodRepository(repoGood, repoPhoto);
            var model = repo.GetAll();
            return View(model);
        }
        [AllowAnonymous]
        public ActionResult Contact()
        {
            ViewBag.Message = "Our contact page.";
            ViewBag.travelMode = new SelectList(list, "id", "name");
            return View();
        }

        public ActionResult Cart(int id)//принимаем ид товара
        {
            ShopingCart cart = new ShopingCart() { UserId = 1, UserName = (User.Identity.Name == "") ? "Vasja" : User.Identity.Name, GoodId = id, Count = 1 };
                if(Session["ShopingCart"] == null)
                {
                    shopingCart.Add(cart);
                    //Session["ShopinCart"] = shopingCart;
                }
                else
                {
                    shopingCart = (List<ShopingCart>)Session["ShopingCart"];
                    Boolean isGoodinCart = false;
                    foreach (var item in shopingCart)
                    {
                        if (item.GoodId == id)
                        {
                            item.Count++;
                            isGoodinCart = true;
                        }
                    }
                    if (!isGoodinCart)
                        shopingCart.Add(cart);

                }
                Session["ShopingCart"] = shopingCart;
                return new EmptyResult();
        }
        public ActionResult ShowCart()
        {
            if (Session["ShopingCart"] != null)
                shopingCart = (List<ShopingCart>)Session["ShopingCart"];
            if (shopingCart.Count > 0)
                return View(shopingCart);
            else
                return PartialView("NoProd");
        }
    }
}