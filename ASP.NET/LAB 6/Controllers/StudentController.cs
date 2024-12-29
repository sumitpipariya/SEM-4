using Microsoft.AspNetCore.Mvc;

namespace DemoMVC.Controllers
{
    public class StudentController : Controller
    {
        public IActionResult StudentList()
        {
            return View();
        }

        public IActionResult StudentDetails()
        {
            return View();
        }

        public IActionResult CollegeDetails()
        {
            return View();
        }


    }
}
