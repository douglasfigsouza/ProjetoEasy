using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjetoEasy.Controllers
{
    public class ProgramadoresController : Controller
    {
        // GET: Programadores
        public ActionResult Add_Programador()
        {
            return View();
        }
    }
}