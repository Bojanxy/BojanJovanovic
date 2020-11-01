using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace BojanJovanovic
{
    public class ZaUpdateDataSeta
    {
        public static int globalna1=0;

        public static int globalna { get => globalna1; set => globalna1 = value; }
    }
    public partial class Z7 : System.Web.UI.Page
    {
        static DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            //ds.Dispose();

            if (ZaUpdateDataSeta.globalna == 0)
            {
                ZaUpdateDataSeta.globalna = 1;
                string ks = ConfigurationManager.ConnectionStrings["AdventureWorks2014ConnectionString"].ConnectionString;
                SqlConnection kon = new SqlConnection(ks);
                SqlDataAdapter sda = new SqlDataAdapter("select * from Person.Person", kon);
                //SqlDataAdapter sda = new SqlDataAdapter("select * from HumanResources.Employee", kon);
                sda.Fill(ds,"Person");
                sda.SelectCommand.CommandText = "select * from Person.Password";
                
                sda.Fill(ds,"Password");
                
            }
            

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(TextBox1.Text) - 1;
            Label1.Text = ds.Tables["Person"].Rows[id]["FirstName"].ToString();
            Label2.Text = ds.Tables["Person"].Rows[id]["LastName"].ToString();
            Label3.Text = ds.Tables["Password"].Rows[id]["PasswordHash"].ToString();
            ZaUpdateDataSeta.globalna = 7;
        }
    }
}