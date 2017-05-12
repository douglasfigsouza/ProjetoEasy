using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using ProjetoEasy.Models;

namespace ProjetoEasy.Controllers
{
    public class CidadesController : Controller
    {
        CidadesRepository CidadeRep;
        List<SelectListItem> ListaDeCidades;
        public CidadesController()
        {
            this.CidadeRep = new CidadesRepository();
            this.ListaDeCidades = new List<SelectListItem>();
        }
        // GET: Cidades
        public JsonResult GetCityId(int Id)
        { 
            //return Json(new SelectList(ListaDeCidades, "Value", "Text", 0), JsonRequestBehavior.AllowGet);
            return new JsonResult { Data =CidadeRep.GetCityId(Id),JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
    }
}