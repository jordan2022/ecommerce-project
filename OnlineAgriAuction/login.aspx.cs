using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    string ss;
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            RadioButton2.Checked = false;
        }
        else
        {
            RadioButton2.Checked = false;
        }
        ss = "Farmer";
        Session["utype"] = ss;
        //Response.Redirect("newuser.aspx");

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            RadioButton1.Checked = false;
        }
        else
        {
            RadioButton1.Checked = false;
        }
        ss = "Customer";
        Session["utype"] = ss;
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("newuser.aspx");
    }
    private SqlConnection createSqlConnection()
    {
        SqlConnection con = new SqlConnection("server=.;integrated security=true;database=agrimarket");
        return con;
    }
    private void closeConnection(SqlConnection con)
    {
        try
        {
            if (con != null)
            {
                con.Close();
            }
        }
        catch (Exception)
        {

        }
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        if ((Login1.UserName == "Admin") && (Login1.Password == "Admin"))
        {
            //Session["userid"] = "admin";
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            SqlConnection tempConnection = createSqlConnection();
            tempConnection.Open();
            string query1 = "select * from register where username='" + Login1.UserName + "' and password='" + Login1.Password + "' ";
            SqlCommand cmd1 = new SqlCommand(query1, tempConnection);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                try
                {
                    Session["userid"] = dr[2].ToString();
                    Session["uid"] = dr[1].ToString();
                    Session["userty"] = dr[0].ToString();
                    Session["cname"] = dr[5].ToString();
                    if (dr[0].ToString() == "Farmer")
                    {
                        if (dr[5].ToString() != "")
                        {
                            Response.Redirect("Fsellerhome.aspx");
                        }
                    }
                    else
                    {
                        Response.Redirect("buyerhome.aspx");

                    }

                }
                catch (Exception ex)
                {

                }

            }
           

            closeConnection(tempConnection);
        }
    }
}
