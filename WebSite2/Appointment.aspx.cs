using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;


public partial class Appointment : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connetionString;
        SqlConnection cnn;

        connetionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Emp_Detail;Integrated Security=True";

        cnn = new SqlConnection(connetionString);

        cnn.Open();

        Response.Write("Connection MAde");
        string SQLCommand = "Insert into dbo.appointment(full_name, email, specific_doctor,appointment_date, appointment_time, condition)values(" + "'" + this.Name.Text + "','" + this.Email.Text + "','" + this.Doctor.Text + "','" + this.Date.Text + "','" + this.DropDownList3.SelectedItem.Value + "','" + this.Condition.Text + "')";
        SqlCommand cmd = new SqlCommand(SQLCommand, cnn);
        try
        {
            cmd.ExecuteNonQuery();  
            Response.Write("value saved successfully");
        }
        catch (Exception exception)
        {
            Response.Write("some error occured" + exception.Message);
        }

        cnn.Close();
    //    try
    //    {

    //        MailMessage msg = new MailMessage();
    //        msg.From = new MailAddress("jeetthakur395@gmail.com"); msg.To.Add(Email.Text);
    //        msg.Subject = "Regarding Appointemnent";
    //        msg.Body = "Full Name :" + Name.Text + Environment.NewLine + "Email :" + Email.Text + Environment.NewLine +
    //        "Specific Doctor :" + Doctor.Text + Environment.NewLine + "Condition :" + Condition.Text + Environment.NewLine + "Appointement Date :" + Date.Text + Environment.NewLine + "Appointment Time :" + DropDownList3.SelectedItem.Value;


    //        SmtpClient smt = new SmtpClient(); smt.Host = "smtp.gmail.com";
    //        System.Net.NetworkCredential ntcd = new NetworkCredential(); ntcd.UserName = "jeetthakur395@gmail.com";
    //        ntcd.Password = "Awsd9087@"; smt.Credentials = ntcd; smt.EnableSsl = true; smt.Port = 587; smt.Send(msg);

    //        Response.Write("Your Mail is sended");

    //    }
    //    catch (Exception ex)
    //    {

    //        Response.Write(ex.Message);
    //    }
    //    string message = "Your details have been saved successfully.";
    //    string script = "window.onload = function(){ alert('";
    //    script += message;
    //    script += "');";
    //    script += "window.location = '";
    //    script += Request.Url.AbsoluteUri;
    //    script += "'; }";
    }

}











