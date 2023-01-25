using Microsoft.AspNetCore.Mvc;
using sampledatetime.Models;
using System.Diagnostics;

namespace sampledatetime.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        [HttpPost]
        public ContentResult AjaxMethod(string name)
        {
            string currentDateTime = string.Format("Hello {0}.\nCurret DateTime: {1}", name, DateTime.Now.ToString());
            return Content(currentDateTime);
        }
    }
}
