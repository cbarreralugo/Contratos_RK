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

        public DataTable ObtenerConfiguraciones(Configuraciones_Modelo modelo)
        {
            DataTable dt = new DataTable();
            string[,] parametros =
            {
                {"@accion",modelo.accion.ToString() },
                {"@id_sistema",modelo.id_sistema==null?"":modelo.id_sistema },
                {"@Plantilla_Draf",modelo.Plantilla_Draft==null?"":modelo.Plantilla_Draft},//ruta_plantilla
                {"@Draft_Creado",modelo.Draft_Creado == null ? "" : modelo.Draft_Creado},//ruta creado
                {"@Email_To",modelo.Email_To == null ? "" : modelo.Email_To},
                {"@Password_To",modelo.Password_To == null ? "" : modelo.Password_To },
                {"@image_status",modelo.image_status == null ? "" : modelo.image_status }
            };
            try
            {
                dt = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_Configuraciones.sp_ctr_obtener_modificar_configuraciones_sistema, parametros);

                return dt;
            }
            catch (Exception e) { throw e; }
            finally { dt = new DataTable(); }

        }
        public DataTable ModificarConfiguraciones(Configuraciones_Modelo modelo)
        {
            DataTable dt = new DataTable();
            string[,] parametros =
            {
                {"@accion", modelo.accion ?? "U"},  // 'U' para actualización
                {"@id_sistema", SesionUsuario_Modelo.id_sistema},
                {"@Plantilla_Draf", modelo.Plantilla_Draft}, // ruta_plantilla
                {"@Draft_Creado", modelo.Draft_Creado ?? ""}, // ruta creado
                {"@Email_To", modelo.Email_To ?? ""},
                {"@Password_To", modelo.Password_To ?? ""},
                {"@image_status", modelo.image_status ?? ""}
            };
            try
            {
                dt = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_Configuraciones.sp_ctr_obtener_modificar_configuraciones_sistema, parametros);
                return dt;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                dt = new DataTable(); // Reset dt for clean-up
            }
        }
    }
}
