using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void change_Click(object sender, EventArgs e)
    {
        string strConnString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Emp_Detail;Integrated Security=True";
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
}