using RK_Negocio.Controlador;
using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace RK_Datos.Datos
{
    public class Configuraciones_Datos
    {
        public Configuraciones_Modelo Obtener_Configuracion(Configuraciones_Modelo conf_)
        {
            DataTable dataTable = new DataTable();
            try
            {
                conf_.accion = "G";
                dataTable = Configuraciones_Controlador.Instancia.ObtenerConfiguraciones(conf_);
                if (dataTable.Rows.Count > 0)
                {
                    foreach (DataRow row in dataTable.Rows)
                    {
                        string configuracion = row["configuracion"].ToString();
                        string valor = row["varlo"].ToString();

                        try
                        {


                            switch (configuracion)
                            {
                                case "Plantilla_Draft":
                                    conf_.Plantilla_Draft = Configuracion_Modelo.Plantilla_Draft = valor;
                                    break;
                                case "Draft_Creado":
                                    conf_.Draft_Creado = Configuracion_Modelo.Draft_Creado = Configuracion_Modelo.Draft_Creado = valor;
                                    break;
                                case "Email_To":
                                    conf_.Email_To = Email_Modelo.Email_To = Configuracion_Modelo.Email_To = valor;
                                    break;
                                case "Password_To":
                                    conf_.Password_To = Email_Modelo.Password_To = Configuracion_Modelo.Password_To = valor;
                                    break;
                                case "image_status":
                                    conf_.image_status = Email_Modelo.Image = Configuracion_Modelo.image_status = valor;
                                    break;
                                case "SesionTemporal":
                                    conf_.SesionTemporal = Configuracion_Modelo.SesionTemporal = Configuracion_Modelo.SesionTemporal = valor;
                                    break;

                            }
                        }
                        catch (FormatException ex)
                        {
                            Console.WriteLine($"Error de formato en configuración '{configuracion}': {ex.Message}");
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine($"Error al desencriptar configuración '{configuracion}': {ex.Message}");
                        }
                    }
                    return conf_;
                }
                else
                {
                    return new Configuraciones_Modelo();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
                return new Configuraciones_Modelo();
            }
            finally
            {
                dataTable.Dispose(); // Liberar los recursos utilizados por el DataTable
            }
        }

        public void Actualizar_Configuracion(Configuraciones_Modelo conf_)
        {
            DataTable dt = new DataTable();
            try
            {
                conf_.accion = "U";
                dt = Configuraciones_Controlador.Instancia.ObtenerConfiguraciones(conf_);
                foreach (DataRow row in dt.Rows)
                {
                    string configuracion = row["configuracion"].ToString();
                    string valor = row["varlo"].ToString();

                    switch (configuracion)
                    {
                        case "Plantilla_Draft":
                            conf_.Plantilla_Draft = valor;
                            break;
                        case "Draft_Creado":
                            conf_.Draft_Creado = valor;
                            break;
                        case "Email_To":
                            conf_.Email_To = Email_Modelo.Email_To = valor;
                            break;
                        case "Password_To":
                            conf_.Password_To = Email_Modelo.Password_To = valor;
                            break;
                        case "image_status":
                            conf_.image_status = Email_Modelo.Image = valor;
                            break;

                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
            }
            finally
            {
                dt.Dispose(); // Liberar los recursos utilizados por el DataTable
            }
        }
    }
}
