using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.Security;

public partial class main : System.Web.UI.MasterPage
{
    public void DisplayDataFromPage(string message)
    {
        //Label1.Text = message;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void search_bt_Click(object sender, EventArgs e)
    {
        string searchtext11 = search.Text;
        Session["searcht"] = searchtext11;
        
        Response.Redirect("search.aspx");
    }
}
