using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class restaurant_profile_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loginwebservice.login s1 = new loginwebservice.login();
        string[] b = new string[10];
        string emailid = "gupta@gmail.com";
        b = s1.restaurant_profile_retrieve(emailid);

        if (!IsPostBack)
        {
            name.Text = b[0];
            contactno.Text = b[2];
            zipcode.Text = b[5];
            street.Text = b[3];
            city.Text = b[4];
            minamount.Text = b[6];
            timing.Text = b[7];
            category.Text = b[9];
        }
    }
    protected void register_Click(object sender, EventArgs e)
    {

        loginwebservice.login s1 = new loginwebservice.login();
        string email = "gupta@gmail.com";
      string logopath = null;
        string path = "C:\\Users\\pramod\\Desktop\\ase project\\FIRST INCREMENT\\eathub_webservice\\images\\" + email + "\\";
        if (logo.HasFile)
        {
            try
            {
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                   
                }


                logo.SaveAs(path + logo.FileName);
               
               logopath = "http://localhost:51966/eathub_webservice/images/" + email + "/" + logo.FileName;


            }
            catch
            {
               
            }
        }

        int a = s1.restaurant_profile_update(name.Text, email, contactno.Text, street.Text, city.Text, zipcode.Text, minamount.Text, timing.Text, logopath, category.Text);
        
        if (a == 1)
        {
            Server.Transfer("restaurant_profile.aspx");
        }
        else
        {
            status.Visible = true;
            status.Text = "Error";
        }
    }
}