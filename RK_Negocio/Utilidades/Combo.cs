using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Utilidades
{
    public class Combo
    {
        public int ID_Int { get; set; }
        public string ID_String { get; set; }
        public string Text { get; set; }

        public Combo(int id, string text)
        {
            ID_Int = id;
            Text = text;
        }
        public Combo(string id, string text)
        {
            ID_String = id;
            Text = text;
        }
    }
}
