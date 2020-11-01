using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace BojanJovanovic
{
    public partial class Z5 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ZaUpdateDataSeta.globalna = 10;
            string ks = ConfigurationManager.ConnectionStrings["AdventureWorks2014ConnectionString"].ConnectionString;
            SqlConnection konekcija = new SqlConnection();
            konekcija.ConnectionString = ks;
            SqlCommand komanda = new SqlCommand();
            komanda.CommandText = "select * from Person.Person where BusinessEntityID=@BusinessEntityID";
            komanda.Connection = konekcija;
            komanda.Parameters.AddWithValue("BusinessEntityID", TextBox1.Text);

            konekcija.Open();
            SqlDataReader rdr = komanda.ExecuteReader();
            rdr.Read();
            Label1.Text = rdr["Title"].ToString();
            //if (rdr["Title"] != DBNull.Value)
            //{
            //    Label1.Text = (string)rdr["Title"];
            //}
            Label2.Text = (string)rdr["FirstName"];
            Label3.Text = (string)rdr["LastName"];
            
            konekcija.Close();

            komanda.CommandText = "select * from HumanResources.Employee where BusinessEntityID=@BusinessEntityID";
            konekcija.Open();
            rdr = komanda.ExecuteReader();
            rdr.Read();
            DateTime d = (DateTime)rdr["HireDate"];
            Label4.Text = d.ToString("d.M.yyyy.");
            Label5.Text = rdr["JobTitle"].ToString();
            konekcija.Close();
        }
    }
}