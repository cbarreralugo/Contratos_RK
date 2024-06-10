using RK_Negocio.Controlador;
using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Datos.Datos
{
    public class Sesion_Datos
    {
        public bool ObtenerSession(Sesion_Modelo sesion)
        {
            bool reply = false;
            DataTable dataTable = new DataTable();

            try
            {
                dataTable = Sesion_Controlador.Instancia.Obtener_Sesion(sesion);
                if (dataTable.Rows.Count > 0)
                {

                    sesion = new Sesion_Modelo()
                    {
                        id_usuario = SesionUsuario_Modelo.id_usuario = int.Parse(dataTable.Rows[0]["id_usuario"].ToString()),
                        nombre = SesionUsuario_Modelo.nombre = (dataTable.Rows[0]["nombre"].ToString()),
                        email = SesionUsuario_Modelo.email = (dataTable.Rows[0]["email"].ToString()),
                        id_sistema = SesionUsuario_Modelo.id_sistema = (dataTable.Rows[0]["id_sistema"].ToString()),
                        id_tipoUser = SesionUsuario_Modelo.id_tipoUser = int.Parse(dataTable.Rows[0]["id_tipoUser"].ToString()),
                        estatus = SesionUsuario_Modelo.estatus = (dataTable.Rows[0]["estatus"].ToString()),
                    };
                    reply = true;
                }
                else
                {
                    sesion = new Sesion_Modelo();
                    reply = false;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
                reply = false;
            }
            finally { dataTable = new DataTable(); }
            return reply;
        }
    }
}
