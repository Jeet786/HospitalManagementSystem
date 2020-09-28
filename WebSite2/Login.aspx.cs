using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using WebSite2;
using System.Data.SqlClient;

public partial class Account_Login : Page
{
    protected void login_Click(object sender, EventArgs e)
    {
        string connetionString;
        SqlConnection cnn;

        connetionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Emp_Detail;Integrated Security=True";

        cnn = new SqlConnection(connetionString);

        cnn.Open();

        Response.Write("Connection MAde");
        SqlCommand cmd = new SqlCommand("Select * from dbo.docdetail where username=@Username and password=@Password", cnn);
        cmd.Parameters.AddWithValue("@Username", username.Text.ToString());
        cmd.Parameters.AddWithValue("@Password", password.Text.ToString());
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            Session["doc_id"] = Convert.ToInt32(reader["doc_id"].ToString());
            Session["name"] = reader["name"].ToString();
            reader.Close();
            cmd.Dispose();
            cnn.Close();
            Response.Redirect("Default3.aspx");
        }
        else
        {
            reader.Close();
            cmd.Dispose();
            cnn.Close();
            Response.Write("Invalid credentials");
        }
    }

}   