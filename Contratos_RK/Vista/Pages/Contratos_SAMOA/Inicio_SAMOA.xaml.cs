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

        }

        private void btn_EnviarCorreo_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btn_Buscar_Click(object sender, RoutedEventArgs e)
        {
            // Implementación del evento Click del botón Buscar
        }

        private void btn_EnviarArchivoDraf_Click(object sender, RoutedEventArgs e)
        {
            if (generarPlantilla() == true)
            {
                sendEmail();
            }
        }

        private bool generarPlantilla()
        {
            EscribirPlantillaExcel excelHelper = new EscribirPlantillaExcel();
            bool reply = false;
            try
            {
                // Crear directorio de salida si no existe
                string outputDirectoryPath = @"C:/Temp_File/Excel";
                if (!Directory.Exists(outputDirectoryPath))
                {
                    Directory.CreateDirectory(outputDirectoryPath);
                }

                // Ruta del archivo Excel plantilla
                string templatePath = @"C:/Temp_File/Contratos/Plantilla/Ejemplo_Plantilla_APP.xlsx"; // Ruta a la plantilla
                                                                                                      // Ruta del archivo Excel de salida
                string outputPath = Path.Combine(outputDirectoryPath, "Output_Plantilla_APP.xlsx"); // Ruta para guardar el archivo de salida

                // Diccionario de valores a reemplazar
                Dictionary<string, string> model = new Dictionary<string, string>
            {
                    {"txt_tipoCreacion_Modificacion","Create" },
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
                reply = true;
            }
            catch (Exception ex) { MessageBox.Show(ex.Message.ToString()); reply = false; }
            return reply;
        }

        private void sendEmail()
        {
            Email email = new Email();
            string to = "carlosalberto.barreralugo1230@hotmail.com";
            string subject = "Correo de prueba";
            string body = "<p>Este es el cuerpo del correo con <b>HTML</b>.</p>";
            bool attachFile = true; // Cambiar a false si no se quiere adjuntar archivo

            email.SendEmail(to, subject, body, attachFile);
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
