using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Text.RegularExpressions;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

public partial class menu_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

        restaurantmenus.restaurant_menus r1 = new restaurantmenus.restaurant_menus();
        string emailid = Session["main_res"].ToString();

        ArrayList a = new ArrayList(r1.category_retrieve(emailid));
        ArrayList b = new ArrayList();
        b.Clear();
        b = (ArrayList)a;

        
        foreach (string c in b)
        {
            string[] row = c.Split('^');
            // Adds the category name dropdown
            ListItem f = new ListItem();
            f.Value = row[0];
            f.Text = row[0];
            category.Items.Add(f);
           // Adds the category type dropdown
            ListItem g = new ListItem();
            g.Value = row[1];
            g.Text = row[1];
            cattype.Items.Add(g);
            
        }

       
                 
    }
           
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string emailid = Session["main_res"].ToString();
        string path = "C:\\Users\\pramod\\Desktop\\ase project\\FIRST INCREMENT\\eathub_webservice\\images\\" + emailid + "\\";

       
        if (FileUpload1.HasFile)
        {
            try
            {
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                    Label1.Text = "path created";

                }

                               
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                Label1.Visible = true;
                Label1.Text = "File uploaded";
                path = "http://localhost:51966/eathub_webservice/images/" + emailid + "/"+ FileUpload1.FileName;
                Label1.Text = path;

            }
            catch
            {
                Label1.Visible = true;
                Label1.Text = "Unable to save file";

            }
        }

        restaurantmenus.restaurant_menus r2 = new restaurantmenus.restaurant_menus();
        int status = r2.item_add(emailid, name.Text, price.Text, category.Text, cattype.Text, path, desc.Text);

       if (status == 1)
       {
           Label1.Visible = true;
          Label1.Text = "Item Added Successfully";

       }
       else
       {
           Label1.Text = "try again";
       }
    }
}