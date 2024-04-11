using Microsoft.AspNetCore.Mvc;
using PruebaApi.Data;
using PruebaApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PruebaApi.Controllers
{

    public class CarreraController : ControllerBase
    {
        // GET api/<controller>
        public List<Carrera> Get()
        {
            return CarreraData.Listar();
        }

        public Carrera Get(int id)
        {
            return CarreraData.Obtener(id);
        }

        // POST api/<controller>
        public bool Post([System.Web.Http.FromBody] Carrera oCarrera)
        {
            return CarreraData.Registrar(oCarrera);
        }

        // PUT api/<controller>/5
        public bool Put([System.Web.Http.FromBody] Carrera oCarrera)
        {
            return CarreraData.Modificar(oCarrera);
        }

        // DELETE api/<MateriasController>/5
        // DELETE api/<controller>/5
        public bool Delete(int id)
        {
            return CarreraData.Eliminar(id);
        }
    }
}
