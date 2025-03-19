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
using ZedGraph;
using System.Drawing;


public partial class viewfeeback1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=.;integrated security=true;database=agrimarket");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from inventory", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        con.Close();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //OnRenderGraph1(g1 );

    }
    //#region Web Form Designer generated code
    //override protected void OnInit(EventArgs e)
    //{
    //    InitializeComponent();
    //    base.OnInit(e);
    //}

    //   private void InitializeComponent()
    //{
    //    this.g1.RenderGraph += new ZedGraph.Web.ZedGraphWebControlEventHandler(this.OnRenderGraph1);
    //    //this.ZedGraphWeb2.RenderGraph += new ZedGraph.Web.ZedGraphWebControlEventHandler(this.OnRenderGraph2);

    //}
    //#endregion

    //private void OnRenderGraph1(ZedGraph.Web.ZedGraphWeb z, System.Drawing.Graphics g, ZedGraph.MasterPane masterPane)
    //{
    //    GraphPane myPane = masterPane[0];

    //    myPane.XAxis.Title.Text = "Farmer name";
    //    myPane.YAxis.Title.Text = "Complaint";

    //    DataTable dtOrderMonitoring = new DataTable();
    //    con.Open();
    //  //  SqlCommand cmd = new SqlCommand("select count(*) as cnt from complaint where dealername='"+TextBox1.Text +"' group by bdate", con);
    //    SqlCommand cmd = new SqlCommand("select dealername,count(dealername) as cnt from complaint  group by dealername", con);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    da.Fill(dtOrderMonitoring);

    //    dtOrderMonitoring.AcceptChanges();

    //    int n = dtOrderMonitoring.Rows.Count;

    //    string[] labels = new string[n];
    //    double[] xAxis = new double[n];
    //    double[] Yaxis = new double[n];

    //    for (int counter = 0; counter < n; counter++)
    //    {
    //        labels[counter] = dtOrderMonitoring.Rows[counter]["dealername"].ToString();
    //        xAxis[counter] = double.Parse(dtOrderMonitoring.Rows[counter]["cnt"].ToString());

    //    }

    //    BarItem obarItem;
    //    obarItem = myPane.AddBar("Complaints", xAxis, null, Color.FromArgb(132, 33, 99));

      
    //    obarItem.Bar.Fill = new Fill(Color.Red, Color.White, Color.Red, 0f);

      
    //    //sdf
                       
    //   myPane.BarSettings.Type = BarType.Cluster;
    //    // Set the XAxis labels
    //   myPane.BarSettings.Base = BarBase.Y;
    //    myPane.YAxis.Scale.TextLabels = labels;
    //    // Set the YAxis to Text type
    //    myPane.YAxis.Type = AxisType.Text;
    //    // Draw the X tics at the labels
    //    myPane.YAxis.MajorTic.IsBetweenLabels = false;

    //    // Fill the axis background with a color gradient
    //    myPane.Chart.Fill = new Fill(Color.White, Color.FromArgb(255, 255, 166), 45.0F);

    //    masterPane.AxisChange(g);
    //    con.Close();
    //}
}
