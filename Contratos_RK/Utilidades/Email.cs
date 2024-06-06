using Contratos_RK.Utilidades.data.plantillaEmail;
using Microsoft.Office.Interop.Excel;
using RK_Datos.Datos;
using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.IO; // Asegúrate de agregar esta línea
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Windows.Forms;

namespace Contratos_RK.Utilidades
{
    public class Email
    {

        public void SendEmail(string subject, string body, bool attachFile = false, string outputPath = "")
        {
            PlantillaEmail_Datos datos = new PlantillaEmail_Datos();
            PlantillaEmail_Modelo modelo = new PlantillaEmail_Modelo();
            modelo.accion = "O";
            modelo = datos.PlantillaEmail(modelo);
            // Dividir los correos y agregarlos a las listas de Email_Modelo
            Email_Modelo.Para = modelo.Para.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries).ToList();
            Email_Modelo.Copia = modelo.Copia.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries).ToList();

            subject = modelo.Asunto;
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
                SmtpClient smtpClient = new SmtpClient("180.176.74.200")
                {
                    Port = 25,
                    UseDefaultCredentials = false,
                    EnableSsl = false,
                    Credentials = new NetworkCredential(Email_Modelo.Email_To, Email_Modelo.Password_To)
                };

                // Validación del certificado del servidor
                ServicePointManager.ServerCertificateValidationCallback = delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors)
                {
                    return true;
                };

                // Creación del mensaje de correo
                MailMessage mail = new MailMessage
                {
                    From = new MailAddress(Email_Modelo.Email_To),
                    Subject = subject,
                    IsBodyHtml = true,
                    Priority = MailPriority.Normal
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
                string htmlTemplate = @"
<!DOCTYPE HTML PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional //EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">
<html xmlns=""http://www.w3.org/1999/xhtml"" xmlns:v=""urn:schemas-microsoft-com:vml"" xmlns:o=""urn:schemas-microsoft-com:office:office"">
<head>
<!--[if gte mso 9]>
<xml>
  <o:OfficeDocumentSettings>
    <o:AllowPNG/>
    <o:PixelsPerInch>96</o:PixelsPerInch>
  </o:OfficeDocumentSettings>
</xml>
<![endif]-->
  <meta http-equiv=""Content-Type"" content=""text/html; charset=UTF-8"">
  <meta name=""viewport"" content=""width=device-width, initial-scale=1.0"">
  <meta name=""x-apple-disable-message-reformatting"">
  <!--[if !mso]><!--><meta http-equiv=""X-UA-Compatible"" content=""IE=edge""><!--<![endif]-->
  <title></title>
  
    <style type=""text/css"">
      @media only screen and (min-width: 570px) {
  .u-row {
    width: 550px !important;
  }
  .u-row .u-col {
    vertical-align: top;
  }

  .u-row .u-col-50 {
    width: 275px !important;
  }

  .u-row .u-col-100 {
    width: 550px !important;
  }

}

@media (max-width: 570px) {
  .u-row-container {
    max-width: 100% !important;
    padding-left: 0px !important;
    padding-right: 0px !important;
  }
  .u-row .u-col {
    min-width: 320px !important;
    max-width: 100% !important;
    display: block !important;
  }
  .u-row {
    width: 100% !important;
  }
  .u-col {
    width: 100% !important;
  }
  .u-col > div {
    margin: 0 auto;
  }
}
body {
  margin: 0;
  padding: 0;
}

table,
tr,
td {
  vertical-align: top;
  border-collapse: collapse;
}

p {
  margin: 0;
}

.ie-container table,
.mso-container table {
  table-layout: fixed;
}

* {
  line-height: inherit;
}

a[x-apple-data-detectors='true'] {
  color: inherit !important;
  text-decoration: none !important;
}

table, td { color: #000000; } @media (max-width: 480px) { #u_content_text_1 .v-text-align { text-align: left !important; } #u_content_text_5 .v-text-align { text-align: left !important; } #u_content_text_5 .v-line-height { line-height: 170% !important; } }
    </style>
  
  

<!--[if !mso]><!--><link href=""https://fonts.googleapis.com/css?family=Rubik:400,700&display=swap"" rel=""stylesheet"" type=""text/css""><link href=""https://fonts.googleapis.com/css?family=Raleway:400,700&display=swap"" rel=""stylesheet"" type=""text/css""><link href=""https://fonts.googleapis.com/css?family=Raleway:400,700&display=swap"" rel=""stylesheet"" type=""text/css""><!--<![endif]-->

</head>

<body class=""clean-body u_body"" style=""margin: 0;padding: 0;-webkit-text-size-adjust: 100%;background-color: #b8cce2;color: #000000"">
  <!--[if IE]><div class=""ie-container""><![endif]-->
  <!--[if mso]><div class=""mso-container""><![endif]-->
  <table style=""border-collapse: collapse;table-layout: fixed;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;vertical-align: top;min-width: 320px;Margin: 0 auto;background-color: #b8cce2;width:100%"" cellpadding=""0"" cellspacing=""0"">
  <tbody>
  <tr style=""vertical-align: top"">
    <td style=""word-break: break-word;border-collapse: collapse !important;vertical-align: top"">
    <!--[if (mso)|(IE)]><table width=""100%"" cellpadding=""0"" cellspacing=""0"" border=""0""><tr><td align=""center"" style=""background-color: #b8cce2;""><![endif]-->
    
  
  
<div class=""u-row-container"" style=""padding: 0px;background-color: transparent"">
  <div class=""u-row"" style=""margin: 0 auto;min-width: 320px;max-width: 550px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: transparent;"">
    <div style=""border-collapse: collapse;display: table;width: 100%;height: 100%;background-color: transparent;"">
      <!--[if (mso)|(IE)]><table width=""100%"" cellpadding=""0"" cellspacing=""0"" border=""0""><tr><td style=""padding: 0px;background-color: transparent;"" align=""center""><table cellpadding=""0"" cellspacing=""0"" border=""0"" style=""width:550px;""><tr style=""background-color: transparent;""><![endif]-->
      
<!--[if (mso)|(IE)]><td align=""center"" width=""550"" style=""width: 550px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;"" valign=""top""><![endif]-->
<div class=""u-col u-col-100"" style=""max-width: 320px;min-width: 550px;display: table-cell;vertical-align: top;"">
  <div style=""height: 100%;width: 100% !important;"">
  <!--[if (!mso)&(!IE)]><!--><div style=""box-sizing: border-box; height: 100%; padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;""><!--<![endif]-->
  
<table style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:5px;font-family:'Raleway',sans-serif;"" align=""left"">
        
  <table height=""0px"" align=""center"" border=""0"" cellpadding=""0"" cellspacing=""0"" width=""100%"" style=""border-collapse: collapse;table-layout: fixed;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;vertical-align: top;border-top: 0px solid #BBBBBB;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%"">
    <tbody>
      <tr style=""vertical-align: top"">
        <td style=""word-break: break-word;border-collapse: collapse !important;vertical-align: top;font-size: 0px;line-height: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%"">
          <span>&#160;</span>
        </td>
      </tr>
    </tbody>
  </table>

      </td>
    </tr>
  </tbody>
</table>

  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->
  </div>
</div>
<!--[if (mso)|(IE)]></td><![endif]-->
      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->
    </div>
  </div>
  </div>
  


  
  
<div class=""u-row-container"" style=""padding: 0px;background-color: transparent"">
  <div class=""u-row"" style=""margin: 0 auto;min-width: 320px;max-width: 550px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: #ffffff;"">
    <div style=""border-collapse: collapse;display: table;width: 100%;height: 100%;background-color: transparent;"">
      <!--[if (mso)|(IE)]><table width=""100%"" cellpadding=""0"" cellspacing=""0"" border=""0""><tr><td style=""padding: 0px;background-color: transparent;"" align=""center""><table cellpadding=""0"" cellspacing=""0"" border=""0"" style=""width:550px;""><tr style=""background-color: #ffffff;""><![endif]-->
      
<!--[if (mso)|(IE)]><td align=""center"" width=""550"" style=""width: 550px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;"" valign=""top""><![endif]-->
<div class=""u-col u-col-100"" style=""max-width: 320px;min-width: 550px;display: table-cell;vertical-align: top;"">
  <div style=""height: 100%;width: 100% !important;"">
  <!--[if (!mso)&(!IE)]><!--><div style=""box-sizing: border-box; height: 100%; padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;""><!--<![endif]-->
  
<table style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:0px 0px 30px;font-family:'Raleway',sans-serif;"" align=""left"">
        
  <table height=""0px"" align=""center"" border=""0"" cellpadding=""0"" cellspacing=""0"" width=""100%"" style=""border-collapse: collapse;table-layout: fixed;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;vertical-align: top;border-top: 4px solid #f1c40f;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%"">
    <tbody>
      <tr style=""vertical-align: top"">
        <td style=""word-break: break-word;border-collapse: collapse !important;vertical-align: top;font-size: 0px;line-height: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%"">
          <span>&#160;</span>
        </td>
      </tr>
    </tbody>
  </table>

      </td>
    </tr>
  </tbody>
</table>

<table id=""u_content_text_1"" style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:10px 20px;font-family:'Raleway',sans-serif;"" align=""left"">
        
  <div class=""v-text-align v-line-height"" style=""font-size: 14px; color: #132f40; line-height: 140%; text-align: left; word-wrap: break-word;"">
    <p style=""line-height: 140%;""><span style=""font-family: Rubik, sans-serif; line-height: 19.6px;""><span style=""font-size: 16px; line-height: 22.4px;"">Hola {nombre_user}</span></span></p>
  </div>

      </td>
    </tr>
  </tbody>
</table>

<table style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:10px 20px;font-family:'Raleway',sans-serif;"" align=""left"">
        
  <div class=""v-text-align v-line-height"" style=""font-size: 14px; color: #333333; line-height: 180%; text-align: left; word-wrap: break-word;"">
    <p style=""font-size: 14px; line-height: 180%;""><span style=""font-family: Raleway, sans-serif; font-size: 14px; line-height: 25.2px;"">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip .</span></p>
  </div>

      </td>
    </tr>
  </tbody>
</table>

<table style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:10px 20px 15px;font-family:'Raleway',sans-serif;"" align=""left"">
        
  <div class=""v-text-align v-line-height"" style=""font-size: 14px; color: #333333; line-height: 180%; text-align: left; word-wrap: break-word;"">
    <p style=""font-size: 14px; line-height: 180%;""><span style=""font-family: Raleway, sans-serif; font-size: 14px; line-height: 25.2px;"">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</span></p>
  </div>

      </td>
    </tr>
  </tbody>
</table>

<table style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:10px;font-family:'Raleway',sans-serif;"" align=""left"">
        
<table width=""100%"" cellpadding=""0"" cellspacing=""0"" border=""0"">
  <tr>
    <td class=""v-text-align"" style=""padding-right: 0px;padding-left: 0px;"" align=""center"">
      
      <img align=""center"" border=""0"" src=""cid:InlineImage"" alt=""Image"" title=""Image"" style=""outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;clear: both;display: inline-block !important;border: none;height: auto;float: none;width: 100%;max-width: 400px;"" width=""400""/>
      
    </td>
  </tr>
</table>

      </td>
    </tr>
  </tbody>
</table>

<table style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:10px 20px 30px;font-family:'Raleway',sans-serif;"" align=""left"">
        
  <div class=""v-text-align v-line-height"" style=""font-size: 14px; color: #333333; line-height: 160%; text-align: left; word-wrap: break-word;"">
    <p style=""font-size: 14px; line-height: 160%;""><strong><span style=""font-family: Raleway, sans-serif; font-size: 14px; line-height: 22.4px;"">Generación de archivo correcta!!</span></strong></p>
<p style=""font-size: 14px; line-height: 160%;"">Procesado por txt_userName </p>
  </div>

      </td>
    </tr>
  </tbody>
</table>

  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->
  </div>
</div>
<!--[if (mso)|(IE)]></td><![endif]-->
      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->
    </div>
  </div>
  </div>
  


  
  
<div class=""u-row-container"" style=""padding: 0px;background-color: transparent"">
  <div class=""u-row"" style=""margin: 0 auto;min-width: 320px;max-width: 550px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: #d5f7e6;"">
    <div style=""border-collapse: collapse;display: table;width: 100%;height: 100%;background-color: transparent;"">
      <!--[if (mso)|(IE)]><table width=""100%"" cellpadding=""0"" cellspacing=""0"" border=""0""><tr><td style=""padding: 0px;background-color: transparent;"" align=""center""><table cellpadding=""0"" cellspacing=""0"" border=""0"" style=""width:550px;""><tr style=""background-color: #d5f7e6;""><![endif]-->
      
<!--[if (mso)|(IE)]><td align=""center"" width=""550"" style=""width: 550px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;"" valign=""top""><![endif]-->
<div class=""u-col u-col-100"" style=""max-width: 320px;min-width: 550px;display: table-cell;vertical-align: top;"">
  <div style=""height: 100%;width: 100% !important;"">
  <!--[if (!mso)&(!IE)]><!--><div style=""box-sizing: border-box; height: 100%; padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;""><!--<![endif]-->
  
<table id=""u_content_text_5"" style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:25px 20px 20px;font-family:'Raleway',sans-serif;"" align=""left"">
        
  <div class=""v-text-align v-line-height"" style=""font-size: 14px; color: #333333; line-height: 180%; text-align: left; word-wrap: break-word;"">
    <p style=""font-size: 14px; line-height: 180%;"">Correo generado de forma automática, favor de no responder este correo.</p>
  </div>

      </td>
    </tr>
  </tbody>
</table>

  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->
  </div>
</div>
<!--[if (mso)|(IE)]></td><![endif]-->
      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->
    </div>
  </div>
  </div>
  


  
  
<div class=""u-row-container"" style=""padding: 0px;background-color: transparent"">
  <div class=""u-row"" style=""margin: 0 auto;min-width: 320px;max-width: 550px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: #132f40;"">
    <div style=""border-collapse: collapse;display: table;width: 100%;height: 100%;background-color: transparent;"">
      <!--[if (mso)|(IE)]><table width=""100%"" cellpadding=""0"" cellspacing=""0"" border=""0""><tr><td style=""padding: 0px;background-color: transparent;"" align=""center""><table cellpadding=""0"" cellspacing=""0"" border=""0"" style=""width:550px;""><tr style=""background-color: #132f40;""><![endif]-->
      
<!--[if (mso)|(IE)]><td align=""center"" width=""550"" style=""width: 550px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;"" valign=""top""><![endif]-->
<div class=""u-col u-col-100"" style=""max-width: 320px;min-width: 550px;display: table-cell;vertical-align: top;"">
  <div style=""height: 100%;width: 100% !important;"">
  <!--[if (!mso)&(!IE)]><!--><div style=""box-sizing: border-box; height: 100%; padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;""><!--<![endif]-->
  
<table style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:5px;font-family:'Raleway',sans-serif;"" align=""left"">
        
  <table height=""0px"" align=""center"" border=""0"" cellpadding=""0"" cellspacing=""0"" width=""100%"" style=""border-collapse: collapse;table-layout: fixed;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;vertical-align: top;border-top: 0px solid #BBBBBB;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%"">
    <tbody>
      <tr style=""vertical-align: top"">
        <td style=""word-break: break-word;border-collapse: collapse !important;vertical-align: top;font-size: 0px;line-height: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%"">
          <span>&#160;</span>
        </td>
      </tr>
    </tbody>
  </table>

      </td>
    </tr>
  </tbody>
</table>

  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->
  </div>
</div>
<!--[if (mso)|(IE)]></td><![endif]-->
      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->
    </div>
  </div>
  </div>
  


  
  
<div class=""u-row-container"" style=""padding: 0px;background-color: transparent"">
  <div class=""u-row"" style=""margin: 0 auto;min-width: 320px;max-width: 550px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: #132f40;"">
    <div style=""border-collapse: collapse;display: table;width: 100%;height: 100%;background-color: transparent;"">
      <!--[if (mso)|(IE)]><table width=""100%"" cellpadding=""0"" cellspacing=""0"" border=""0""><tr><td style=""padding: 0px;background-color: transparent;"" align=""center""><table cellpadding=""0"" cellspacing=""0"" border=""0"" style=""width:550px;""><tr style=""background-color: #132f40;""><![endif]-->
      
<!--[if (mso)|(IE)]><td align=""center"" width=""275"" style=""width: 275px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;"" valign=""top""><![endif]-->
<div class=""u-col u-col-50"" style=""max-width: 320px;min-width: 275px;display: table-cell;vertical-align: top;"">
  <div style=""height: 100%;width: 100% !important;"">
  <!--[if (!mso)&(!IE)]><!--><div style=""box-sizing: border-box; height: 100%; padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;""><!--<![endif]-->
  
<table style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:10px 20px;font-family:'Raleway',sans-serif;"" align=""left"">
        
  <div class=""v-text-align v-line-height"" style=""font-size: 14px; color: #ffffff; line-height: 150%; text-align: left; word-wrap: break-word;"">
    <p style=""font-size: 14px; line-height: 150%;""><strong>SAM Asset Management, S.A de C.V.</strong></p>
<p style=""font-size: 14px; line-height: 150%;""> txt_Fecha </p>
  </div>

      </td>
    </tr>
  </tbody>
</table>

  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->
  </div>
</div>
<!--[if (mso)|(IE)]></td><![endif]-->
<!--[if (mso)|(IE)]><td align=""center"" width=""275"" style=""width: 275px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;"" valign=""top""><![endif]-->
<div class=""u-col u-col-50"" style=""max-width: 320px;min-width: 275px;display: table-cell;vertical-align: top;"">
  <div style=""height: 100%;width: 100% !important;"">
  <!--[if (!mso)&(!IE)]><!--><div style=""box-sizing: border-box; height: 100%; padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;""><!--<![endif]-->
  
  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->
  </div>
</div>
<!--[if (mso)|(IE)]></td><![endif]-->
      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->
    </div>
  </div>
  </div>
  


  
  
<div class=""u-row-container"" style=""padding: 0px;background-color: transparent"">
  <div class=""u-row"" style=""margin: 0 auto;min-width: 320px;max-width: 550px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: #132f40;"">
    <div style=""border-collapse: collapse;display: table;width: 100%;height: 100%;background-color: transparent;"">
      <!--[if (mso)|(IE)]><table width=""100%"" cellpadding=""0"" cellspacing=""0"" border=""0""><tr><td style=""padding: 0px;background-color: transparent;"" align=""center""><table cellpadding=""0"" cellspacing=""0"" border=""0"" style=""width:550px;""><tr style=""background-color: #132f40;""><![endif]-->
      
<!--[if (mso)|(IE)]><td align=""center"" width=""550"" style=""width: 550px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;"" valign=""top""><![endif]-->
<div class=""u-col u-col-100"" style=""max-width: 320px;min-width: 550px;display: table-cell;vertical-align: top;"">
  <div style=""height: 100%;width: 100% !important;"">
  <!--[if (!mso)&(!IE)]><!--><div style=""box-sizing: border-box; height: 100%; padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;""><!--<![endif]-->
  
<table style=""font-family:'Raleway',sans-serif;"" role=""presentation"" cellpadding=""0"" cellspacing=""0"" width=""100%"" border=""0"">
  <tbody>
    <tr>
      <td style=""overflow-wrap:break-word;word-break:break-word;padding:5px;font-family:'Raleway',sans-serif;"" align=""left"">
        
  <table height=""0px"" align=""center"" border=""0"" cellpadding=""0"" cellspacing=""0"" width=""100%"" style=""border-collapse: collapse;table-layout: fixed;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;vertical-align: top;border-top: 0px solid #BBBBBB;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%"">
    <tbody>
      <tr style=""vertical-align: top"">
        <td style=""word-break: break-word;border-collapse: collapse !important;vertical-align: top;font-size: 0px;line-height: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%"">
          <span>&#160;</span>
        </td>
      </tr>
    </tbody>
  </table>

      </td>
    </tr>
  </tbody>
</table>

  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->
  </div>
</div>
<!--[if (mso)|(IE)]></td><![endif]-->
      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->
    </div>
  </div>
  </div>
  


    <!--[if (mso)|(IE)]></td></tr></table><![endif]-->
    </td>
  </tr>
  </tbody>
  </table>
  <!--[if mso]></div><![endif]-->
  <!--[if IE]></div><![endif]-->
</body>

</html>";





                return htmlTemplate.Replace("{nombre_user}", "").Replace("{body}", body).Replace("txt_Fecha", "03/06/2024").Replace("txt_userName", SesionUsuario_Modelo.nombre);
            }
            catch (FormatException ex)
            {
                MessageBox.Show($"Error al formatear el cuerpo del correo: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                throw;
            }
        }
    }
}
