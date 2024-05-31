using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Controlador
{
    public class Contratos_RK_Controlador
    {
        private static Contratos_RK_Controlador _instancia;

        public static Contratos_RK_Controlador Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new Contratos_RK_Controlador();
                }
                return _instancia;
            }
        }

     

    }
}
