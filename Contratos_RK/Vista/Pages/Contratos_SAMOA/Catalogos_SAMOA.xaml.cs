using Contratos_RK.Utilidades;
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
    /// Lógica de interacción para CatalogosRK.xaml
    /// </summary>
    public partial class Catalogos_SAMOA : Page
    {
        public Catalogos_SAMOA()
        {
            InitializeComponent();
            CargarDatos();
        }

        private void CargarDatos()
        {
            
            dg_Contratos.Items.Clear();
            dg_Contratos.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerPortafolioActivo().DefaultView;
            dg_BO.Items.Clear();
            dg_BO.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerBO().DefaultView; 
            dg_Golden.Items.Clear();
            dg_Golden.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerGOlden().DefaultView;

            dg_Port.Items.Clear();
            dg_Port.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerPuerto().DefaultView;

            dg_Custodio.Items.Clear();
            dg_Custodio.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerCustodio().DefaultView;

        }
    }
}
