using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class category_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_Click(object sender, EventArgs e)
    {
        restaurantmenus.restaurant_menus r1 = new restaurantmenus.restaurant_menus();
          
        
        string catname = cat_name.Text;
        string cattype = cat_type.Text;
        string main_res =  Session["main_res"].ToString();
        string path = "C:\\Users\\pramod\\Desktop\\ase project\\FIRST INCREMENT\\eathub_webservice\\images\\" + main_res + "\\category\\";


        if (catimg.HasFile)
        {
            try
            {
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                  

                }


                catimg.SaveAs(path + catimg.FileName);
                path = "http://localhost:51966/eathub_webservice/images/" + main_res + "/category/" + catimg.FileName;
               
            }
            catch
            {
              //  Label1.Visible = true;
               // Label1.Text = "Unable to save file";

            }
        }



        int a = r1.category_add(main_res, catname, cattype, path);

        if (a == 1)
        {
            status.Visible = true;
            status.Text = "Category created successfully";

            cat_name.Text = null;
            cat_type.Text = null;

        }
        else {
            status.Visible = true;
            status.Text = "Error";
        }
            

    }
}