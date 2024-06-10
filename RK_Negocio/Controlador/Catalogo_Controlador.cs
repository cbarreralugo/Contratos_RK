using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Controlador
{
    public class Catalogo_Controlador
    {
        private static Catalogo_Controlador instance;
        public static Catalogo_Controlador Instancia
        {
            get
            {
                if (instance == null)
                {
                    instance = new Catalogo_Controlador();
                }
                return instance;
            }
        }

        public DataTable Catalogo(Catalogo_Modelo modelo)
        {
            DataTable dt = new DataTable();
            string[,] parametros =
            {
                {"@accion",modelo.accion.ToString() },   //'C' para crear, 'M' para modificar, 'T' para obtener todos, 'O' para obtener uno
                {"@id_contratos",modelo.id_contrato.ToString() },
                {"@id_tipo_cliente",modelo.id_tipo_cliente.ToString() },
                {"@cliente",modelo.id_cliente.ToString() },
                {"@contrato",modelo.id_contrato.ToString() },
                {"@nombre_cliente",modelo.nombre_cliente.ToString() },
                {"@id_fuente",modelo.id_fuente.ToString() }
            };
            try
            {
                dt = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_Catalogos.sp_ctr_crear_obtener_modificar_contratos, parametros);
                return dt;
            }
            catch (Exception e) { throw e; }
            finally { dt = new DataTable(); }

        }

    }
}
