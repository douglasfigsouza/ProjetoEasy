﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoEasy.Models
{
    public class EstadosRepository
    {
        Gesprog context;
        List<ESTADO> ListaDeEstados;
        public EstadosRepository()
        {
            this.context = new Gesprog();
            this.ListaDeEstados = new List<ESTADO>();
        }
        public List<ESTADO> GetEstados()
        {
            var consulta = from e in context.ESTADO
                           select e;
            foreach (var item in consulta.ToList())
            {
                ListaDeEstados.Add(new ESTADO
                {
                    ESTADOID = item.ESTADOID,
                    SIGLA=item.SIGLA
                });   
            }
            return ListaDeEstados.ToList();
        }
    }
}