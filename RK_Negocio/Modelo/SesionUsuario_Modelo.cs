using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Modelo
{
    public static class SesionUsuario_Modelo
    {

        public static int id_usuario { get; set; }

        public static string nombre { get; set; }

        public static string email { get; set; }

        public static string id_sistema { get; set; }

        public static int id_tipoUser { get; set; }

        public static string estatus { get; set; }
    }
}
