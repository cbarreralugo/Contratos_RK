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

        private void LimpiarCombo(ComboBox combo)
        {
            combo.ItemsSource = null;
            combo.IsEnabled = false;
        }

        private void HabilitarYRecargarCombo(ComboBox combo, string tipo, int filtroId)
        {
            combo.IsEnabled = true;
            CargarCombo.FillCombo(combo, tipo, filtroId);
        }

        private void btn_limpiar_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btn_Guardar_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btn_EnviarCorreo_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btn_Buscar_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btn_EnviarArchivoDraf_Click(object sender, RoutedEventArgs e)
        {

        }

        private void combo_TipoContrato_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (combo_TipoContrato.SelectedItem is CB selectedTipoContrato)
            {
                LimpiarCombo(combo_TipoFondo);
                LimpiarCombo(combo_TipoBOCode);
                LimpiarCombo(combo_GoldenParent);

                switch (selectedTipoContrato.id)
                {
                    case 1: // ID para Mandatos
                    case 2: // ID para Clientes en directo
                        HabilitarYRecargarCombo(combo_TipoBOCode, "TipoBo", selectedTipoContrato.id);
                        HabilitarYRecargarCombo(combo_GoldenParent, "TipoGolden", selectedTipoContrato.id);
                        break;
                    case 3: // ID para Fondos
                        HabilitarYRecargarCombo(combo_TipoFondo, "TipoFondo", selectedTipoContrato.id);
                        combo_TipoBOCode.IsEnabled = false;
                        HabilitarYRecargarCombo(combo_GoldenParent, "TipoGolden", selectedTipoContrato.id);
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
                HabilitarYRecargarCombo(combo_GoldenParent, "TipoGolden", selectedTipoFondo.id);
            }
        }

        private void combo_TipoBOCode_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            LimpiarCombo(combo_GoldenParent);
            if (combo_TipoBOCode.SelectedItem is CB selectedTipoBo)
            {
                HabilitarYRecargarCombo(combo_GoldenParent, "TipoGolden", selectedTipoBo.id);
            }
        }

        private void combo_GoldenParent_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            // Manejar el evento si es necesario
        }
    }
}
