using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class restaurant_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string[] a = new string[11];
        a[0] = "Asian";
        a[1] = "Chinese";
        a[2] = "American";
        a[3] = "French";
        a[4] = "Greek";
        a[5] = "Italian";
        a[6] = "Mexican";
        a[7] = "Japanese";
        a[8] = "Spanish";
        a[9] = "Steak Houses";
        a[10] = "Thai";

        for(int i=0; i<11; i++)
        {
            ListItem d = new ListItem();
            d.Value = a[i];
            d.Text = a[i];
                    cat.Items.Add(d);

        }



    }
    protected void register_Click(object sender, EventArgs e)
    {

        loginwebservice.login s1 = new loginwebservice.login();
        string emailid = email.Text;
        string logopath = null;
        string path = "C:\\Users\\pramod\\Desktop\\ase project\\FIRST INCREMENT\\eathub_webservice\\images\\" + emailid + "\\";
        if (logo.HasFile)
        {
            try
            {
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                    Label1.Text = "path created";

                }


                logo.SaveAs(path + logo.FileName);
                logopath = "http://localhost:55230/eathub_webservice/images/" + emailid + "/" + logo.FileName;
               

            }
            catch
            {
                Label1.Visible = true;
                Label1.Text = "Unable to save file";

            }
        }
      
        int a = s1.restaurant_registrations(name.Text, email.Text, password.Text, contactno.Text, street.Text, city.Text, zipcode.Text, minamount.Text, deliverytiming.Text, logopath, cat.Text);
       
        if (a == 1)
        {
            Label1.Text = "Registration successful";
            Response.Redirect("login.aspx");
        }
        else if (a == -1)
        {
            Label1.Visible = true;
            Label1.Text = "Email already exists";
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Registration failure";
        }
    }
}