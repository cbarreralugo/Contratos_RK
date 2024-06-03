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
            // Implementación del evento Click del botón Limpiar
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

                var contrato = new Contratos_RK_Modelo
                {
                    BoCode = combo_TipoBOCode.Text,
                    Contrato = txt_numContrato.Text,
                    Denominacion = txt_Denominacion.Text,
                    Moneda = "MXN", // Asumiendo que siempre es MXN, puedes ajustar esto según sea necesario
                    NumeroContrato = txt_numContrato.Text,
                    DenominacionContrato = txt_Denominacion.Text,
                    FechaContrato = DateTime.Now.ToString("ddMMyyyy"), // Fecha actual
                    TipoPort = string.Join("|", list_tipoPortGroup.SelectedItems.Cast<CB>().Select(i => i.valor)),
                    TipoCustodio = list_custodio.SelectedItem.ToString(),
                    TipoFondo = combo_TipoFondo.Text,
                    TipoBoCode = combo_TipoBOCode.Text,
                    ContratoExterno = txt_nombreContratoExternoFondos.Text,
                    TipoContrato = combo_TipoContrato.Text,
                    TipoGoldenParent = combo_GoldenParent.Text,
                    ExternalAddress = txt_nombreContratoExterno.Text,
                };

                Contratos_RK_Controlador.Instancia.GuardarContrato(contrato);

                MessageBox.Show("Registro almacenado correctamente.", "Información", MessageBoxButton.OK, MessageBoxImage.Information);
                LimpiarFormulario();
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
            //txt_FechaContrato.Clear();
            txt_nombreContratoExternoFondos.Clear();
            //txt_ExternalAddress.Clear();
            list_tipoPortGroup.SelectedIndex = -1;
            list_custodio.SelectedIndex = -1;
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

                DataRow row = result.Rows[0];

                txt_Denominacion.Text = row["Denominacion"].ToString();
                combo_TipoContrato.Text = row["TipoContrato"].ToString();
                txt_FechaContrato.Text = DateTime.ParseExact(row["FechaContrato"].ToString(), "yyyyMMdd", null).ToString("dd/MM/yyyy");
                txt_nombreContratoExterno.Text = row["ExternalAddress"].ToString();
                txt_nombreContratoExternoFondos.Text = row["ContratoExterno"].ToString();

                // Verificar subclasificaciones
                if (string.IsNullOrEmpty(row["TipoPort"].ToString()) ||
                    string.IsNullOrEmpty(row["TipoFondo"].ToString()) ||
                    string.IsNullOrEmpty(row["TipoGoldenParent"].ToString()) ||
                    string.IsNullOrEmpty(row["TipoBoCode"].ToString()) ||
                    string.IsNullOrEmpty(row["TipoCustodio"].ToString()))
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

                // Ruta del archivo Excel plantilla
                string templatePath = @"" + Configuracion_Modelo.Plantilla_Draft; // Ruta a la plantilla
                                                                                  // Ruta del archivo Excel de salida
                string outputPath = Path.Combine(outputDirectoryPath, @"Plantilla_APP.xlsx"); // Ruta para guardar el archivo de salida

                // Diccionario de valores a reemplazar
                Dictionary<string, string> model = new Dictionary<string, string>
            {
                { "txt_fecha", "Create" },
                { "txt_tipoCreacion_Modificacion", "Create" },
                { "txt_userName", "Carlos Alberto" },
                { "txt_Fecha", "02/06/2024" },
                { "txt_Portafolio", "SAMBPI2" },
                { "txt_type_custodio", "[BCOS3MX] Banco S3 Mexico S.A. Institucion de Banca Multiple|1039327|" },
                { "txt_type_cuenta", "[BCOS3MX] Banco S3 Mexico S.A. Institucion de Banca Multiple|1039327|MXN" },
                { "txt_gp", "GP|INST-AMRS|;GP|MX-AGG|;GP|MX-EQUITY|;GP|MX-ALCAP|" },
                { "txt_grupo", "PORT_GRP|MX-FI-FNDS|;PORT_GRP|SAM_B1_6|;PORT_GRP|AQS_AUM_PG|;PORT_GRP|TST-AMRS|" },
                { "txt_monto", "PORT_GRP|MX-FI-FNDS|;PORT_GRP|SAM_B1_6|;PORT_GRP|AQS_AUM_PG|;PORT_GRP|TST-AMRS|" },
                { "txt_BO_COVAF", "COVAF/MXSAMBPI2/Fondo SAM Renta Variable 29, S.A. de C.V. Fondo de Inversion de Renta Variable/MXN/SAMBPI2/Fondo SAM Renta Variable 29, S.A. de C.V. Fondo de Inversion de Renta Variable/SAMBPI2" },
                { "txt_BO_PFOLIOS", "PFOLIOS/MXSAMBPI2/Fondo SAM Renta Variable 29, S.A. de C.V. Fondo de Inversion de Renta Variable/MXN/SAMBPI2/Fondo SAM Renta Variable 29, S.A. de C.V. Fondo de Inversion de Renta Variable/SAMBPI2" }
            };

                excelHelper.FillExcelTemplate(templatePath, outputPath, model);

                // Actualizar el cuerpo del modelo de email
                Email_Modelo.Body = model;

                // Enviar el correo
                sendEmail(outputPath);
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

            Email_Modelo.Asunto = "Correo de prueba";
            string body = "<p>Este es el cuerpo del correo con <b>HTML</b>.</p>";
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

                if (combo_TipoContrato.SelectedItem is CB selectedTipoContrato)
                {
                    // Cargar listas PortGroup y Custodio

                    CargarLista.CargarListaPortGroupCustodio(list_tipoPortGroup, CargarLista.tipo.checkbox, selectedTipoContrato.id, selectedTipoBo.id);
                    CargarLista.CargarListaPortGroupCustodio(list_custodio, CargarLista.tipo.radiobuton, selectedTipoContrato.id, selectedTipoBo.id);
                }
            }
        }

        private void combo_GoldenParent_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            // Manejar el evento si es necesario
        }
    }
}
