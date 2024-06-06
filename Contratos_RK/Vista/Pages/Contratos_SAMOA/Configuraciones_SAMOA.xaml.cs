using RK_Datos.Datos;
using RK_Negocio.Controlador;
using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
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
            PlantillaEmail_Datos datos = new PlantillaEmail_Datos();
            PlantillaEmail_Modelo modelo = new PlantillaEmail_Modelo();
            modelo.accion = "O";
            modelo = datos.PlantillaEmail(modelo);
            txt_origen.Text = Configuracion_Modelo.Email_To;
            txt_para.Text = modelo.Para;
            txt_cc.Text = modelo.Copia;
            txt_asunto.Text = modelo.Asunto;
            txt_body.Text = modelo.body;
        }
         
        private void dg_Configuraciones_CellEditEnding(object sender, DataGridCellEditEndingEventArgs e)
        {
            Configuraciones_Modelo modelo = Utilidades.funciones.I.ObtenerValoresSegundaColumnaEnModelo(dg_Configuraciones);

            // Para verificar el contenido del modelo
            foreach (var item in modelo.Valores)
            { 
                switch (item.Key)
                {
                    case 0:
                        modelo.Plantilla_Draft = item.Value;
                        break;
                    case 1:
                        modelo.Draft_Creado = item.Value;
                        break;
                    case 2:
                        modelo.Email_To = item.Value;
                        break;
                    case 3:
                        modelo.Password_To = item.Value;
                        break;
                    case 4:
                        modelo.image_status = item.Value;
                        break;
                    case 5:
                        modelo.SesionTemporal = item.Value;
                        break; 
                    default: 
                        break;
                }
            }
            ActualizarConfiguracionEnBaseDeDatos(modelo);
        }

        private void ActualizarConfiguracionEnBaseDeDatos(Configuraciones_Modelo configuracion)
        {
            try
            { 
                Configuraciones_Controlador.Instancia.ModificarConfiguraciones(configuracion);
                MessageBox.Show("Configuración actualizada correctamente.", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al actualizar la configuración: " + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void dg_Email_CellEditEnding(object sender, DataGridCellEditEndingEventArgs e)
        {

        }

        private void btn_Agregar_Click(object sender, RoutedEventArgs e)
        {
            Usuario_Modelo modelo = new Usuario_Modelo();
            if (txt_NombreUsuario.Text != "")
            {
                if (txt_Email.Text != "")
                {
                    modelo.email = txt_Email.Text;
                    modelo.nombre = txt_NombreUsuario.Text;
                    Usuario_Controlador.Instancia.AgregarUsuario(modelo); 
                    dg_Usuarios.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerUsuarios().DefaultView;
                    txt_Email.Text = ""; 
                    txt_NombreUsuario.Text = "";
                }
                else
                {
                    MessageBox.Show("Error", "Ingresa el email");
                }
            }
            else
            {
                MessageBox.Show("Error", "Ingresa el nombre de usuario");
            }


        }

        private void btn_Eliminar_Click(object sender, RoutedEventArgs e)
        {
            dg_Usuarios.Items.Clear();
            dg_Usuarios.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerUsuarios().DefaultView;

        }

        private void btn_Guardar_Click(object sender, RoutedEventArgs e)
        {
            if(txt_para.Text!="" && txt_asunto.Text != "")
            {
                PlantillaEmail_Datos datos = new PlantillaEmail_Datos();
                PlantillaEmail_Modelo modelo = new PlantillaEmail_Modelo();
                modelo.Para = txt_para.Text;
                modelo.Copia = txt_cc.Text;
                modelo.Asunto = txt_asunto.Text;
                modelo.body = txt_body.Text; 
                modelo.accion = "U"; 
                datos.PlantillaEmail(modelo);
            }
        }
    }
}
