using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            loginwebservice.login s1 = new loginwebservice.login();
            string[] b = new string[10];
            string main_user = "";
            if (Session["main_user"] != null)
            {
                main_user = Session["main_user"].ToString();
            }
           
            b = s1.user_profile_retrieve(main_user);

      if (!IsPostBack)
        {
            name.Text = b[0];
            contactno.Text = b[2];
            zipcode.Text = b[1];
        }
    }
    protected void update_Click(object sender, EventArgs e)
    {
        loginwebservice.login s1 = new loginwebservice.login();
        string nam = Server.HtmlEncode(name.Text);
        string main_user = Session["main_user"].ToString();
        int z = Convert.ToInt32(zipcode.Text);
        int z1 = Convert.ToInt32(contactno.Text);

        int a = s1.user_profile_update(nam, main_user,z, z1);

        if (a == 1)
        {
            Server.Transfer("user_profile.aspx");
        }
        else
        {
            status.Visible = true;
            status.Text = "Error";
        }

    }
    
}