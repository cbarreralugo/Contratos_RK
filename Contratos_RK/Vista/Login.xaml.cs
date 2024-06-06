using Contratos_RK.Utilidades;
using RK_Datos.Datos;
using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Contratos_RK.Vista
{
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
            SesionTemporal.obtenerConfiguración();

            // Inicializar AES con la clave correcta 

            // Inicializar SesionTemporal con la clave de encriptación
            SesionTemporal.Initialize();

            var texto = Utilidades.SesionTemporal.ReadFile();
            if (texto != null)
            {
                var (part1, part2) = Utilidades.SesionTemporal.SplitContent((texto));
                if (part1 != null && part2 != null)
                {
                    txt_email.Text = part1;
                    txt_pass.Text = part2;

                    Button_Click_1(null, null);
                }
            }
        }

       

        private void txt_email_LostFocus(object sender, RoutedEventArgs e)
        {
            if (txt_email.Text.Trim() != string.Empty)
            {
                img_emailcheck.Visibility = Visibility.Visible;
                email_path.Stroke = Brushes.Green;
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            string username = txt_email.Text;
            string email = txt_pass.Text.ToString().Trim();

            try
            {

                // Login exitoso
                img_passcncel.Visibility = Visibility.Hidden;
                img_passcheck.Visibility = Visibility.Visible;
                //pass_path.Stroke = Brushes.Green;
                txt_pass.Foreground = Brushes.Black;
                Sesion_Modelo modelo = new Sesion_Modelo();
                modelo.email = email;
                modelo.nombre = username;
                Sesion_Datos session = new Sesion_Datos();
                if (session.ObtenerSession(modelo))
                {
                    if (Chek_Login.IsChecked == true)
                    {
                        SesionTemporal.Initialize();
                        Utilidades.SesionTemporal.CreateFile(username, email); 
                        //Toast.Correcto("Sesión guardada con exito");
                        //Toast.CreateLog("Sesión guardad con exito en el equipo", "Se almaceno las credenciales en el equipo de forma local, para hacer un logeo facil");
                    }

                    SesionTemporal.obtenerConfiguración();
                    //Toast.Correcto("Hola de nuevo");
                    //Toast.CreateLog("Inicio se sesión", "Se ingresa al sistema por medio de la app.");
                    Index index = new Index();
                    index.Show();
                    this.Close();


                }
                else
                {
                    // Login fallido
                    Storyboard s = (Storyboard)TryFindResource("Animate");
                    s.Begin();
                    img_passcncel.Visibility = Visibility.Visible;
                    img_passcheck.Visibility = Visibility.Hidden;
                    //pass_path.Stroke = Brushes.Red;
                    txt_pass.Foreground = Brushes.Red;
                }
            }
            catch (Exception ex)
            {
                //Toast.Sistema("Erro durante el inicio de sesión", ex);
            }
        }

        private void txt_pass_LostFocus(object sender, RoutedEventArgs e)
        {

        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnRestore_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btn_Recuperar_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
