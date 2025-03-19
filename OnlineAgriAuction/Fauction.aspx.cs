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

public partial class Fauction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text ="Welcome   " + Session["userid"].ToString();
        if (IsPostBack != true)
        {
            SqlConnection con1 = new SqlConnection(@"Data Source=.;Initial Catalog=agrimarket;Integrated Security=True");
            SqlCommand cmd;
            con1.Open();
            cmd = new SqlCommand("select distinct(pid) from newproduct", con1);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[0].ToString());
            }
           
            con1.Close(); 
        }
     //  TextBox1.Text  =  "none";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        StartUpLoad();
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

    private void StartUpLoad()
    {

        DataAccess da = new DataAccess();
        da.DBCmdOpen("insert into auction values('" + Session["userid"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + Calendar1.SelectedDate.ToShortDateString() + "','" + Calendar2.SelectedDate.ToShortDateString() + "','Active')");
        Response.Write("<script>alert('Auction Details Entered')</script>");

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=.;Initial Catalog=agrimarket;Integrated Security=True");
        SqlCommand cmd;
        con1.Open();
        cmd = new SqlCommand("select * from newproduct where pid='" + DropDownList1.Text  + "' ", con1);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            TextBox5.Text = dr[5].ToString();
            string imgPath = dr[3].ToString();
            Image1.ImageUrl = "~/products/" + imgPath;
        }
        else
        {
            

        }
        con1.Close();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
}
