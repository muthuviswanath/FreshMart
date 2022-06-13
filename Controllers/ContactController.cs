using Microsoft.AspNetCore.Mvc;

namespace FreshMart.Controllers
{
    public class ContactController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
