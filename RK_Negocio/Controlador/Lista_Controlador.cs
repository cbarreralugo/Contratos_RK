using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Controlador
{
    public class Lista_Controlador
    {
        private static Lista_Controlador _instancia;

        public static Lista_Controlador Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new Lista_Controlador();
                }
                return _instancia;
            }
        }
        public DataTable Obtener_PortGroup_Custodio(int tipoContratoId, int tipoBoId, int tipoFondo)
        {
            DataTable dt = new DataTable();
            string[,] parametro =
            {
                {"@id_tipo_contrato", tipoContratoId.ToString()},
                {"@id_tipo_bo", tipoBoId.ToString()},
                {"@id_tipo_fondo", tipoFondo.ToString()}
            };

            try
            {
                dt = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_Lista.sp_ctr_portgroup_custodio, parametro);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dt;
        }

    }
}
