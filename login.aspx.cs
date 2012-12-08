using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    public void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        loginwebservice.login s1 = new loginwebservice.login(); 
        int a = s1.user_login_check(username.Text,password.Text,0);
        string user_id = username.Text;

        if (a == 1)
        {
           // Label1.Text = "login successful";
            Session["main_user"] = user_id;
            Response.Redirect("user_profile.aspx");

        }
        else{
            Label1.Visible = true;
            Label1.Text = "login failed";
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string user_id = username.Text;
        loginwebservice.login s1 = new loginwebservice.login();
        int a = s1.user_login_check(username.Text, password.Text,1);

        if (a == 1)
        {
            Session["main_res"] = user_id;
            Label1.Text = "login successful";
            Response.Redirect("restaurant_profile.aspx");
        }
        else
        {
            Label1.Text = "login failed";
        }

    }
}