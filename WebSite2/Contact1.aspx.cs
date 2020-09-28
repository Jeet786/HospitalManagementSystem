using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;


public partial class Contact1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("jeetthakur395@gmail.com");/* msg.To.Add(TextBox2.Text);*/
            msg.Subject = "Contact Us";
            //msg.Body = "Name :" + TextBox1.Text.ToString() + Environment.NewLine + "Email :" + TextBox2.Text + Environment.NewLine + "Message :" + TextBox3.Text;


            SmtpClient smt = new SmtpClient(); smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntcd = new NetworkCredential(); ntcd.UserName = "jeetthakur395@gmail.com";
            ntcd.Password = "affected"; smt.Credentials = ntcd; smt.EnableSsl = true; smt.Port = 587; smt.Send(msg);

            Response.Write("Your Mail is sended");

        }
        catch (Exception ex)
        {

            Response.Write(ex.Message);
        }
        string message = "Your details have been send successfully.";
        string script = "window.onload = function(){ alert('";
        script += message;
        script += "');";
        script += "window.location = '";
        script += Request.Url.AbsoluteUri;
        script += "'; }";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
    }

    protected void change_Click(object sender, EventArgs e)
    {
        string strConnString = "Data Source=(localdb)/MSSQLLocalDB;Initial Catalog=Emp_Detail;Integrated Security=True";
        SqlConnection conn = new SqlConnection(strConnString);
        SqlDataAdapter da = new SqlDataAdapter("select * from dbo.docdetail where Password='" + password.Text + "'", conn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count.ToString() == "1")
        {
            if (newpwd.Text == cfmpwd.Text)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("update dbo.docdetail set password='" + newpwd.Text + "'where password='" + password.Text + "'", conn);
                cmd.ExecuteNonQuery();
                Response.Write("Password changed successfully");

            }
        }

    }

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