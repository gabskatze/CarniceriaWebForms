﻿using Carniceria.DATOS;
using ServiceStack.DataAnnotations;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace Carniceria.DATOS
{
    public class Rol
    {
        [Key]
        [AutoIncrement]
        public int IdRol { get; set; }
        public string Descripcion { get; set; }
      
    }
}
