using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace LearningASP
{
    public partial class LA103 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegistration"].ConnectionString);
            conn.Open();
            String CheckUser = "SELECT COUNT(*) FROM USERDATA WHERE USERNAME='" + TextBoxUNa.Text + "'";
            SqlCommand com = new SqlCommand(CheckUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "SELECT PASSWORD FROM USERDATA WHERE USERNAME='" + TextBoxUNa.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ","");

                if (password == TextBoxPSa.Text)
                {
                    Session["New"] = TextBoxUNa.Text;
                    Response.Write("Password is Correct");
                    Response.Redirect("LA13.aspx");
                }
                else
                {
                    Response.Write("Password is Not Correct");
                }
            }
            else
            {
                Response.Write("UserName is Not Correct");
            }

        
        }
    }
}