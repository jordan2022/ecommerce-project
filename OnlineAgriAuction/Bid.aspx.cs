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

public partial class Bid : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=.;integrated security=true;database=agrimarket");

    protected void Page_Load(object sender, EventArgs e)
    {

        SqlDataAdapter da = new SqlDataAdapter("select inventory.fid,inventory.pid,inventory.pname,inventory.commodity_type,inventory.UOM,inventory.stock,auction_value.Min_price,auction.aid,auction.dateofauction,auction.edate from inventory inner join auction_value on inventory.pid=auction_value.pid inner join  auction on auction.pid=inventory.pid", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gdImage.DataSource = ds;
        gdImage.DataBind();
    }
    string prono;
        string dealername;
        string proname;
        string pno;
        string uname;
    protected void bid_Click(object sender, EventArgs e)
    {
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
                pno = grdrow.Cells[0].Text;

        prono = grdrow.Cells[1].Text;
         proname = grdrow.Cells[2].Text;
         dealername = grdrow.Cells[3].Text;
        //aid
         TextBox4.Text = grdrow.Cells[7].Text;

         TextBox5.Text = prono;
         TextBox1.Text = proname;
         TextBox2.Text = dealername;
         TextBox6.Text  = grdrow.Cells[5].Text;
         DateTime sdt =Convert.ToDateTime(grdrow.Cells[8].Text);
         DateTime edt = Convert.ToDateTime(grdrow.Cells[9].Text);
        DateTime tdate=Convert.ToDateTime(DateTime.Now.ToShortDateString ());
        if ((sdt <= tdate) && (edt > tdate))
        {
            Button1.Enabled = true ;
        }
        else
        {
            Button1.Enabled = true;

        }

    }
    public int complain(string pno, string productno, string productname, string dealername, string buyerid, string buyername, string bdate,string compp,string comdet,string compname)
    {

        int rows1 = 0;
        SqlConnection tempConnection = createSqlConnection();
        tempConnection.Open();
        string query = "insert into Auction_reply values('" + pno + "','" + productno + "','" + productname + "','" + dealername + "','" + buyerid + "','" + buyername + "','" + bdate + "','" + compp + "','" + comdet + "','" + compname + "')";
        SqlCommand cmd = new SqlCommand(query, tempConnection);
        rows1 = cmd.ExecuteNonQuery();
        closeConnection(tempConnection);
        return rows1;
    }
    string compdet;
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
    protected void Button1_Click(object sender, EventArgs e)
    {

        DataAccess da = new DataAccess();
        SqlDataReader dr = da.DBReaderOpen("select * from auction_reply where cid='" + Session["userid"].ToString() + "' and aid='" + TextBox4.Text + "'");
        if (dr.Read())
        {
            Response.Write("<script>alert('You have already made Bid for this item')</script>");

        }
        else
        {
            da.DBCmdOpen("insert into auction_reply values('" + TextBox4.Text + "','" + Session["userid"].ToString() + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DateTime.Now.ToShortDateString() + "')");
            Response.Write("<script>alert('Bid details posted successfully')</script>");
        }

       


    }
}
