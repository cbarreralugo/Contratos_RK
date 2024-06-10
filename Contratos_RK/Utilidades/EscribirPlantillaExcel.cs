using OfficeOpenXml;
using System.Collections.Generic;
using System.IO;
using System;
using System.Windows;

namespace Contratos_RK.Utilidades
{
    public class EscribirPlantillaExcel
    {
        public void FillExcelTemplate(string templatePath, string outputPath, Dictionary<string, string> model)
        {
            try
            {
                // Configurar la licencia de EPPlus
                ExcelPackage.LicenseContext = OfficeOpenXml.LicenseContext.NonCommercial;

                if (!File.Exists(templatePath))
                {
                    throw new FileNotFoundException($"La plantilla no se encontró en la ruta {templatePath}");
                }

                // Cargar el archivo de la plantilla
                FileInfo plantillaFile = new FileInfo(templatePath);

                using (ExcelPackage package = new ExcelPackage(plantillaFile))
                {
                    // Obtener la hoja de trabajo de la plantilla
                    ExcelWorksheet templateSheet = package.Workbook.Worksheets[0];

                    if (model.TryGetValue("txt_NumContrato", out string contratos))
                    {
                        string[] contratosArray = contratos.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

                        for (int i = 0; i < contratosArray.Length; i++)
                        {
                            string contrato = contratosArray[i].Trim();

                            // Duplicar la hoja de la plantilla y renombrarla
                            string sheetName = $"Contrato_{contrato}";
                            if (package.Workbook.Worksheets[sheetName] != null)
                            {
                                package.Workbook.Worksheets.Delete(sheetName);
                            }

                            ExcelWorksheet newSheet = package.Workbook.Worksheets.Copy(templateSheet.Name, sheetName);

                            // Reemplazar los valores en la nueva hoja
                            foreach (var entry in model)
                            {
                                string valueToReplace = entry.Key == "txt_NumContrato" ? contrato : entry.Value;
                                for (int row = 1; row <= newSheet.Dimension.End.Row; row++)
                                {
                                    for (int col = 1; col <= newSheet.Dimension.End.Column; col++)
                                    {
                                        var cell = newSheet.Cells[row, col];
                                        if (cell.Value != null)
                                        {
                                            string cellText = cell.Value.ToString();
                                            if (cellText.Contains(entry.Key))
                                            {
                                                cell.Value = cellText.Replace( entry.Key, valueToReplace);
                                                // Mensaje de depuración para confirmar reemplazo
                                                //Console.WriteLine($"Reemplazado '{entry.Key}' con '{valueToReplace}' en la celda {cell.Address}");
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        // Eliminar la primera hoja si es necesario
                        package.Workbook.Worksheets.Delete(templateSheet);
                    }

                    // Guardar el archivo
                    FileInfo outputFile = new FileInfo(outputPath);
                    package.SaveAs(outputFile);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al llenar la plantilla de excel.\n" + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
