using System;
using System.Collections.Generic;

namespace RK_Negocio.Modelo
{
    public class Email_Modelo
    {
        public static string Email_To { get; set; }
        public static string Password_To { get; set; }
        public static List<string> Para { get; set; } = new List<string>();
        public static List<string> Copia { get; set; } = new List<string>();
        public static string Asunto { get; set; }
        public static string Image { get; set; }
        public static Dictionary<string, string> Body { get; set; } = new Dictionary<string, string>();
    }
    public class PlantillaEmail_Modelo
    {
        public string Para { get; set; } = "";
        public  string Copia { get; set; } = "";
        public string Asunto { get; set; } = "";
        public string body { get; set; } = "";
        public string id_sistema { get; set; } = "0";
        public string accion { get; set; } = "";
    }
}
