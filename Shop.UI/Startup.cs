using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.AspNet.Identity;
using Shop.UI.Models.Identity;

[assembly: OwinStartup(typeof(Shop.UI.Startup))]

namespace Shop.UI
{
    public class Startup
    {

        public static Func<UserManager<AppUser, int>> UserManagerFactory { get; private set; }

        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = "ApplicationCookie",
                LoginPath = new PathString("/auth/login")
            });
            UserManagerFactory = () =>
            {
                var usermanager = new UserManager<AppUser, int>(
                    new CustomUserStore(new ApplicationDbContext()));
                // добавляем при необходимости валидацию!!!
                usermanager.UserValidator = new UserValidator<AppUser, int>(usermanager)
                {
                    AllowOnlyAlphanumericUserNames = false
                };

                return usermanager;
            };
        }
    }
}
