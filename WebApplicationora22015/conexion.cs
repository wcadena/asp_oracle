using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.DataAccess.Client;


namespace WebApplicationora22015
{
    public class conexion
    {
        public OracleConnection m;
        private static OracleConnection conexion01 = new OracleConnection();

        public static OracleConnection conexion02
        {
            get { return conexion.conexion01; }
            set { conexion.conexion01 = value; }
        }


        public static void RutaConexion()
        {

            conexion02.ConnectionString = "Data Source=" + "DESKTOP-7S358LL" + "; User Id=" + "hr" + "; Password=" + "hr" + ";";


        }
        public bool OpenConnection(string Servidor, string usuario, string pass)
        {
            try
            {
                /*Usuario>Nombre de usuario en Oracle 10g
                 * Pass> Password de usuario en Oracle 10g
                 * Servidor> representa el servidor de nuestra maquina o el nombre de ella
                 * */

                m = new OracleConnection("Data Source=" + "DESKTOP-7S358LL" + "; User Id=" + "hr" + "; Password=" + "hr" + ";");
                // abrimos la conexion 
                m.Open();
                return true;

            }
            catch (Exception)//Si ocurre algun error
            {
                return false;
            }
        }

        // metodo para cerrar la conexion
        public bool closeConnection()
        {
            try
            {
                m.Close();
                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }


    }
}