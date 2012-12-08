using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class menu_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string main_res = Session["main_res"].ToString();
        //string main_res = "gupta@gmail.com";
        restaurantmenus.restaurant_menus r = new restaurantmenus.restaurant_menus();
       

        ArrayList a1 = new ArrayList(r.category_retrieve(main_res));
        ArrayList b1 = new ArrayList();
        b1.Clear();
        b1= (ArrayList)a1;


        foreach (string c in b1)
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





        restaurantmenus.restaurant_menus r1 = new restaurantmenus.restaurant_menus();
        int id = Convert.ToInt32(Request.QueryString["id"]);
        if(id == null)
        {
          id = 0;
        }
        
        ArrayList a = new ArrayList(r1.menu_retrieve_update(main_res,id));
        ArrayList b = new ArrayList();
        b = (ArrayList)a;

        string[,] data = new string[100, 7];
        int iterator = 0;

        foreach (string c in b)
        {
            string[] row = c.Split('^');
            data[iterator, 0] = row[0];
            data[iterator, 1] = row[1];
            data[iterator, 2] = row[2];
            data[iterator, 3] = row[3];
            data[iterator, 4] = row[4];
            data[iterator, 5] = row[5];
            data[iterator, 6] = row[6];
            iterator++;
        }

        if (!IsPostBack)
        {
            name.Text = data[0,0];
            price.Text = data[0,1];
            category.Text = data[0,2];
            cattype.Text = data[0,3];
            desc.Text = data[0,5];
        }

    }


    protected void update_Click(object sender, EventArgs e)
    {
        restaurantmenus.restaurant_menus r1 = new restaurantmenus.restaurant_menus();

        int x = Convert.ToInt32(Request.QueryString["id"]);
        string img = "";
        int y = r1.menu_update_update(x,name.Text,price.Text,category.Text,cattype.Text,img,desc.Text);
        Response.Redirect("restaurant_menus.aspx");
    }
}