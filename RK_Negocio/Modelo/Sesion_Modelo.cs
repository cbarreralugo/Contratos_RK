using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Modelo
{
    public class Sesion_Modelo
    {
        public int id_usuario { get; set; }

        public string nombre { get; set; }

        public string email { get; set; }

        public string id_sistema { get; set; }

        public int id_tipoUser { get; set; }

        public string estatus { get; set; }
    }
}
