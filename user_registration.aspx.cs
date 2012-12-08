using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Master.DataFromPageLabelControl.Text = TextToShowInMasterPage.Text;

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void register_Click(object sender, EventArgs e)
    {
        loginwebservice.login s1 = new loginwebservice.login();
        int a = s1.user_registration(name.Text, email.Text, password.Text, contactno.Text, zipcode.Text);

        if (a == 1)
        {
            Label1.Text = "Registration successful";
            Response.Redirect("login.aspx");
        }
        else if (a == -1)
        {
            Label1.Text = "Email already exists";
        }
        else{
             Label1.Text = "Registration failure";
        }
      }
}