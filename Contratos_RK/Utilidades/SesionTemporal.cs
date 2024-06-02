using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Contratos_RK.Utilidades
{
    public class SesionTemporal
    {
        private static string folderPath;
        private static string filePath; 
        private static bool isInitialized = false;

        public static void Initialize()
        {
            try
            { 
                string ruta = Configuracion_Modelo.SesionTemporal.ToString();
                folderPath = Path.Combine("", ruta);
                filePath = Path.Combine(folderPath, "sesion.txt");
                isInitialized = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error during initialization: {ex.Message}");
                isInitialized = false;
            }
        }

        public static void CreateFile(string word1, string word2)
        {
            if (!isInitialized)
            {
                Console.WriteLine("SesionTemporal is not initialized.");
                return;
            }

            try
            {
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }

                using (StreamWriter writer = new StreamWriter(filePath))
                {
                    writer.WriteLine(($"{word1}|{word2}"));
                }

                Console.WriteLine("Archivo creado con éxito en: " + filePath);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al crear el archivo: " + ex.Message);
            }
        }

        public static string ReadFile()
        {
            if (!isInitialized)
            {
                Console.WriteLine("SesionTemporal is not initialized.");
                return null;
            }

            try
            {
                if (File.Exists(filePath))
                {
                    using (StreamReader reader = new StreamReader(filePath))
                    {
                        string content = reader.ReadToEnd();
                        return content;
                    }
                }
                else
                {
                    Console.WriteLine("El archivo no existe.");
                    return null;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al leer el archivo: " + ex.Message);
                return null;
            }
        }

        public static void DeleteFile()
        {
            if (!isInitialized)
            {
                Console.WriteLine("SesionTemporal is not initialized.");
                return;
            }

            try
            {
                if (File.Exists(filePath))
                {
                    File.Delete(filePath);
                    Console.WriteLine("Archivo eliminado con éxito.");
                }
                else
                {
                    Console.WriteLine("El archivo no existe.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al eliminar el archivo: " + ex.Message);
            }
        }

        public static (string, string) SplitContent(string content)
        {
            if (content == null)
            {
                Console.WriteLine("El contenido es nulo.");
                return (null, null);
            }

            var parts = content.Split('|');
            if (parts.Length == 2)
            {
                return (parts[0].Trim(), parts[1].Trim());
            }
            else
            {
                Console.WriteLine("El contenido no está en el formato esperado.");
                return (null, null);
            }
        }

       
        
        public static void RestartApplication()
        {
            string applicationPath = System.Reflection.Assembly.GetExecutingAssembly().Location;

            //Toast.CreateLog("Reinicio forzoso de app", "Se ha reiniciado la aplicación de manera inesperada.");
            ProcessStartInfo startInfo = new ProcessStartInfo(applicationPath)
            {
                WorkingDirectory = System.IO.Path.GetDirectoryName(applicationPath)
            };

            Process.Start(startInfo);

            Application.Current.Shutdown();
        }

    }
}
