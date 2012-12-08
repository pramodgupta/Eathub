using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class new1 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void search_Click(object sender, EventArgs e)
    {
        string searchtext11 = search_input.Text;
        Session["searcht"] = searchtext11;

        Response.Redirect("search.aspx");
    }

   
}
