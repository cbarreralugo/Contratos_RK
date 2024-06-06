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
    public class PlantillaEmail_Datos
    {
        public PlantillaEmail_Modelo PlantillaEmail( PlantillaEmail_Modelo modelo )
        {
            DataTable dataTable = new DataTable();
            try
            { 
                modelo.id_sistema = SesionUsuario_Modelo.id_sistema;
                dataTable = PlantillaEmail_Controlador.Instancia.PlantillaEmail(modelo);
                if (dataTable.Rows.Count > 0)
                {
                    modelo.Para = dataTable.Rows[0]["para"].ToString();
                    modelo.Copia = dataTable.Rows[0]["copia"].ToString();
                    modelo.Asunto = dataTable.Rows[0]["asunto"].ToString();
                    modelo.body = dataTable.Rows[0]["mensaje"].ToString(); 
                } 
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
                return new PlantillaEmail_Modelo();
            }
            finally
            {
                dataTable.Dispose(); // Liberar los recursos utilizados por el DataTable
            }
            return modelo;
        }

    }
}
