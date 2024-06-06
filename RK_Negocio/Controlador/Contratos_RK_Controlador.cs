using ClosedXML.Excel;
using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Contracts;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Controlador
{
    public class Contratos_RK_Controlador
    {
        private static Contratos_RK_Controlador _instancia;

        public static Contratos_RK_Controlador Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new Contratos_RK_Controlador();
                }
                return _instancia;
            }
        }

        public void GuardarContrato(Contratos_RK_Modelo contrato)
        {
            // Insertar en la base de datos
            InsertarEnBaseDeDatos(contrato);

            // Crear archivo Excel
            CrearArchivoExcel(contrato);
        }

        private void InsertarEnBaseDeDatos(Contratos_RK_Modelo contrato)
        {
            string[,] parametros =
            {
                {"@bo_code", contrato.BoCode},
                {"@contrato", contrato.Contrato},
                {"@denominacion", contrato.Denominacion},
                {"@moneda", contrato.Moneda},
                {"@numero_contrato", contrato.NumeroContrato},
                {"@denominacion_contrato", contrato.DenominacionContrato},
                {"@tipo_port", contrato.TipoPort},
                {"@tipo_custodio", contrato.TipoCustodio},
                {"@tipo_fondo", contrato.TipoFondo},
                {"@tipo_bo_code", contrato.TipoBoCode},
                {"@contrato_externo", contrato.ContratoExterno},
                {"@tipo_contrato", contrato.TipoContrato},
                {"@tipo_golden_parent", contrato.TipoGoldenParent},
                {"@external_address", contrato.ExternalAddress}
            };


            ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_guardar_contrato, parametros);
        }
        private void CrearArchivoExcel(Contratos_RK_Modelo contrato)
        {
            string folderPath = @"" + Configuracion_Modelo.Draft_Creado;
            string fileName = "Hoja de trabajo.xlsx";
            string fullPath = Path.Combine(folderPath, fileName);

            // Verificar si el directorio existe, si no, crearlo
            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            // Crear y llenar el archivo Excel
            using (var workbook = new XLWorkbook())
            {
                var worksheet = workbook.Worksheets.Add("Contratos");

                worksheet.Cell(1, 1).Value = "BoCode";
                worksheet.Cell(1, 2).Value = "Contrato";
                worksheet.Cell(1, 3).Value = "Denominacion";
                worksheet.Cell(1, 4).Value = "Moneda";
                worksheet.Cell(1, 5).Value = "NumeroContrato";
                worksheet.Cell(1, 6).Value = "DenominacionContrato";
                worksheet.Cell(1, 7).Value = "FechaContrato";
                worksheet.Cell(1, 8).Value = "TipoPort";
                worksheet.Cell(1, 9).Value = "TipoCustodio";
                worksheet.Cell(1, 10).Value = "TipoFondo";
                worksheet.Cell(1, 11).Value = "TipoBoCode";
                worksheet.Cell(1, 12).Value = "ContratoExterno";
                worksheet.Cell(1, 13).Value = "TipoContrato";
                worksheet.Cell(1, 14).Value = "TipoGoldenParent";
                worksheet.Cell(1, 15).Value = "ExternalAddress";

                worksheet.Cell(2, 1).Value = contrato.BoCode;
                worksheet.Cell(2, 2).Value = contrato.Contrato;
                worksheet.Cell(2, 3).Value = contrato.Denominacion;
                worksheet.Cell(2, 4).Value = contrato.Moneda;
                worksheet.Cell(2, 5).Value = contrato.NumeroContrato;
                worksheet.Cell(2, 6).Value = contrato.DenominacionContrato;
                worksheet.Cell(2, 7).Value = contrato.FechaContrato;
                worksheet.Cell(2, 8).Value = contrato.TipoPort;
                worksheet.Cell(2, 9).Value = contrato.TipoCustodio;
                worksheet.Cell(2, 10).Value = contrato.TipoFondo;
                worksheet.Cell(2, 11).Value = contrato.TipoBoCode;
                worksheet.Cell(2, 12).Value = contrato.ContratoExterno;
                worksheet.Cell(2, 13).Value = contrato.TipoContrato;
                worksheet.Cell(2, 14).Value = contrato.TipoGoldenParent;
                worksheet.Cell(2, 15).Value = contrato.ExternalAddress;

                workbook.SaveAs(fullPath);
            }
        }

        public DataTable BuscarContrato(string numeroContrato)
        {
            DataTable data = new DataTable();
            try
            {
                string[,] parametros =
                {
                    {"@numeroContrato", numeroContrato.ToString()}, 
                };
                data = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_buscar_contrato, parametros);
            }
            catch (Exception ex)
            {
                 Console.WriteLine(ex.Message);
            }
            return data;
        }

        public DataTable ObtenerPortafolioActivo()
        {
            DataTable data = new DataTable();
            try
            {
                 
                data = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_ctr_obtener_portafolio_activo_samoa);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return data;
        }
        public DataTable ObtenerBO()
        {
            DataTable data = new DataTable();
            try
            {

                data = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_ctr_obtener_tipo_bo);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return data;
        }
        public DataTable ObtenerGOlden()
        {
            DataTable data = new DataTable();
            try
            {

                data = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_ctr_obtener_tipo_golden_parent);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return data;
        }
        public DataTable ObtenerPuerto()
        {
            DataTable data = new DataTable();
            try
            {

                data = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_ctr_obtener_port_group);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return data;
        }
        public DataTable ObtenerCustodio()
        {
            DataTable data = new DataTable();
            try
            {

                data = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_ctr_obtener_custodio);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return data;
        }
        public DataTable ObtenerUsuarios(string id_sistema="")
        {
            DataTable data = new DataTable();
            try
            {
                string[,] parametros =
               {
                    {"@id_sistema", id_sistema==""?SesionUsuario_Modelo.id_sistema:id_sistema},
                };
                data = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_ctr_obtener_usuarios,parametros);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return data;
        }
        public DataTable ObtenerConfiguracion()
        {
            DataTable data = new DataTable();
            try
            {

                data = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_ctr_obtener_configuraciones_sistema);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return data;
        }

        public string ObtenerDetalleCustodio(int idTipoCustodio)
        {
            DataTable data = new DataTable();
            string detalleCustodio = string.Empty;
            try
            {
                string[,] parametros =
            {
                {"@id_tipo_custodio", idTipoCustodio.ToString()} };
                data = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_ctr_custodio_detalle,parametros); 
                detalleCustodio = $"[{data.Rows[0]["codigo_custodio"]}] {data.Rows[0]["nombre_custodio"]}";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return detalleCustodio;
        }

        public string ObtenerDetalleBo(int idTipoBo)
        {
            DataTable data = new DataTable();
            string detalleCustodio = string.Empty;
            try
            {
                string[,] parametros =
            {
                {"@id_tipo_bo", idTipoBo.ToString()} };
                data = ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_RK.sp_ctr_bo_detalle, parametros);
                detalleCustodio = $"[{data.Rows[0]["codigo_custodio"]}] {data.Rows[0]["nombre_custodio"]}";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return detalleCustodio;
        }
    }
}