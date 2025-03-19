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

public partial class Sellerhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //Label1.Text = "Welcome   " + Session["userid"].ToString();
        }
        catch (Exception ex)
        { }
     //  TextBox1.Text  =  "none";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        StartUpLoad();
    }
    public int productrec(string productno, string productname, string productcost, string productimage, string productpath, string  productsize,string sellerid,string sellername)
    {

        int rows1 = 0;
        SqlConnection tempConnection = createSqlConnection();
        tempConnection.Open();
        string query = "insert into newproduct values('" + productno + "','" + productname + "','" + productcost + "','" + productimage + "','" + productpath + "','" + productsize + "','" + sellerid  + "','" + sellername  + "')";
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

    private void StartUpLoad()
    {


        string imgName = FileUpload1.FileName;
        string imgPath = "products/" + imgName;
        int imgSize = FileUpload1.PostedFile.ContentLength;

        FileUpload1.SaveAs(Server.MapPath(imgPath));
        Image1.ImageUrl = "~/" + imgPath;
        int rows1 = productrec(TextBox1.Text, TextBox2.Text, TextBox3.Text, imgName, imgPath, TextBox5.Text, "admin", "admin");
        if (rows1 > 0)
        {
            Response.Write("<script>alert('Product Details Entered')</script>");

        }
    }
}
