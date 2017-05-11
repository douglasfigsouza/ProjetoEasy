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
        public CidadesController()
        {
            this.CidadeRep = new CidadesRepository();
        }
        // GET: Cidades
        public JsonResult GetCityId(int Id)
        {
            return new JsonResult { Data = CidadeRep.GetCityId(Id), JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
    }
}