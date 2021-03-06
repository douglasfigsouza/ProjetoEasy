﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetoEasy.Models;

namespace ProjetoEasy.Controllers
{
    public class ProgramadoresController : Controller
    {
        EstadosRepository EstadosRep;
        public ProgramadoresController()
        {
            this.EstadosRep = new EstadosRepository();
        }
        public ActionResult Add_Programador()
        {
            ViewBag.Legend = "Cadastrar Programador";
            ViewBag.Estados = EstadosRep.GetEstados();
            return View();
        }
        [HttpPost]
        private ActionResult Add_Programador(PROGRAMADORES programador)
        {
            if (ModelState.IsValid)
            {
                programador.NOME_PROG = programador.NOME_PROG;
                programador.CIDADEID = programador.CIDADEID;
                programador.EMAIL_PROG = programador.EMAIL_PROG;
            }
            return View();
        }
    }
}