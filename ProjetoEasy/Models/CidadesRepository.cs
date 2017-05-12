using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoEasy.Models
{
    public class CidadesRepository
    {
        Gesprog context = new Gesprog();
        List<CIDADE> ListaDeCidades;
        public CidadesRepository()
        {
            this.context = new Gesprog();
            this.ListaDeCidades = new List<CIDADE>();
        }
        public List<CIDADE> GetCityId(int Id)
        {
            var consulta = from c in context.CIDADE
                           select c;
            foreach (var item in consulta.ToList())
            {
                ListaDeCidades.Add(new CIDADE
                {
                    CIDADEID = item.CIDADEID,
                    NOME = item.NOME
                });
            }
            return ListaDeCidades.ToList();
        }
    }
}