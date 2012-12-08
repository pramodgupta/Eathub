using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class restaurant_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loginwebservice.login s1 = new loginwebservice.login();
        string[] b = new string[10];
        string emailid = Session["main_res"].ToString();
        b = s1.restaurant_profile_retrieve(emailid);

        name.Text = b[0];
        contact.Text = b[2];
        zipcode.Text = b[5];
        email.Text = b[1];
        street.Text = b[3];
        city.Text = b[4];
        minamount.Text = b[6];
        timings.Text = b[7];
        category.Text = b[9];


    }
}