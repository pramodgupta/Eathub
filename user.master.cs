using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string main_user = "";
    
        if (Session["main_user"] != null)
        {
           
            main_user = Session["main_user"].ToString();   
        }
       
      
        loginwebservice.login s1 = new loginwebservice.login();
        string[] b = new string[10];
        b = s1.user_profile_retrieve(main_user);

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
