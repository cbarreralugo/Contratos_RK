using System;
using System.IO;
using System.Windows;

namespace Contratos_RK
{
    public partial class App : Application
    {
        private string templatesDirectory = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Templates");
        private string destinationDirectory = @"C:/Temp_File/Contratos/Plantilla/";

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            CopyTemplatesToDestinationDirectory();
        }

        private void CopyTemplatesToDestinationDirectory()
        {
            if (!Directory.Exists(destinationDirectory))
            {
                Directory.CreateDirectory(destinationDirectory);
            }

            if (Directory.Exists(templatesDirectory))
            {
                foreach (var file in Directory.GetFiles(templatesDirectory))
                {
                    string fileName = Path.GetFileName(file);
                    string destinationPath = Path.Combine(destinationDirectory, fileName);
                    File.Copy(file, destinationPath, true);
                }
            }
        }
    }
}
