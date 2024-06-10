using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Controlador
{
    public class PlantillaEmail_Controlador
    {
        private static PlantillaEmail_Controlador _instancia;

        public static PlantillaEmail_Controlador Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new PlantillaEmail_Controlador();
                }
                return _instancia;
            }
        }

        public DataTable PlantillaEmail(PlantillaEmail_Modelo modelo)
        {
            DataTable dt = new DataTable();
            string[,] parametro =
            {
                {"@accion", modelo.accion.ToString()},
                {"@id_sistema", modelo.id_sistema.ToString()},
                {"@para", modelo.Para.ToString()},
                {"@copia", modelo.Copia.ToString()},
                {"@asunto", modelo.Asunto.ToString()},
                {"@mensaje", modelo.body.ToString()}
            };

            try
            {
                dt = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_Email.sp_plantilla_email, parametro);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dt;
        }
    }
}
