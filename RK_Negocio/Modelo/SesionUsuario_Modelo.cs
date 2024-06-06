using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Modelo
{
    public static class SesionUsuario_Modelo
    {

        public static int id_usuario { get; set; } = 0;

        public static string nombre { get; set; } = string.Empty;

        public static string email { get; set; } = string.Empty;

        public static string id_sistema { get; set; }=string.Empty;

        public static int id_tipoUser { get; set; } = 0;

        public static string estatus { get; set; } = string.Empty;
    }
}
