using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contratos_RK.Utilidades.data.plantillaEmail
{
    public static class style
    {
        public static string css = @"

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
";
    }
}
