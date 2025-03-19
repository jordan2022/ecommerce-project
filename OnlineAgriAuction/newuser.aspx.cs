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


public partial class newuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string utype = DropDownList1.Text;
        if (utype == "Customer")
        {
            TextBox5.Enabled = false;

        }
        else
        {
            TextBox5.Enabled = true;

        }
        userid();
    }
    int uid = 1;
    public void userid()
    {
        SqlConnection tempConnection = createSqlConnection();
        tempConnection.Open();
        string query1 = "select max(userid) from register ";
        SqlCommand cmd1 = new SqlCommand(query1, tempConnection);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            try
            {
                uid = Convert.ToInt32(dr[0].ToString()) + 1;
            }
            catch (Exception ex)
            { 
            
            }
           
        }
        Label2.Text = uid.ToString();

        closeConnection(tempConnection);
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    public void MAIL()
    {
        SqlConnection con = new SqlConnection("server=.;integrated security=true;database=agrimarket");

        try
        {
            con.Open();
          SqlCommand   cmdd = new SqlCommand("delete from mailverify", con);
            cmdd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {

        }
        Random r = new Random();
        int rnd = r.Next(2000000);
        // txtTransid.Text = rnd.ToString();
        con.Close();
        con.Open();
      SqlCommand   cmd = new SqlCommand("insert into mailverify values('" + TextBox8.Text + "','" + rnd.ToString() + "','" + DateTime.Now.ToString() + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        System.Net.NetworkCredential cred = new System.Net.NetworkCredential("hasidata@gmail.com", "projecttoppers");

        string em = TextBox8.Text;


            mail.To.Add(em);
            mail.Subject = "Confirmation ID From E-auction ";

            mail.From = new System.Net.Mail.MailAddress("hasidata@gmail.com");
            mail.IsBodyHtml = true; // Aceptamos HTML
            mail.Body = "YOUR DETAILS REGISTERED SUCCESSFULLY...The verification ID is: '" + rnd.ToString() + "'. Enter the ID and Confirm ur Email ID!!!";
            System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtp.gmail.com");
            smtp.UseDefaultCredentials = false;
            smtp.EnableSsl = true;
            smtp.Credentials = cred; //asignamos la credencial
            try
            {
                smtp.Send(mail);
        
           Response.Write("<script>alert('Your Verification ID Sent to your mail id..')</script>");
            }
            catch (Exception ex)
            { }
            //MessageBox.Show("Your Recovery ID Sent to your mail id..");
            // con.Close();
            TextBox10.Visible = true;

            Button2.Visible = true;

       
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if ((TextBox1.Text == "") || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == ""  || TextBox6.Text == "" || TextBox7.Text == "" || TextBox8.Text == "")
        {

        }
        else
        {
            int rows = customerreg(DropDownList1.Text, Label2.Text, TextBox1.Text, TextBox2.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, DateTime.Now.ToString());
            if (rows > 0)
            {
                
                
                //clear();
                //Response.Redirect("login.aspx");
                Session["uid"] = Label2.Text;
                Session["unam"] = TextBox1.Text;
                if (DropDownList1.Text == "Farmer")
                {
                    Response.Write("<script>alert('farmer Details Registered Successfully.')</script>");
                    MAIL();
                    //Response.Redirect("login.aspx");
                    TextBox10.Visible = true;
                    Button2.Visible = true;
                }
                else
                {
                    Response.Write("<script>alert('Customer Details Registered Successfully.')</script>");
                    Response.Redirect("login.aspx");
                    TextBox10.Visible = false;
                    Button2.Visible = false;
                }

            }
        }

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


   

    public int customerreg(string utype,string uid,string cname, string password, string caddress, string paddress, string pincode, string contactno, string emailid,string ddate)
    {
        int rows2 = 0;
        SqlConnection tempConnection = createSqlConnection();
        tempConnection.Open();
        string query1 = "insert into register values('" + utype + "','" + uid + "','" + cname + "','" + password + "','" + caddress + "','" + paddress + "','" + pincode + "','" + contactno + "','" + emailid + "','" + ddate + "')";
        SqlCommand cmd1 = new SqlCommand(query1, tempConnection);
        rows2 = cmd1.ExecuteNonQuery();
        closeConnection(tempConnection);
        return rows2;


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=.;Initial Catalog=agrimarket;Integrated Security=True");
        SqlCommand cmd;
        con1.Open();
        cmd = new SqlCommand("select * from mailverify where rid='" + TextBox10.Text + "' and userid='" + TextBox8.Text + "'", con1);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
         Response.Write("<script>alert('Verification successful....!!!!!')</script>");


            Response.Redirect("Login.aspx");
        }
        else
        {
            // Response.Write("<script>alert('Recovered Failed..')</script>");
        
            Response.Write("<script>alert('Verification Failed....!!!!!')</script>");

        }
        con1.Close();
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string utype = DropDownList1.Text;
        if (utype == "Customer")
        {
            TextBox5.Enabled = false;

        }
        else
        {
            TextBox5.Enabled = true;

        }
    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }
}
