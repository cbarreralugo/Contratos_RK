using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Modelo
{
    public class Email_Modelo
    {
        
        public static string Email_To { get; set; }
        public static string Password_To { get; set; }
        public static List<string> Para { get; set; } // Para múltiples destinatarios
        public static List<string> Copia { get; set; } // Para múltiples destinatarios en copia
        public static string Asunto { get; set; }
        public static string image { get; set; }
        public static Dictionary<string, string> Body { get; set; }

        public Email_Modelo()
        {
            Para = new List<string>(); // Inicializar la lista de destinatarios
            Copia = new List<string>(); // Inicializar la lista de copia
            Body = new Dictionary<string, string>(); // Inicializar el diccionario del cuerpo
        }
    }
}
