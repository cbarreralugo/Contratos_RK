using RK_Negocio.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Contratos_RK.Vista.Pages.Contratos_SAMOA
{
    /// <summary>
    /// Lógica de interacción para ConfiguracionesRK.xaml
    /// </summary>
    public partial class Configuraciones_SAMOA : Page
    {
        public Configuraciones_SAMOA()
        {
            InitializeComponent();
            CargarDatos();
        }

        private void CargarDatos()
        {
            dg_Usuarios.Items.Clear();
            dg_Usuarios.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerUsuarios().DefaultView;
            dg_Configuraciones.Items.Clear();
            dg_Configuraciones.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerConfiguracion().DefaultView;
        }
    }
}
