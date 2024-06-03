using OfficeOpenXml;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;

namespace Contratos_RK.Utilidades
{
    public class EscribirPlantillaExcel
    {
        public void FillExcelTemplate(string templatePath, string outputPath, Dictionary<string, string> model)
        {
            // Configurar la licencia de EPPlus
            ExcelPackage.LicenseContext = OfficeOpenXml.LicenseContext.NonCommercial;

            // Leer el archivo Excel
            FileInfo templateFile = new FileInfo(templatePath);
            FileInfo outputFile = new FileInfo(outputPath);

            using (ExcelPackage package = new ExcelPackage(templateFile))
            {
                ExcelWorkbook workbook = package.Workbook;
                ExcelWorksheet worksheet = workbook.Worksheets[0];

                // Reemplazar los marcadores de posición con los valores del modelo
                foreach (var cell in worksheet.Cells)
                {
                    if (cell.Value != null && cell.Value is string cellValue)
                    {
                        foreach (var item in model)
                        {
                            if (cellValue.Contains(item.Key))
                            {
                                cell.Value = cellValue.Replace(item.Key, item.Value);
                            }
                        }
                    }
                }

                // Guardar el archivo Excel actualizado
                package.SaveAs(outputFile);
            }
        }
    }
}
