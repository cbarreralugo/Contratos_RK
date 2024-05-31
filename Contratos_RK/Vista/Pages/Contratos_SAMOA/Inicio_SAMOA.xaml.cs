using RK_Datos.Datos;
using RK_Negocio.Modelo;
using System.Windows;
using System.Windows.Controls;
using Contratos_RK.Utilidades;

namespace Contratos_RK.Vista.Pages.Contratos_SAMOA
{
    /// <summary>
    /// Lógica de interacción para Contratos_SAMOA_Inicio.xaml
    /// </summary>
    public partial class Inicio_SAMOA : Page
    {
        public Inicio_SAMOA()
        {
            InitializeComponent();
            CargarDatos();
        }

        private void CargarDatos()
        {
            CargarCombo.FillCombo(combo_TipoContrato, "TipoContrato");
        }

        private void combo_TipoContrato_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (combo_TipoContrato.SelectedItem is CB selectedTipoContrato)
            {
                switch (selectedTipoContrato.id)
                {
                    case 1: // ID para Mandatos
                    case 2: // ID para Clientes en directo
                        combo_TipoFondo.IsEnabled = false;
                        combo_TipoBOCode.IsEnabled = true;
                        combo_GoldenParent.IsEnabled = true;
                        CargarCombo.FillCombo(combo_TipoBOCode, "TipoBo", selectedTipoContrato.id);
                        CargarCombo.FillCombo(combo_GoldenParent, "TipoGolden", selectedTipoContrato.id);
                        break;
                    case 3: // ID para Fondos
                        combo_TipoFondo.IsEnabled = true;
                        combo_TipoBOCode.IsEnabled = false;
                        combo_GoldenParent.IsEnabled = true;
                        CargarCombo.FillCombo(combo_TipoFondo, "TipoFondo", selectedTipoContrato.id);
                        CargarCombo.FillCombo(combo_GoldenParent, "TipoGolden", selectedTipoContrato.id);
                        break;
                    default:
                        break;
                }
            }
        }

        private void combo_TipoFondo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (combo_TipoFondo.SelectedItem is CB selectedTipoFondo)
            {
                CargarCombo.FillCombo(combo_GoldenParent, "TipoGolden", selectedTipoFondo.id);
            }
        }

        private void combo_TipoBOCode_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (combo_TipoBOCode.SelectedItem is CB selectedTipoBO)
            {
                CargarCombo.FillCombo(combo_GoldenParent, "TipoGolden", selectedTipoBO.id);
            }
        }

        private void combo_GoldenParent_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            // Manejar el evento si es necesario
        }

        private void btn_limpiar_Click(object sender, RoutedEventArgs e)
        {
            // Manejar el evento si es necesario
        }

        private void btn_Guardar_Click(object sender, RoutedEventArgs e)
        {
            // Manejar el evento si es necesario
        }

        private void btn_EnviarCorreo_Click(object sender, RoutedEventArgs e)
        {
            // Manejar el evento si es necesario
        }

        private void btn_Buscar_Click(object sender, RoutedEventArgs e)
        {
            // Manejar el evento si es necesario
        }

        private void btn_EnviarArchivoDraf_Click(object sender, RoutedEventArgs e)
        {
            // Manejar el evento si es necesario
        }
    }
}
