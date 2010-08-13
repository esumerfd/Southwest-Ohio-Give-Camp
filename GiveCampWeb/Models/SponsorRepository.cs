using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using System.Web;

namespace GiveCampWeb.Models
{
    public class SponsorRepository
    {
        public IEnumerable<Sponsor> getSponsors()
        {
            string fileloc = HttpContext.Current.Server.MapPath("~/App_Data") + @"\"+Properties.Settings.Default.SponsorsFileLocation;
            if (System.IO.File.Exists(fileloc))
            {
                var q = from sponsor in XElement.Load(fileloc).Elements("Sponsor")
                        select new Sponsor()
                        {
                            AlternateText = sponsor.Element("AlternateText").Value,
                            ImageUrl = sponsor.Element("ImageUrl").Value,
                            NavigateURL = sponsor.Element("NavigateUrl").Value,
                        };
                return q.ToList();
            }
            else return null;
        }
    }
}