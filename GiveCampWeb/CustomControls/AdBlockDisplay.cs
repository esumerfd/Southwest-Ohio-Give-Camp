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
        /// <summary>
        /// Helper method to display Sponsor Logos
        /// </summary>
        /// <param name="htmlHelper"></param>
        /// <param name="DonerType">"Cash","NonCash","AllPage" or "AllSlide"</param>
        /// <returns></returns>
        public static MvcHtmlString AdBlock(this HtmlHelper htmlHelper, string DonerType)
        {
            if (DonerType == "Cash") return CashControl();
            if (DonerType == "AllPage") return ALLPageControl();
            if (DonerType == "AllSlide") return ALLSlideControl();
            else return NonCashControl();
        }
        private static  MvcHtmlString CashControl()
        {
            Models.SponsorRepository SR = new Models.SponsorRepository();
            StringBuilder strbld = new StringBuilder();
            TagBuilder script = new TagBuilder("script");
            script.MergeAttribute("language", "javascript");
            script.MergeAttribute("type", "text/javascript");
            script.InnerHtml = @"$(function () { $('#slideshow1').cycle({ speed: 2000, sync: 1 }); function onBefore() { $('#title').html(this.alt); } });";
            strbld.AppendLine(script.ToString());
            TagBuilder linkouter = new TagBuilder("div");
            linkouter.MergeAttribute("id", "slideshow1");
            linkouter.MergeAttribute("class", "pics");

            foreach (var sponsor in SR.getCashSponsors())
            {
                TagBuilder linka = new TagBuilder("a");
                linka.MergeAttribute("href", sponsor.NavigateURL);
                TagBuilder link = new TagBuilder("img");
                link.MergeAttribute("src", sponsor.ImageUrl);
                link.MergeAttribute("alt", sponsor.AlternateText);
                link.MergeAttribute("style", "margin:10px;");

                link.MergeAttribute("width", "200px");
                linka.InnerHtml = link.ToString();
                linkouter.InnerHtml += linka.ToString() + Environment.NewLine;

            }
            strbld.Append(linkouter.ToString());
            return MvcHtmlString.Create(strbld.ToString());
        }
        private static MvcHtmlString NonCashControl()
        {
            Models.SponsorRepository SR = new Models.SponsorRepository();
            StringBuilder strbld = new StringBuilder();
            TagBuilder script = new TagBuilder("script");
            script.MergeAttribute("language", "javascript");
            script.MergeAttribute("type", "text/javascript");
            script.InnerHtml = @"$(function () { $('#slideshow1').cycle({ speed: 3000, sync: 1 }); function onBefore() { $('#title').html(this.alt); } });";
            strbld.AppendLine(script.ToString());
            TagBuilder linkouter = new TagBuilder("div");
            linkouter.MergeAttribute("id", "slideshow1");
            linkouter.MergeAttribute("class", "pics");

            foreach (var sponsor in SR.getNonCashSponsors())
            {
                TagBuilder linka = new TagBuilder("a");
                linka.MergeAttribute("href", sponsor.NavigateURL);
                TagBuilder link = new TagBuilder("img");
                link.MergeAttribute("src", sponsor.ImageUrl);
                link.MergeAttribute("alt", sponsor.AlternateText);
                link.MergeAttribute("style", "margin-bottom:10px;");

                link.MergeAttribute("width", "200px");
                linka.InnerHtml = link.ToString();
                linkouter.InnerHtml += linka.ToString() + Environment.NewLine;

            }
            strbld.Append(linkouter.ToString());
            return MvcHtmlString.Create(strbld.ToString());
        }
        private static MvcHtmlString ALLSlideControl()
        {
            Models.SponsorRepository SR = new Models.SponsorRepository();
            StringBuilder strbld = new StringBuilder();
            TagBuilder script = new TagBuilder("script");
            script.MergeAttribute("language", "javascript");
            script.MergeAttribute("type", "text/javascript");
            script.InnerHtml = @"$(function () { $('#slideshow1').cycle({ speed: 4000, sync: 1 }); function onBefore() { $('#title').html(this.alt); } });";
            strbld.AppendLine(script.ToString());
            TagBuilder linkouter = new TagBuilder("div");
            linkouter.MergeAttribute("id", "slideshow1");
            linkouter.MergeAttribute("class", "pics");

            foreach (var sponsor in SR.getSponsors())
            {
                TagBuilder linka = new TagBuilder("a");
                linka.MergeAttribute("href", sponsor.NavigateURL);
                TagBuilder link = new TagBuilder("img");
                link.MergeAttribute("src", sponsor.ImageUrl);
                link.MergeAttribute("alt", sponsor.AlternateText);
                link.MergeAttribute("style", "margin-bottom:10px;");

                link.MergeAttribute("width", "200px");
                linka.InnerHtml = link.ToString();
                linkouter.InnerHtml += linka.ToString() + Environment.NewLine;

            }
            strbld.Append(linkouter.ToString());
            return MvcHtmlString.Create(strbld.ToString());
        }
        private static MvcHtmlString ALLPageControl()
        {
            Models.SponsorRepository SR = new Models.SponsorRepository();
            StringBuilder strbld = new StringBuilder();
            strbld.AppendLine("<table>");
            int i = 0;
            foreach (var sponsor in SR.getSponsors())
            {
                if (i == 0) strbld.AppendLine("<tr>");
                TagBuilder linkouter = new TagBuilder("a");
                TagBuilder link = new TagBuilder("img");
                link.MergeAttribute("src", sponsor.ImageUrl);
                link.MergeAttribute("alt", sponsor.AlternateText);
                link.MergeAttribute("style", "margin:20px;");

                link.MergeAttribute("width", "200px");
                linkouter.MergeAttribute("href", sponsor.NavigateURL);
                linkouter.InnerHtml = link.ToString();
                strbld.AppendLine("<td>");
                strbld.Append(linkouter.ToString());
                strbld.AppendLine("</td>");
                i++;
                if (i > 1)
                {
                    i = 0;
                    strbld.AppendLine("</tr>");
                }
            }
                if(i==1)strbld.AppendLine("<td></td></tr>");
                strbld.AppendLine("</table>");
            return MvcHtmlString.Create(strbld.ToString()); //return MvcHtmlString.Create(link.ToString());
        }
    }
}