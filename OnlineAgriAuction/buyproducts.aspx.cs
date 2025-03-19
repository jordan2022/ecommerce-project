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

public partial class buyproducts : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=.;integrated security=true;database=agrimarket");

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select productno,companyname,productname,warrenty,productcost,productpath,sellername from newproduct", con);
       DataSet  ds = new DataSet();
        da.Fill(ds);
        gdImage.DataSource = ds;
        gdImage.DataBind();
    }
    protected void buy_Click(object sender, EventArgs e)
    {
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
        string prono = grdrow.Cells[0].Text;
        string dealername = grdrow.Cells[1].Text;
        string proname = grdrow.Cells[2].Text;




        int rows1 = buyproduct(prono ,proname , dealername , Session["uid"].ToString(), Session["userid"].ToString(),DateTime.Now.ToString());
        if (rows1 > 0)
        {
            Response.Write("<script>alert('Product Details Entered')</script>");

        }
        SqlConnection con1 = new SqlConnection("server=.;integrated security=true;database=agrimarket");

        //con1.Open();
        //SqlCommand cmm = new SqlCommand("delete from newproduct where productno'" + prono + "' and sellername='" + dealername + "'", con1);
        //cmm.ExecuteNonQuery();
        //con1.Close(); 

    }
    public int buyproduct(string productno, string productname, string dealername, string buyerid, string buyername, string bdate)
    {

        int rows1 = 0;
        SqlConnection tempConnection = createSqlConnection();
        tempConnection.Open();
        string query = "insert into purchase values('" + productno + "','" + productname + "','" + dealername + "','" + buyerid + "','" + buyername + "','" + bdate + "')";
        SqlCommand cmd = new SqlCommand(query, tempConnection);
        rows1 = cmd.ExecuteNonQuery();
        closeConnection(tempConnection);
        return rows1;
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

    private void buyproduct()
    {
        
       
    }
    protected void gdImage_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
