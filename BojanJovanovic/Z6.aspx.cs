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
    public partial class Z6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ks = ConfigurationManager.ConnectionStrings["k"].ConnectionString;
            SqlConnection kon = new SqlConnection(ks);
            SqlCommand kmd = new SqlCommand("INSERT INTO Utisak (Ime,Email,Komentar) VALUES (@I,@E,@K)", kon);
            kmd.Parameters.AddWithValue("I", TextBox1.Text);
            kmd.Parameters.AddWithValue("E", TextBox2.Text);
            kmd.Parameters.AddWithValue("K", TextBox3.Text);

            //try
            //{
            //    kon.Open();
            //    kmd.ExecuteNonQuery();
            //    Label1.Text = "Uspesno dodat komentar.";
            //}
            //catch
            //{
            //    Label1.Text = "Nije uspesno dodat komentar.";
            //}
            //finally
            //{
            //    kon.Close();
            //}

            using (kon)
            {
                kon.Open();
                kmd.ExecuteNonQuery();
                Label1.Text = "Uspesno dodat komentar.";
                Label2.Text = kon.State.ToString();
            }
            Label3.Text = kon.State.ToString();

        }
    }
}