using Contratos_RK.Utilidades;
using Contratos_RK.Vista;
using RK_Negocio.Modelo;
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
using System.Windows.Shapes;

namespace Contratos_RK
{
    /// <summary>
    /// Lógica de interacción para Index.xaml
    /// </summary>
    public partial class Index : Window
    {
        public Index()
        {
            InitializeComponent();
            CargarSesion();
        }

        private void CargarSesion()
        {
            txtEmail.Content = SesionUsuario_Modelo.email;
            txtTipoUsuario.Content = SesionUsuario_Modelo.id_tipoUser == 1 ? "Administrador" : "Operador";
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                if (e.ChangedButton == MouseButton.Left)
                {
                    this.DragMove();
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btnRestore_Click(object sender, RoutedEventArgs e)
        {
            if (WindowState == WindowState.Normal)
                WindowState = WindowState.Maximized;
            else
                WindowState = WindowState.Normal;
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void rdHome_Click(object sender, RoutedEventArgs e)
        {
            // PagesNavigation.Navigate(new HomePage());

            //PagesNavigation.Navigate(new System.Uri("Vista/Pages/Home.xaml", UriKind.RelativeOrAbsolute));
            PagesNavigation.Navigate(new System.Uri("Vista/Pages/Contratos_SAMOA/Inicio_SAMOA.xaml", UriKind.RelativeOrAbsolute));
        }

        private void rdSounds_Click(object sender, RoutedEventArgs e)
        {
            PagesNavigation.Navigate(new System.Uri("Vista/Pages/Contratos_SAMOA/Catalogos_SAMOA.xaml", UriKind.RelativeOrAbsolute));
        }

        private void rdNotes_Click(object sender, RoutedEventArgs e)
        {
            PagesNavigation.Navigate(new System.Uri("Vista/Pages/Contratos_SAMOA/Configuraciones_SAMOA.xaml", UriKind.RelativeOrAbsolute));
        }

        private void btnSalir_Click(object sender, RoutedEventArgs e)
        {
            Utilidades.SesionTemporal.DeleteFile();
            Login login = new Login();
            login.Show();
            this.Close();
        }
    }
}
