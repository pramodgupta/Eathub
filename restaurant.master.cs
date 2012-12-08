using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class restaurant : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string main_res = "";
       if (Session["main_res"] == null)
        {
           // Response.Redirect("login.aspx");
        }
        else {

             main_res = Session["main_res"].ToString();
        }
       

        loginwebservice.login s1 = new loginwebservice.login();
        string[] b = new string[10];
        b = s1.restaurant_profile_retrieve(main_res);

        string res_name = b[0];
        main_name.Text = res_name;
          


    }

    protected void search_Click(object sender, EventArgs e)
    {
        string searchtext11 = search_input.Text;
        Session["searcht"] = searchtext11;

        Response.Redirect("search.aspx");
    }
}
