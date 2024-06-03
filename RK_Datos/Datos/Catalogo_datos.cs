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
    public class Catalogo_datos
    {
        public DataTable Catalogo(Catalogo_Modelo modelo)
        {
            DataTable dataTable = new DataTable();
            try
            {
                dataTable = Catalogo_Controlador.Instancia.Catalogo(modelo);
                if (dataTable.Rows.Count > 0)
                {
                    return dataTable;
                }
                else
                {
                    return new DataTable();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
            }
            finally { dataTable = new DataTable(); }
            return dataTable;
        }
        
    }
}
