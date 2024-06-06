using RK_Negocio.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Controlador
{
    public class Usuario_Controlador
    {
        private static Usuario_Controlador instance;
        public static Usuario_Controlador Instancia
        {
            get
            {
                if (instance == null)
                {
                    instance = new Usuario_Controlador();
                }
                return instance;
            }
        }


        public void AgregarUsuario(Usuario_Modelo modelo)
        {
            try
            {
                string[,] parametros = { { "@nombre", modelo.nombre }, { "@email", modelo.email }, {"@id_sistema",SesionUsuario_Modelo.id_sistema } };
                ConnectorLibrary.App.GetCurrentConnector().Tabla(Utilidades.SP_Usuario.sp_crear_usuario, parametros);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
