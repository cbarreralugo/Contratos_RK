using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls.Primitives;
using System.Windows.Controls;
using System.Windows.Media;
using RK_Negocio.Utilidades;
using RK_Negocio.Modelo;

namespace Contratos_RK.Utilidades
{
    public class funciones
    {

        private static funciones instance;
        public static funciones I
        {
            get
            {
                if (instance == null)
                {
                    instance = new funciones();
                }
                return instance;
            }
        }

        // Método para obtener los valores de la segunda columna y almacenarlos en un modelo
        public Configuraciones_Modelo ObtenerValoresSegundaColumnaEnModelo(DataGrid grid)
        {
            Configuraciones_Modelo modelo = new Configuraciones_Modelo();
            int filaIndex = 0;

            foreach (var item in grid.Items)
            {
                // Obtiene la fila actual como un DataGridRow
                DataGridRow row = (DataGridRow)grid.ItemContainerGenerator.ContainerFromItem(item);

                if (row != null)
                {
                    // Obtiene la segunda columna (índice 1)
                    DataGridCell cell = GetCell(grid, row, 1);

                    if (cell != null)
                    {
                        // Verifica si la celda está en modo de edición
                        if (cell.IsEditing)
                        {
                            // Si la celda está en modo de edición, el contenido será un TextBox
                            TextBox editingElement = cell.Content as TextBox;
                            if (editingElement != null)
                            {
                                string cellValue = editingElement.Text;
                                modelo.Valores.Add(filaIndex, cellValue);
                            }
                        }
                        else
                        {
                            // Si la celda no está en modo de edición, el contenido será un TextBlock
                            TextBlock cellContent = cell.Content as TextBlock;
                            if (cellContent != null)
                            {
                                string cellValue = cellContent.Text;
                                modelo.Valores.Add(filaIndex, cellValue);
                            }
                        }
                    }
                }
                filaIndex++;
            }

            return modelo;
        }

        // Método para obtener una celda específica del DataGrid
        public DataGridCell GetCell(DataGrid grid, DataGridRow row, int columnIndex)
        {
            if (row != null)
            {
                DataGridCellsPresenter presenter = GetVisualChild<DataGridCellsPresenter>(row);
                if (presenter == null)
                {
                    grid.ScrollIntoView(row, grid.Columns[columnIndex]);
                    presenter = GetVisualChild<DataGridCellsPresenter>(row);
                }
                DataGridCell cell = (DataGridCell)presenter.ItemContainerGenerator.ContainerFromIndex(columnIndex);
                return cell;
            }
            return null;
        }

        // Método genérico para obtener un elemento visual secundario
        public static T GetVisualChild<T>(Visual parent) where T : Visual
        {
            T child = default(T);
            int numVisuals = VisualTreeHelper.GetChildrenCount(parent);
            for (int i = 0; i < numVisuals; i++)
            {
                Visual v = (Visual)VisualTreeHelper.GetChild(parent, i);
                child = v as T;
                if (child == null)
                {
                    child = GetVisualChild<T>(v);
                }
                if (child != null)
                {
                    break;
                }
            }
            return child;
        }

    }
}
