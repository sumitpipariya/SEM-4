using Microsoft.AspNetCore.Mvc;

namespace DemoMVC.Controllers
{
    public class CollegeController : Controller
    {
        public IActionResult CollegeDetails()
        {
            return View();
        }
    }
}
