using RK_Negocio.Controlador;
using RK_Negocio.Modelo;
using System.Collections.Generic;
using System.Data;
using System.Windows.Controls;

namespace Contratos_RK.Utilidades
{
    public class CargarLista
    {
        public enum Tipo
        {
            Checkbox = 1,
            Radiobutton = 2
        }

        public static void CargarListaPortGroupCustodio(ListBox lista, Tipo tipo, int id_tipo_contrato, int id_tipo_bo,int tipoFondo)
        {
            DataTable _combinedData = Lista_Controlador.Instancia.Obtener_PortGroup_Custodio(id_tipo_contrato, id_tipo_bo, tipoFondo);

            if (_combinedData != null && _combinedData.Rows.Count > 0)
            {
                var lista_ = new List<CB>();

                foreach (DataRow row in _combinedData.Rows)
                {
                    CB listItem = new CB
                    {
                        id = int.Parse(row["id"].ToString()),
                        valor = row["valor"].ToString()
                    };
                    if (tipo == Tipo.Checkbox)
                    {
                        if (row["Tipo"].ToString() == "PortGroup")
                        {
                            lista_.Add(listItem);
                        }
                    }
                    else
                    {
                        if (row["Tipo"].ToString() == "Custodio")
                        {
                            lista_.Add(listItem);
                        }
                    }
                }

                lista.ItemsSource = lista_;

                if (tipo == Tipo.Checkbox)
                {
                    for (int i = 0; i < lista.Items.Count; i++)
                    {
                        lista.SelectedItems.Add(lista.Items[i]);
                    }
                }
                else
                {
                    if (lista_.Count > 0)
                    {
                        lista.SelectedIndex = 0;
                    }
                }
            }
        }
    }
}
