using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
//    protected void login_Click(object sender, EventArgs e)
//    {
//        string connetionString;
//        SqlConnection cnn;

//        connetionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Emp_Detail;Integrated Security=True";

//        cnn = new SqlConnection(connetionString);

//        cnn.Open();

//        Response.Write("Connection MAde");
//        SqlCommand cmd = new SqlCommand("Select * from dbo.docdetail where username=@Username and password=@Password", cnn);
//        cmd.Parameters.AddWithValue("@Username", username.Text.ToString());
//        cmd.Parameters.AddWithValue("@Password", password.Text.ToString());
//        SqlDataReader reader = cmd.ExecuteReader();
//        if (reader.Read())
//        {
//            Session["doc_id"] = Convert.ToInt32(reader["doc_id"].ToString());
//            Session["name"] = reader["name"].ToString();
//            reader.Close();
//            cmd.Dispose();
//            cnn.Close();
//            Response.Redirect("Default3.aspx");
//        }
//        else
//        {
//            reader.Close();
//            cmd.Dispose();
//            cnn.Close();
//            Response.Write("Invalid credentials");
//        }
//    }

//    protected void change_Click(object sender, EventArgs e)
//    {
//        string strConnString = "Data Source=(localdb)/MSSQLLocalDB;Initial Catalog=Emp_Detail;Integrated Security=True";
//        SqlConnection conn = new SqlConnection(strConnString);
//        SqlDataAdapter da = new SqlDataAdapter("select * from dbo.docdetail where Password='" + password.Text + "'", conn);
//        DataTable dt = new DataTable();
//        da.Fill(dt);

//        if (dt.Rows.Count.ToString() == "1")
//        {
//            if (newpwd.Text == cfmpwd.Text)
//            {
//                conn.Open();
//                SqlCommand cmd = new SqlCommand("update dbo.docdetail set password='" + newpwd.Text + "'where password='" + password.Text + "'", conn);
//                cmd.ExecuteNonQuery();
//                Response.Write("Password changed successfully");

//            }
//        }

//    }

//    protected void Button1_Click(object sender, EventArgs e)
//    {
//        
}
