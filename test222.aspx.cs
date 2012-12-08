using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class test222 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["searcht"] != null)
        {
            Label1.Text = Session["searcht"].ToString();
        }
        else {
            Label1.Text = "nothing inside";
        }
    }
}