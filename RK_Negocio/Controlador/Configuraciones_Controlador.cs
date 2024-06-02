using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Controlador
{
    public class Configuraciones_Controlador
    {

        private static Configuraciones_Controlador instance;
        public static Configuraciones_Controlador Instancia
        {
            get
            {
                if (instance == null)
                {
                    instance = new Configuraciones_Controlador();
                }
                return instance;
            }
        }

        public void Actualizar_Configuracion(Configuraciones_Modelo conf_)
        {
            throw new NotImplementedException();
        }

        public DataTable ObtenerConfiguraciones(Configuraciones_Modelo modelo)
        {
            DataTable dt = new DataTable();
            string[,] parametros =
            {
                {"@accion",modelo.accion.ToString() },   //'C' para crear, 'M' para modificar, 'T' para obtener todos, 'O' para obtener uno
                {"@id_sistema",modelo.id_sistema==string.Empty?"":modelo.id_sistema },
                {"@Plantilla_Draf",modelo.Plantilla_Draft==string.Empty?"":modelo.Plantilla_Draft},//ruta_plantilla
                {"@Draft_Creado",modelo.Draft_Creado == string.Empty ? "" : modelo.Draft_Creado},//ruta creado
                {"@Email_To",modelo.Email_To == string.Empty ? "" : modelo.Email_To},
                {"@Password_To",modelo.Password_To == string.Empty ? "" : modelo.Password_To },
                {"@image_status",modelo.image_status == string.Empty ? "" : modelo.image_status }
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
