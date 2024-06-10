using OfficeOpenXml;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
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

                //// Configurar la licencia de EPPlus
                ExcelPackage.LicenseContext = OfficeOpenXml.LicenseContext.NonCommercial;

                if (!File.Exists(templatePath))
                {
                    throw new FileNotFoundException($"La plantilla no se encontro en la ruta {templatePath}");
                }
                //Cargar el archivo de la plantilla
                FileInfo plantillaFile = new FileInfo(templatePath);

                using (ExcelPackage package = new ExcelPackage(plantillaFile))
                {
                    //Obtener la hoja de trabajo de la plantilla
                    ExcelWorksheet templateSheet = package.Workbook.Worksheets[0];

                    if (model.TryGetValue("txt_NumContrato", out string contratos))
                    {
                        string[] contratosArray = contratos.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

                        for (int i = 0; i < contratosArray.Length; i++)
                        {
                            string contrato = contratosArray[i].Trim();


                            //Duplicar la hoja  de la plantilla y renovarla
                            ExcelWorksheet newSheet = package.Workbook.Worksheets.Copy(templateSheet.Name, $"Contrato_{contratos}");

                            //Renovar los valores en la nueva hoja
                            foreach (var entry in model)
                            {
                                string valueToReplace = entry.Key == "txt_NumContrato" ? contrato : entry.Value;
                                foreach (var cell in newSheet.Cells["A1:Z100"])
                                {
                                    if (cell.Value != null && cell.Value.ToString().Contains("{" + entry.Key + "}"))
                                    {
                                        cell.Value = cell.Value.ToString().Replace("{" + entry.Key + "}", valueToReplace);
                                    }
                                }
                            }

                        }
                        //Eliminar la primera hoja
                        //package.Workbook.Worksheets.Delete(templateSheet);
                    }

                    //Guardar 
                    FileInfo outputFile = new FileInfo(outputPath);
                    package.SaveAs(outputFile);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al llenar la plantilla de excel.\n" + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }

            //// Configurar la licencia de EPPlus
            //ExcelPackage.LicenseContext = OfficeOpenXml.LicenseContext.NonCommercial;

            //// Leer el archivo Excel
            //FileInfo templateFile = new FileInfo(templatePath);
            //FileInfo outputFile = new FileInfo(outputPath);

            //using (ExcelPackage package = new ExcelPackage(templateFile))
            //{
            //    ExcelWorkbook workbook = package.Workbook;
            //    ExcelWorksheet worksheet = workbook.Worksheets[0];

            //    // Reemplazar los marcadores de posición con los valores del modelo
            //    foreach (var cell in worksheet.Cells)
            //    {
            //        if (cell.Value != null && cell.Value is string cellValue)
            //        {
            //            foreach (var item in model)
            //            {
            //                if (cellValue.Contains(item.Key))
            //                {
            //                    cell.Value = cellValue.Replace(item.Key, item.Value);
            //                }
            //            }
            //        }
            //    }

            //    // Guardar el archivo Excel actualizado
            //    package.SaveAs(outputFile);
            //}
        }
    }
}
