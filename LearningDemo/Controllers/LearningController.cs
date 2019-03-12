using LearningDemo.Models;
using Sitecore.Mvc.Presentation;
using System.Web.Mvc;

namespace LearningDemo.Controllers
{
    public class LearningController : Controller
    {
        // GET: Learning
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetProject()
        {
            var datasource = RenderingContext.Current.Rendering.DataSource;
            var datasourceItem = Sitecore.Context.Database.GetItem(datasource);

            var context = Sitecore.Context.Item;

            var currentItem = datasourceItem == null
                ? new Project
                {
                    Title = Sitecore.Context.Item["Title"],
                    Desc = Sitecore.Context.Item["Description"]
                }
                : new Project
                {
                    Title = datasourceItem["Title"],
                    Desc = datasourceItem["Description"]
                };

            return View("~/Views/Learning/Projects.cshtml", currentItem);
        }

        public ActionResult GetHeader()
        {
            return View("~/Views/Learning/Header.cshtml");
        }

        public ActionResult GetFooter()
        {
            return View("~/Views/Learning/Footer.cshtml");
        }
    }
}