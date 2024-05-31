using System;
using System.Collections.Generic;
using System.Data;
using RK_Negocio.Controlador;
using RK_Negocio.Modelo;

namespace RK_Datos.Datos
{
    public class Combo_Datos
    {
        public enum Tipo
        {
            Fuente = 1,
            TipoCliente = 2,
            TipoContrato = 3,
            TipoFondo = 4,
            TipoBO = 5,
            TipoGolden = 6
        }

        public static List<CB> ObtenerDatosCombo(Tipo tipo, string condicion = "")
        {
            DataTable dataTable = new DataTable();
            Combo_Modelo modeloCombo = new Combo_Modelo
            {
                tipo = (int)tipo,
                condicion = condicion
            };
            List<CB> lista = new List<CB>();
            try
            {
               // dataTable = Combo_Controlador.Instancia.Obtener_Combo();
                if (dataTable.Rows.Count > 0)
                {
                    foreach (DataRow row in dataTable.Rows)
                    {
                        CB modelo = new CB
                        {
                            id = int.Parse(row["id"].ToString()),
                            valor = row["valor"].ToString()
                        };
                        lista.Add(modelo);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return lista;
        }
    }
}