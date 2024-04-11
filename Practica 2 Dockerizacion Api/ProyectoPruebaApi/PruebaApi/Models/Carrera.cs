using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PruebaApi.Models
{
    public class Carrera
    {
        public int IdCarrera { get; set; }
        public string NomCarrera { get; set; }
        public string Materia { get; set; }
        public string Especialidad { get; set; }
        public string MateriasEspecialidad { get; set;}

    }
}
