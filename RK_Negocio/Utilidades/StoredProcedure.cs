﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RK_Negocio.Utilidades
{
    public class SP_RK
    {
        public static string sp_guardar_contrato = "sp_guardar_contrato";
        public static string sp_buscar_contrato = "sp_buscar_contrato";
    }
    public static class SP_Sesion
    {
        //@usuario
        //@email
        public static string sp_reune_obtener_sesion = "sp_ctr_obtener_sesion";
    }
    public class SP_Configuraciones
    {
        public static string sp_ctr_obtener_modificar_configuraciones_sistema = "sp_ctr_obtener_modificar_configuraciones_sistema";
    }
    public class SP_Catalogos
    {
        public static string sp_ctr_crear_obtener_modificar_contratos = "sp_ctr_crear_obtener_modificar_contratos";
        public static string sp_ctr_crear_obtener_modificar_fuentes = "sp_ctr_crear_obtener_modificar_fuentes";
        public static string sp_ctr_crear_obtener_modificar_tipoCliente = "sp_ctr_crear_obtener_modificar_tipoCliente";

    }
    public class SP_Combo
    {
        public static string sp_ctr_combo = "sp_ctr_combo";
    }
    public class SP_Lista
    {
        public static string sp_ctr_portgroup_custodio = "sp_ctr_portgroup_custodio";
    }
}
