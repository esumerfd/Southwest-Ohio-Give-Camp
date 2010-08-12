using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web;
namespace GiveCampWeb.Helpers
{
    public static class AdBlockHelper
    {
        public static MvcHtmlString AdBlock(this HtmlHelper htmlHelper, string linkText, string controllerName, string actionName)
        {
            //TagBuilder link = new TagBuilder("img");
            //link.MergeAttribute("src", "../../Content/Images/SponsorLogos/LogoGrapeCity.png");
            //link.MergeAttribute("alt", "DiscountASP.Net");
            //link.MergeAttribute("width", "230px");
            //link.MergeAttribute("border", "0");
            return MvcHtmlString.Create(string.Empty); //return MvcHtmlString.Create(link.ToString());
         
        }
    }
}