using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace LearningASP
{
    public partial class LA13 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO[dbo].[utbl] ([Id], [Name], [Age], [Mobile], [VehicleDetails], [PlateNumber], [Model], [Make], [ComplaintDetails]) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')", con);
            cmd.ExecuteNonQuery(); 
            con.Close();
            Label1.Text = "Data has been inserted";
            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[utbl] SET Name = '" + TextBox2.Text + "', Age = '" + TextBox3.Text + "', Mobile = '" + TextBox5.Text + "', VehicleDetails = '" + TextBox6.Text + "', PlateNumber = '" + TextBox7.Text + "', Model = '" + TextBox8.Text + "', Make = '" + TextBox9.Text + "', ComplaintDetails = '" + TextBox10.Text + "' WHERE Id = '" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data has been updated";
            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[utbl] WHERE Id = '" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data has been Deleted";
            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string find = "SELECT * FROM [dbo].[utbl] WHERE (Id like '%' +@Id+ '%')";
            SqlCommand cmd = new SqlCommand(find,con);
            cmd.Parameters.Add("@Id", SqlDbType.NVarChar).Value = TextBox4.Text;
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Id");

            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();



            con.Close();
            Label1.Text = "Data Searched";
           
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[utbl]", con);
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Id");

            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            Label1.Text = "All Data Available";
           
            
        }
    }
}
