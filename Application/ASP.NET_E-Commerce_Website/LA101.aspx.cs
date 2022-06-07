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
    public partial class WebForm101 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegistration"].ConnectionString);
                conn.Open();
                String CheckUser = "SELECT COUNT(*) FROM USERDATA WHERE USERNAME='" + TextBoxUN.Text + "'";
                SqlCommand com = new SqlCommand(CheckUser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if(temp==1)
                {
                    Response.Write("User Already Exists");
                }
                conn.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {   
                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegistration"].ConnectionString);
                conn.Open();
                
                SqlCommand cmd = new SqlCommand("INSERT INTO[dbo].[UserData] ([ID], [UserName], [Email], [Password], [Country]) VALUES(@ID,'" + TextBoxUN.Text + "','" + TextBoxEM.Text + "','" + TextBoxPS.Text + "','" + DropDownListCO.SelectedItem + "')", conn);
                cmd.Parameters.AddWithValue("@ID", newGUID.ToString());
                cmd.ExecuteNonQuery();
                Response.Redirect("LA102.aspx");
                Response.Write("Registration is Successful");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
            Response.Write("Your Registeration is Successful!");
        }
    }
}