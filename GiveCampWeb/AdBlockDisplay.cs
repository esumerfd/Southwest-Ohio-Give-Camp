using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web;
using System.Text;

namespace GiveCampWeb.Helpers
{
    public static class AdBlockHelper
    {
        public static MvcHtmlString AdBlock(this HtmlHelper htmlHelper, string linkText, string controllerName, string actionName)
        {
            Models.SponsorRepository SR = new Models.SponsorRepository();
            StringBuilder strbld = new StringBuilder();

            foreach (var sponsor in SR.getSponsors())
            {
                TagBuilder linkouter = new TagBuilder("a");
                TagBuilder link = new TagBuilder("img");
                link.MergeAttribute("src", sponsor.ImageUrl);
                link.MergeAttribute("alt", sponsor.AlternateText);
                link.MergeAttribute("style", "margin-bottom:10px;");
               
                link.MergeAttribute("width", "200px");
                linkouter.MergeAttribute("href", sponsor.NavigateURL);
                linkouter.InnerHtml = link.ToString();
                strbld.Append(linkouter.ToString());
            }

            return MvcHtmlString.Create(strbld.ToString()); //return MvcHtmlString.Create(link.ToString());
         
        }
    }
}