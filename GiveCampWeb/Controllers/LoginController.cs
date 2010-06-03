using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GiveCampWeb.Controllers
{
    public class LoginController : Controller
    {
        //
        // GET: /Login/

        //public ActionResult Login()
        //{
        //    return View("Login");
        //}
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Login(string userName, string password, string returnUrl)
        {
            return View("Login");
           
        }
    }
}
