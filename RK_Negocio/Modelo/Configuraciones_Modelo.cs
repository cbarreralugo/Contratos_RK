﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Modelo
{
    public class Configuraciones_Modelo
    {
        public string Plantilla_Draft { get; set; }
        public string Draft_Creado { get; set; }
        public string Email_To { get; set; }
        public string Password_To { get; set; }
        public string image_status { get; set; }
        public string accion { get; set; }
        public string id_sistema {  get; set; } 
        public string ruta_sesion_temporal { get; set; }
        public string SesionTemporal { get; set; }
    } 
}
public static class Configuracion_Modelo
{
    public static string Plantilla_Draft { get; set; }
    public static string Draft_Creado { get; set; }
    public static string Email_To { get; set; }
    public static string Password_To { get; set; }
    public static string image_status { get; set; }
    public static string accion { get; set; }
    public static string id_sistema { get; set; }
    public static string ruta_sesion_temporal { get; set; }
    public static string SesionTemporal { get; set; }
}