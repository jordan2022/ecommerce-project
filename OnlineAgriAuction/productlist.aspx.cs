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

public partial class productlist : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;integrated security=true;database=agrimarket");
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select pid,productname,product_type,uom,productpath from newproduct", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gdImage.DataSource = ds;
        gdImage.DataBind();
        con.Close();
    }
}
