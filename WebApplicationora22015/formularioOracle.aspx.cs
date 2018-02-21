using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using System.Data;

namespace WebApplicationora22015
{
    public partial class formularioOracle : System.Web.UI.Page
    {
        //Datos para armar una conexion
        String ora_conn = "User Id = hr; Password=hr;Data Source=EX;";
        OracleConnection m = new OracleConnection();


        //clase q crea la conexion
        conexion n = new conexion();

        String StringConxion = "Data Source=" + "DESKTOP-7S358LL" + "; User Id=" + "hr" + "; Password=" + "hr" + ";";






        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void create_Click(object sender, EventArgs e)
        {
            Console.WriteLine("1111111111111111111111111");
           
                Console.WriteLine("2222222222222222222222222222");
                OracleConnection m = new OracleConnection();

                conexion n = new conexion();
                Console.WriteLine("3333333333333333333333");
                String cmd = "";
                OracleCommand query;
                m = new OracleConnection("Data Source=localhost;User ID=hr;Password=hr;Unicode=True");
                Console.WriteLine(m);

                m.Open();


                cmd = "insert into employees  (EMPLOYEE_ID	,FIRST_NAME	,LAST_NAME	,EMAIL	,PHONE_NUMBER	,HIRE_DATE	,JOB_ID	,SALARY		)  values ('780','wagner','cadena','wcadena4','980593340','07/212018','AD_PRES','1400')";
                query = new OracleCommand(cmd, m);
                query.ExecuteNonQuery();
                n.closeConnection();
                lbmensaje.Text = "Datos Almacenados";


            

            

        }

        private void MostrarDatos()
        {
            OracleConnection m = new OracleConnection();

            conexion n = new conexion();


            m = new OracleConnection("Data Source=" + "XE" + "; User Id=" + "hr" + "; Password=" + "hr" + ";");
            m.Open();
            OracleDataAdapter conecto2 = new OracleDataAdapter("select * from Employees", m);

            DataSet tabla = new DataSet();
            conecto2.Fill(tabla);
            GridView1.DataSource = tabla.Tables[0].DefaultView;
            GridView1.DataBind();

        }

        protected void read_Click(object sender, EventArgs e)
        {
            MostrarDatos();
        }
    }
}