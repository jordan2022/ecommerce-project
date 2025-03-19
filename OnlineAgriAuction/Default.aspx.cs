using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Configuration config = WebConfigurationManager.OpenWebConfiguration("~/");
        //Get the required section of the web.config file by using configuration object.
        PagesSection pages = (PagesSection)config.GetSection("system.web/pages");
        //Update the new values.
        pages.Theme = "SSheet";
        //save the changes by using Save() method of configuration object.
        if (!pages.SectionInformation.IsLocked)
        {
            config.Save();
           // Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Could not save configuration')</script>");
        }
    }
}
