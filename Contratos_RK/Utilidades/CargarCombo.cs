using RK_Negocio.Controlador;
using RK_Negocio.Modelo;
using System.Collections.Generic;
using System.Data;
using System.Windows.Controls;

namespace Contratos_RK.Utilidades
{
    public class CargarCombo
    {
        public static void FillCombo(ComboBox combo, string tipo, int? filtroId = null)
        {
            int tipoInt = TipoToInt(tipo);
            DataTable _combinedData = Combo_Controlador.Instancia.Obtener_Combo(tipoInt, filtroId);
            if (_combinedData != null && _combinedData.Rows.Count > 0)
            {
                var lista = new List<CB>();

                foreach (DataRow row in _combinedData.Rows)
                {
                    CB comboItem = new CB
                    {
                        id = int.Parse(row["id"].ToString()),
                        valor = row["valor"].ToString()
                    };
                    lista.Add(comboItem);
                }

                combo.ItemsSource = lista;
                combo.DisplayMemberPath = "valor";
                combo.SelectedValuePath = "id";

                if (lista.Count > 0)
                {
                    combo.SelectedIndex = 0; // Selecciona el primer elemento automáticamente
                }
            }
        }

        private static int TipoToInt(string tipo)
        {
            switch (tipo)
            {
                case "Fuente":
                    return 1;
                case "TipoCliente":
                    return 2;
                case "TipoContrato":
                    return 3;
                case "TipoFondo":
                    return 4;
                case "TipoBo":
                    return 5;
                case "TipoGolden":
                    return 6;
                default:
                    return 0;
            }
        }
    }
}
