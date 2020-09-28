using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;


public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (Session["name"] == null)
                Response.Redirect("Login.aspx");
            else
            {
                String userid = Convert.ToString((int)Session["doc_id"]);
                String username = Session["name"].ToString();

                lbluserInfo.Text = "Welcome, " + username + "";
            }

        }
        if (!this.IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Emp_Detail;Integrated Security=True");
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT name, qualification, specialist, email FROM dbo.docdetail WHERE doc_id ='" + Session["doc_id"] + "'", con);
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;

                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        txtName.Text = sdr["name"].ToString();
                        txtquali.Text = sdr["qualification"].ToString();
                        txtspeci.Text = sdr["specialist"].ToString();
                        txtemail.Text = sdr["email"].ToString();

                    }
                   }
                SqlCommand cmdi = new SqlCommand("SELECT Appointment_Id, full_name, appointment_date, appointment_time, condition FROM dbo.appointment WHERE specific_doctor ='" + Session["name"] + "'", con);
                {
                    using (SqlDataReader rd = cmdi.ExecuteReader())
                    {
                        StringBuilder html = new StringBuilder();
                        html.Append("<table border = '1'>");
                        html.Append("<tr><th>Appointement Id</th><th>Patient Name</th><th>Appointment Date</th><th>Appointment time</th><th>Condition</th></tr>");
                        html.Append("</tr>");
                        if (rd.HasRows)
                        {
                            while (rd.Read())
                            {
                                html.Append("<tr>");
                                html.Append("<td>" + rd[0] + "</td>");
                                html.Append("<td>" + rd[1] + "</td>");
                                html.Append("<td>" + rd[2] + "</td>");
                                html.Append("<td>" + rd[3] + "</td>");
                                html.Append("<td>" + rd[4] + "</td>");
                                html.Append("</tr>");
                            }
                        }

                        html.Append("</table>");
                        PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
                        rd.Close();
                    }
                    con.Close();
                }
            }
        }
    }

  
}


    