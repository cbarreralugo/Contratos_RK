using RK_Datos.Datos;
using RK_Negocio.Controlador;
using RK_Negocio.Modelo;
using System;
using System.Collections.ObjectModel;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using Microsoft.Win32;

namespace Contratos_RK.Vista.Pages.Contratos_SAMOA
{
    public partial class Configuraciones_SAMOA : Page
    {
        private string templatesDirectory = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Templates");
        private string destinationDirectory = @"C:/Temp_File/Contratos/Plantilla/";
        public ObservableCollection<TemplateFile> TemplateFiles { get; set; }

        public Configuraciones_SAMOA()
        {
            InitializeComponent();
            TemplateFiles = new ObservableCollection<TemplateFile>();
            TemplatesDataGrid.ItemsSource = TemplateFiles;
            LoadExistingFiles();
            CargarDatos();
        }

        private void CargarDatos()
        {
            dg_Usuarios.Items.Clear();
            dg_Usuarios.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerUsuarios().DefaultView;
            dg_Configuraciones.Items.Clear();
            dg_Configuraciones.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerConfiguracion().DefaultView;
            PlantillaEmail_Datos datos = new PlantillaEmail_Datos();
            PlantillaEmail_Modelo modelo = new PlantillaEmail_Modelo
            {
                accion = "O"
            };
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
            finally
            {
                Utilidades.SesionTemporal.obtenerConfiguración();
            }
        }

        private void dg_Email_CellEditEnding(object sender, DataGridCellEditEndingEventArgs e)
        {
            // Implement this method if needed
        }

        private void btn_Agregar_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(txt_NombreUsuario.Text) && !string.IsNullOrEmpty(txt_Email.Text))
            {
                Usuario_Modelo modelo = new Usuario_Modelo
                {
                    email = txt_Email.Text,
                    nombre = txt_NombreUsuario.Text
                };
                Usuario_Controlador.Instancia.AgregarUsuario(modelo);
                dg_Usuarios.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerUsuarios().DefaultView;
                txt_Email.Text = "";
                txt_NombreUsuario.Text = "";
            }
            else
            {
                MessageBox.Show("Por favor, ingrese el nombre de usuario y el email.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void btn_Eliminar_Click(object sender, RoutedEventArgs e)
        {
            dg_Usuarios.ItemsSource = Contratos_RK_Controlador.Instancia.ObtenerUsuarios().DefaultView;
        }

        private void btn_Guardar_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(txt_para.Text) && !string.IsNullOrEmpty(txt_asunto.Text))
            {
                PlantillaEmail_Datos datos = new PlantillaEmail_Datos();
                PlantillaEmail_Modelo modelo = new PlantillaEmail_Modelo
                {
                    Para = txt_para.Text,
                    Copia = txt_cc.Text,
                    Asunto = txt_asunto.Text,
                    body = txt_body.Text,
                    accion = "U"
                };
                datos.PlantillaEmail(modelo);
                Utilidades.SesionTemporal.obtenerConfiguración();
            }
            else
            {
                MessageBox.Show("Por favor, complete todos los campos requeridos.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void BrowseButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog
            {
                Filter = "Excel Files|*.xls;*.xlsx|PDF Files|*.pdf"
            };
            if (openFileDialog.ShowDialog() == true)
            {
                FileListBox.Items.Add(openFileDialog.FileName);
            }
        }

        private void UploadButton_Click(object sender, RoutedEventArgs e)
        {
            foreach (string filePath in FileListBox.Items)
            {
                string fileName = Path.GetFileName(filePath);
                string destinationPath = Path.Combine(templatesDirectory, fileName);
                File.Copy(filePath, destinationPath, true);
            }
            MessageBox.Show("Archivos subidos exitosamente.", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
            LoadExistingFiles();
        }

        private void LoadExistingFiles()
        {
            if (!Directory.Exists(templatesDirectory))
            {
                Directory.CreateDirectory(templatesDirectory);
            }

            TemplateFiles.Clear();
            var files = Directory.GetFiles(templatesDirectory);
            foreach (var file in files)
            {
                TemplateFiles.Add(new TemplateFile { FileName = Path.GetFileName(file), FilePath = file });
            }
        }

        private void OpenButton_Click(object sender, RoutedEventArgs e)
        {
            if (TemplatesDataGrid.SelectedItem is TemplateFile selectedFile)
            {
                Process.Start(new ProcessStartInfo(selectedFile.FilePath) { UseShellExecute = true });
            }
            else
            {
                MessageBox.Show("Por favor, seleccione un archivo para abrir.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            if (TemplatesDataGrid.SelectedItem is TemplateFile selectedFile)
            {
                if (MessageBox.Show("¿Está seguro de que desea eliminar este archivo?", "Confirmar eliminación", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
                {
                    File.Delete(selectedFile.FilePath);
                    LoadExistingFiles();
                    MessageBox.Show("Archivo eliminado exitosamente.", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            else
            {
                MessageBox.Show("Por favor, seleccione un archivo para eliminar.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void UpdateButton_Click(object sender, RoutedEventArgs e)
        {
            if (TemplatesDataGrid.SelectedItem is TemplateFile selectedFile)
            {
                OpenFileDialog openFileDialog = new OpenFileDialog
                {
                    Filter = "Excel Files|*.xls;*.xlsx|PDF Files|*.pdf"
                };
                if (openFileDialog.ShowDialog() == true)
                {
                    string filePath = openFileDialog.FileName;
                    string fileName = Path.GetFileName(filePath);
                    string destinationPath = Path.Combine(templatesDirectory, fileName);
                    File.Copy(filePath, destinationPath, true);
                    LoadExistingFiles();
                    MessageBox.Show("Archivo actualizado exitosamente.", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            else
            {
                MessageBox.Show("Por favor, seleccione un archivo para actualizar.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }

    public class TemplateFile
    {
        public string FileName { get; set; }
        public string FilePath { get; set; }
    }
}
