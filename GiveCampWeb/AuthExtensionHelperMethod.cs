using System.Web.Mvc;
using System.Web.Routing;
using System.Web;

namespace GiveCampWeb.Helpers
{
    public static class AuthListItemHelper
    {
        public static MvcHtmlString AuthListItem(this HtmlHelper htmlHelper, string linkText,string controllerName, string actionName)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                UrlHelper urlHelper = ((Controller)htmlHelper.ViewContext.Controller).Url;
                string url = urlHelper.Action(actionName, controllerName);
                TagBuilder link = new TagBuilder("a");
                link.InnerHtml = linkText;
                link.MergeAttribute("href", url);
                return MvcHtmlString.Create(string.Format("<li>{0}</li>",link.ToString()));
            }
            else return MvcHtmlString.Create(string.Empty);
        }
    }
}
