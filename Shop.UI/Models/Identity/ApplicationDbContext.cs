using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shop.UI.Models.Identity
{
    public class ApplicationDbContext : IdentityDbContext<AppUser, AppRole, int, CustomUserLogin, CustomUserRole, CustomUserClaim>
    {
        public ApplicationDbContext()
            : base("ShopContext")
        { }

        //Для создание при старте приложения
        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }
    }
}