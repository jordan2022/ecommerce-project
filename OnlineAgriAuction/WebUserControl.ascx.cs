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

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Panel1.Controls.Clear();
      
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //Panel1.Controls.Clear();
        //SqlConnection tempConnection = new SqlConnection("server=.;integrated security=true;database=agrimarket");
        //tempConnection.Open();
        //string query1 = "select distinct * from reputation ";
        //SqlCommand cmd1 = new SqlCommand(query1, tempConnection);
        //SqlDataReader dr = cmd1.ExecuteReader();
        //while (dr.Read())
        //{
        //    Label tt = new Label();
        //    tt.Height = 40;
        //    tt.Width = 150;

        //    tt.Text = dr[0].ToString() + " is " + dr[6].ToString();
        //    Panel1.Controls.Add(tt);

        //}
        //tempConnection.Close();

    }
}
