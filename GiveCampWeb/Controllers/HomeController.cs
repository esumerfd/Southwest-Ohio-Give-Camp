using System.Web.Mvc;

namespace GiveCampWeb.Controllers
{
    public class HomeController : Controller
    {
        
        public ActionResult Index()
        {
            return View("Homepage");
        }

        public ActionResult About()
        {
            return View("About");
        }

        public ActionResult Contact()
        {
            return View("Contact");
        }

        public ActionResult Sponsor()
        {
            return View("Sponsor");
        }

        public ActionResult Directions()
        {
            return View("Directions");
        }
        public ActionResult FAQs(string id)
        {
            // just FAQs with no section specified
            if(string.IsNullOrEmpty(id))
            {
                return (View("FAQs"));
            }

            // section specified
            switch (id)
            {
                case "Charities":
                    return (View("FAQs-Charities"));
                case "Developers":
                    return (View("FAQs-Developers"));
                case "EventStaff":
                    return (View("FAQs-EventStaff"));
                case "Sponsors":
                    return (View("FAQs-Sponsors"));
                default:
                    // someone typed in a non-existant section URL
                    // redirect them to the 'no section specified' case
                    return (RedirectToAction("FAQs","Home"));
            }
        }

    }
}
