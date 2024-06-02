using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Modelo
{
    public class Catalogo_Modelo
    { 
        public int id_catalogo {  get; set; }
        public int id_cliente {  get; set; }    
        public int id_contrato { get; set; }   
        public string nombre_cliente { get; set; }
        public int id_tipo_cliente { get; set; }
        public string accion { get; set; }
        public string id_fuente {  get; set; }  

    }
}
