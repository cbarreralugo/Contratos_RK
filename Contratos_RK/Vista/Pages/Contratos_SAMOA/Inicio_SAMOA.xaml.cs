using RK_Datos.Datos;
using RK_Negocio.Modelo;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using Contratos_RK.Utilidades;
using RK_Negocio.Controlador;
using System.Data;
using System;
using System.IO;
using System.Linq;

namespace Contratos_RK.Vista.Pages.Contratos_SAMOA
{
    public partial class Inicio_SAMOA : Page
    {
        public Inicio_SAMOA()
        {
            InitializeComponent();
            CargarDatos();

        }

        private void CargarDatos()
        {
            // Cargar los datos iniciales en los ComboBoxes
            CargarCombo.FillCombo(combo_TipoContrato, "TipoContrato");
            combo_TipoContrato.SelectedIndex = 0;
            txt_FechaContrato.SelectedDate = DateTime.Today;

            // Establecer la combinación inicial basada en la selección del ComboBox de tipo de contrato
            combo_TipoContrato_SelectionChanged(combo_TipoContrato, null);
        }
        private void ListBox_Loaded(object sender, RoutedEventArgs e)
        {
            if (list_custodio.Items.Count > 0)
            {
                list_custodio.SelectedIndex = 0;
            }
        }

        private void ListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (e.RemovedItems.Count > 0)
            {
                ListBoxItem removedItem = (ListBoxItem)list_custodio.ItemContainerGenerator.ContainerFromItem(e.RemovedItems[0]);
                if (removedItem != null)
                {
                    RadioButton radioButton = (RadioButton)removedItem.Template.FindName("RadioButton", removedItem);
                    if (radioButton != null)
                    {
                        radioButton.IsChecked = false;
                    }
                }
            }

            if (e.AddedItems.Count > 0)
            {
                ListBoxItem addedItem = (ListBoxItem)list_custodio.ItemContainerGenerator.ContainerFromItem(e.AddedItems[0]);
                if (addedItem != null)
                {
                    RadioButton radioButton = (RadioButton)addedItem.Template.FindName("RadioButton", addedItem);
                    if (radioButton != null)
                    {
                        radioButton.IsChecked = true;
                    }
                }
            }
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
            combo.SelectedIndex = 0; // Seleccionar el primer elemento automáticamente
        }

        private void btn_limpiar_Click(object sender, RoutedEventArgs e)
        {
            LimpiarFormulario();
            CargarDatos();
        }

