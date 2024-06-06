using RK_Negocio.Modelo;
using System;
using System.Data;

namespace RK_Negocio.Controlador
{
    public class Combo_Controlador
    {
        private static Combo_Controlador _instancia;

        public static Combo_Controlador Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new Combo_Controlador();
                }
                return _instancia;
            }
        }

        public DataTable Obtener_Combo(int tipo, int? condicion = null)
        {
            DataTable dt = new DataTable();
            string[,] parametro =
            {
                {"@tipo", tipo.ToString()},
                {"@condicion", condicion.HasValue ? condicion.Value.ToString() : ""}
            };

            try
            {
                dt = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_Combo.sp_ctr_combo, parametro);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dt;
        }
    }
}
