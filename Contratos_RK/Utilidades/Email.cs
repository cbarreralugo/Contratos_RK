using Contratos_RK.Utilidades.data.plantillaEmail;
using Microsoft.Office.Interop.Excel;
using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.IO; // Asegúrate de agregar esta línea
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Windows.Forms;

namespace Contratos_RK.Utilidades
{
    public class Email
    {
        
        public void SendEmail(string subject, string body, bool attachFile = false, string outputPath = "")
        {
            try
            {
                // Verificación de dirección de correo y asunto
                if (Email_Modelo.Para == null || Email_Modelo.Para.Count == 0 || string.IsNullOrEmpty(subject) || string.IsNullOrEmpty(body))
                {
                    MessageBox.Show("Los campos 'Para', 'Asunto' y 'Cuerpo' no pueden estar vacíos.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                // Validar dirección de correo electrónico
                foreach (var to in Email_Modelo.Para)
                {
                    if (!IsValidEmail(to))
                    {
                        MessageBox.Show($"Dirección de correo electrónico no válida: {to}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                }

                // Configuración del cliente SMTP
                SmtpClient smtpClient = new SmtpClient("smtp.office365.com")
                {
                    Port = 587,
                    Credentials = new NetworkCredential(Email_Modelo.Email_To, Email_Modelo.Password_To),
                    EnableSsl = true,
                };

                // Creación del mensaje de correo
                MailMessage mail = new MailMessage
                {
                    From = new MailAddress(Email_Modelo.Email_To),
                    Subject = subject,
                    IsBodyHtml = true
                };

                foreach (var to in Email_Modelo.Para)
                {
                    mail.To.Add(to);
                }

                foreach (var cc in Email_Modelo.Copia)
                {
                    mail.CC.Add(cc);
                }

                // Crear el cuerpo del correo usando la plantilla HTML
                string htmlBody = GetHtmlBody(body, Email_Modelo.Body);

                // Crear la vista alternativa HTML
                AlternateView avHtml = AlternateView.CreateAlternateViewFromString(htmlBody, null, MediaTypeNames.Text.Html);

                // Adjuntar la imagen
                string nameImage = Email_Modelo.Image == "true" ? "image-1.png" : "image-2.png";
                string imagePath = AppDomain.CurrentDomain.BaseDirectory + "data/" + nameImage;
                LinkedResource inline = new LinkedResource(imagePath, MediaTypeNames.Image.Jpeg)
                {
                    ContentId = "InlineImage"
                };
                avHtml.LinkedResources.Add(inline);

                // Añadir la vista alternativa al correo
                mail.AlternateViews.Add(avHtml);

                // Adjuntar archivos si la bandera es verdadera
                if (attachFile)
                {
                    if (string.IsNullOrEmpty(outputPath))
                    {
                        OpenFileDialog openFileDialog = new OpenFileDialog
                        {
                            Filter = "Excel Files|*.xls;*.xlsx",
                            Title = "Select an Excel File"
                        };

                        if (openFileDialog.ShowDialog() == DialogResult.OK)
                        {
                            string filePath = openFileDialog.FileName;
                            Attachment attachment = new Attachment(filePath);
                            mail.Attachments.Add(attachment);
                        }
                    }
                    else
                    {
                        Attachment attachment = new Attachment(outputPath);
                        mail.Attachments.Add(attachment);
                    }
                }

                // Envío del correo
                smtpClient.Send(mail);
                MessageBox.Show("Correo enviado exitosamente", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (FormatException ex)
            {
                MessageBox.Show($"Error de formato: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (SmtpException ex)
            {
                MessageBox.Show($"Error de SMTP: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error al enviar correo: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        private string GetHtmlBody(string body, Dictionary<string, string> model = null)
        {
            try
            {
                // Verificar el contenido del body antes de formatear
                Console.WriteLine("Body content before formatting: " + body);

                // Plantilla HTML para el cuerpo del correo
                string htmlTemplate = body;

                if (model != null)
                {
                    foreach (var item in model)
                    {
                        if (htmlTemplate.Contains(item.Key))
                        {
                            htmlTemplate = htmlTemplate.Replace(item.Key, item.Value);
                        }
                    }
                }
                return htmlTemplate;
            }
            catch (FormatException ex)
            {
                MessageBox.Show($"Error al formatear el cuerpo del correo: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                throw;
            }
        }
    }
}
