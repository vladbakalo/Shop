using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shop.UI.Models.Identity
{
    
    public class AppUser : IdentityUser<int, CustomUserLogin, CustomUserRole,
    CustomUserClaim> 
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime DateBirthday { get; set; }
    }
    public class CustomUserRole : IdentityUserRole<int> { }
    public class CustomUserClaim : IdentityUserClaim<int> { }
    public class CustomUserLogin : IdentityUserLogin<int> { }

    public class AppRole : IdentityRole<int, CustomUserRole>
    {
        public AppRole() { }
        public AppRole(string name) { Name = name; }
    }

    //public class CustomRoleStore : RoleStore< AppRole, int, CustomUserRole>
    //{
    //    public CustomRoleStore(ApplicationDbContext context)
    //        : base(context)
    //    {
    //    }
    //}
    public class CustomUserStore : UserStore<AppUser, AppRole, int,
        CustomUserLogin, CustomUserRole, CustomUserClaim>
    {
        public CustomUserStore(ApplicationDbContext context)
            : base(context)
        {
        }
    }
}