        private void btn_Guardar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                // Validaciones de los campos obligatorios
                if (string.IsNullOrWhiteSpace(combo_TipoContrato.Text))
                {
                    MessageBox.Show("Por favor, seleccione un tipo de contrato.", "Validación", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                if (string.IsNullOrWhiteSpace(txt_numContrato.Text))
                {
                    MessageBox.Show("Por favor, ingrese el número de contrato.", "Validación", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                if (string.IsNullOrWhiteSpace(txt_Denominacion.Text))
                {
                    MessageBox.Show("Por favor, ingrese la denominación del contrato.", "Validación", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                if (combo_TipoContrato.Text != "Fondos" && string.IsNullOrWhiteSpace(combo_TipoBOCode.Text))
                {
                    MessageBox.Show("Por favor, seleccione un tipo de BO Code.", "Validación", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                if (list_custodio.SelectedItem == null)
                {
                    MessageBox.Show("Por favor, seleccione un custodio.", "Validación", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                if (string.IsNullOrWhiteSpace(combo_GoldenParent.Text))
                {
                    MessageBox.Show("Por favor, seleccione un Golden Parent.", "Validación", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                // Dividir los contratos por comas y eliminar espacios en blanco
                string[] contratosArray = txt_numContrato.Text.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

                foreach (string contrato in contratosArray)
                {
                    var contratoModelo = new Contratos_RK_Modelo
                    {
                        BoCode = combo_TipoBOCode.Text,
                        Contrato = contrato.Trim(), // Usar el contrato individual
                        Denominacion = txt_Denominacion.Text,
                        Moneda = "MXN", // Asumiendo que siempre es MXN, puedes ajustar esto según sea necesario
                        NumeroContrato = Utilidades.funciones.I.FormatearCodigo(contrato.Trim()), // Usar el contrato individual
                        DenominacionContrato = txt_Denominacion.Text,
                        FechaContrato = DateTime.Now.ToString("ddMMyyyy"), // Fecha actual
                        TipoPort = string.Join(";", list_tipoPortGroup.SelectedItems.Cast<CB>().Select(i => i.valor)),
                        TipoCustodio = (list_custodio.SelectedItem as CB)?.valor, // Acceder a la propiedad valor
                        TipoFondo = combo_TipoFondo.Text,
                        TipoBoCode = combo_TipoBOCode.Text,
                        ContratoExterno = txt_nombreContratoExternoFondos.Text,
                        TipoContrato = combo_TipoContrato.Text,
                        TipoGoldenParent = combo_GoldenParent.Text,
                        ExternalAddress = txt_nombreContratoExterno.Text,
                    };

                    Contratos_RK_Controlador.Instancia.GuardarContrato(contratoModelo);
                }

                MessageBox.Show("Registros almacenados correctamente.", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al guardar el contrato: " + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void LimpiarFormulario()
        {
            combo_TipoContrato.SelectedIndex = -1;
            combo_TipoFondo.SelectedIndex = -1;
            combo_TipoBOCode.SelectedIndex = -1;
            combo_GoldenParent.SelectedIndex = -1;
            txt_numContrato.Clear();
            txt_Denominacion.Clear();
            txt_FechaContrato.Text = "";
            txt_nombreContratoExternoFondos.Clear();
            txt_nombreContratoExterno.Clear();
            list_tipoPortGroup.SelectedIndex = -1;
            list_custodio.SelectedIndex = -1;
            lb_insidencias.Content = "Insidencias: 0";
        }

        private void btn_EnviarCorreo_Click(object sender, RoutedEventArgs e)
        {
            EscribirPlantillaExcel excelHelper = new EscribirPlantillaExcel();
            try
            {
                string fileName = "Hoja de trabajo.xlsx";
                // Crear directorio de salida si no existe
                string outputDirectoryPath = @"" + Configuracion_Modelo.Draft_Creado;
                if (!Directory.Exists(outputDirectoryPath))
                {
                    Directory.CreateDirectory(outputDirectoryPath);
                }
                string outputPath = Path.Combine(outputDirectoryPath, fileName); // Ruta para guardar el archivo de salida

                // Enviar el correo
                sendEmail(outputPath);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void btn_Buscar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string numeroContrato = txt_numContrato.Text;

                if (string.IsNullOrEmpty(numeroContrato))
                {
                    MessageBox.Show("No ha insertado un número válido.", "Advertencia", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    return;
                }

                if (!numeroContrato.StartsWith("MX"))
                {
                    numeroContrato = "MX" + numeroContrato;
                }

                DataTable result = Contratos_RK_Controlador.Instancia.BuscarContrato(numeroContrato);

                if (result.Rows.Count == 0)
                {
                    MessageBox.Show("No se encontró ese número de contrato. Favor de validar.", "Advertencia", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    return;
                }
                lb_insidencias.Content = "Insidencias: " + result.Rows.Count;
                DataRow row = result.Rows[0];

                txt_Denominacion.Text = row["Denominacion"].ToString();
                combo_TipoContrato.Text = row["tipo_contrato"].ToString();
                txt_FechaContrato.Text = DateTime.ParseExact(row["fecha_contrato"].ToString(), "yyyyMMdd", null).ToString("dd/MM/yyyy");
                txt_nombreContratoExterno.Text = row["external_address"].ToString();
                txt_nombreContratoExternoFondos.Text = row["ContratoExterno"].ToString();

                // Verificar subclasificaciones
                if (string.IsNullOrEmpty(row["tipo_port"].ToString()) ||
                    string.IsNullOrEmpty(row["tipo_fondo"].ToString()) ||
                    string.IsNullOrEmpty(row["tipo_golden_parent"].ToString()) ||
                    string.IsNullOrEmpty(row["tipo_bo_code"].ToString()) ||
                    string.IsNullOrEmpty(row["tipo_custodio"].ToString()))
                {
                    MessageBox.Show("El contrato no tiene todas las subclasificaciones, favor de actualizar.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }

                MessageBox.Show("Búsqueda completada.", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al buscar el contrato: " + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void btn_EnviarArchivoDraf_Click(object sender, RoutedEventArgs e)
        {
            EscribirPlantillaExcel excelHelper = new EscribirPlantillaExcel();
            try
            {
                // Crear directorio de salida si no existe
                string outputDirectoryPath = @"" + Configuracion_Modelo.Draft_Creado;
                if (!Directory.Exists(outputDirectoryPath))
                {
                    Directory.CreateDirectory(outputDirectoryPath);
                }

                // Obtener los valores dinámicos de los componentes
                string tipoDraf = ((ComboBoxItem)Combo_tipoDraf.SelectedItem).Content.ToString();
                string action = tipoDraf == "Create" ? "CREATION new " : "MODIFICATION";
                string userName = SesionUsuario_Modelo.nombre;
                string fecha = txt_FechaContrato.SelectedDate?.ToString("dd/MM/yyyy") ?? string.Empty;
                string numContato = txt_numContrato.Text.Trim();
                string portafolio = Utilidades.funciones.I.FormatearCodigo(numContato);
                string denominacion = txt_Denominacion.Text;

                // Obtener detalles del custodio desde la base de datos
                int idTipoCustodio = ((CB)list_custodio.SelectedItem)?.id ?? 0;
                string custodioDetalle = Contratos_RK_Controlador.Instancia.ObtenerDetalleCustodio(idTipoCustodio);

                // Obtener detalles del BO desde la base de datos
                int idTipoBo = ((CB)combo_TipoBOCode.SelectedItem)?.id ?? 0;
                string boDetalle = Contratos_RK_Controlador.Instancia.ObtenerDetalleBo(idTipoBo);

                //string portGroupSeleccionado = string.Join(";", list_tipoPortGroup.SelectedItems.Cast<CB>().Select(i => i.valor));
                var portGroupSeleccionado = string.Join(";", list_tipoPortGroup.SelectedItems.Cast<CB>().Select(item => item.valor).ToArray());
                //string gpSeleccionado = string.Join(";", list_tipoPortGroup.SelectedItems.Cast<CB>().Select(i => i.valor));
                string gpSeleccionado = string.Join(";", list_custodio.SelectedItems.Cast<CB>().Select(item => item.valor).ToArray());
                string externalAddress = txt_nombreContratoExterno.Text;
                string cash_amount = "0";

                // Ruta del archivo Excel plantilla
                string templatePath = @"" + Configuracion_Modelo.Plantilla_Draft; // Ruta a la plantilla
                                                                                  // Ruta del archivo Excel de salida
                string outputPath = Path.Combine(outputDirectoryPath, @"Draft_Portafolio_Templete_" + portafolio + @".xlsx"); // Ruta para guardar el archivo de salida


                // Diccionario de valores a reemplazar
                Dictionary<string, string> model = new Dictionary<string, string>
                        {
                            { "txt_Action", "Portafolio "+ action },
                            { "txt_Request", tipoDraf + " new portfolio in Aladdin" },
                            { "txt_userName", userName },
                            { "txt_Fecha", fecha },
                            { "txt_Portafolio", portafolio },
                            { "txt_Denominacion",denominacion },
                            { "txt_type_custodio", custodioDetalle },
                            { "txt_NumContrato", numContato },
                            { "txt_typeCahs", Utilidades.funciones.I.FormatearCodigoCahs(numContato)},
                            { "txt_gp", gpSeleccionado },
                            { "txt_grupo", portGroupSeleccionado },
                            { "txt_monto", cash_amount },
                            { "txt_BO_COVAF", boDetalle }
                        };

                excelHelper.FillExcelTemplate(templatePath, outputPath, model);

                // Actualizar el cuerpo del modelo de email
                //Email_Modelo.Body = model;

                // Enviar el correo
                sendEmail(outputPath);
                btn_Guardar_Click(null,null);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
      

        private void sendEmail(string outputPath)
        {
            Email email = new Email();
            // Limpiar las listas para evitar duplicados
            Email_Modelo.Para.Clear();
            Email_Modelo.Copia.Clear();
            Email_Modelo.Body.Clear();

            Email_Modelo.Asunto = "Archivo generado";
            string body = "<p>Terminado<b>HTML</b>.</p>";
            bool attachFile = true; // Cambiar a false si no se quiere adjuntar archivo
            Email_Modelo.Para.Add(SesionUsuario_Modelo.email);
            email.SendEmail(Email_Modelo.Asunto, body, attachFile, outputPath: outputPath);
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
                    case 1: // Mandatos
                        HabilitarYRecargarCombo(combo_TipoBOCode, "TipoBo", selectedTipoContrato.id);
                        HabilitarYRecargarCombo(combo_GoldenParent, "TipoGolden", selectedTipoContrato.id);
                        break;
                    case 2: // Clientes en directo
                        HabilitarYRecargarCombo(combo_TipoBOCode, "TipoBo", selectedTipoContrato.id);
                        HabilitarYRecargarCombo(combo_GoldenParent, "TipoGolden", selectedTipoContrato.id);
                        break;
                    case 3: // Fondos
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
                LimpiarCombo(combo_GoldenParent);
                HabilitarYRecargarCombo(combo_GoldenParent, "TipoGolden", selectedTipoFondo.id);
            }
        }

        private void combo_TipoBOCode_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (combo_TipoBOCode.SelectedItem is CB selectedTipoBo)
            {
                LimpiarCombo(combo_GoldenParent);
                HabilitarYRecargarCombo(combo_GoldenParent, "TipoGolden", selectedTipoBo.id);

                if (combo_TipoContrato.SelectedItem is CB selectedTipoContrato)
                {
                    // Cargar listas PortGroup y Custodio
                    CargarLista.CargarListaPortGroupCustodio(list_tipoPortGroup, CargarLista.Tipo.Checkbox, selectedTipoContrato.id, selectedTipoBo.id, 0);
                    CargarLista.CargarListaPortGroupCustodio(list_custodio, CargarLista.Tipo.Radiobutton, selectedTipoContrato.id, selectedTipoBo.id, 0);
                    list_custodio.SelectedIndex = 0;
                }
            }
        }


        private void combo_GoldenParent_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void list_custodio_Loaded(object sender, RoutedEventArgs e)
        {
            if (list_custodio.Items.Count > 0)
            {
                list_custodio.SelectedIndex = 0;
            }
        }

        private void txt_numContrato_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (combo_TipoContrato.SelectedItem is CB selectedTipoContrato)
            {
                if (selectedTipoContrato.id != 3)
                {
                    txt_nombreContratoExterno.Text = this.txt_numContrato.Text;
                }
                else
                {
                    txt_nombreContratoExternoFondos.Text = this.txt_numContrato.Text;
                }
            }
        }
    }
}