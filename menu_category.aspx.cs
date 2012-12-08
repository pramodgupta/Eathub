using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

public partial class menu_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string email = Request.QueryString["email"];
        string cat = Request.QueryString["cat"]; 
        restaurantmenus.restaurant_menus r1 = new restaurantmenus.restaurant_menus();

        goback.Text = "<a href='restaurant_single.aspx?email=" + email + "' class='green'> Go Back</a>";
             
        ArrayList a = new ArrayList(r1.menu_category_retrieve(email,cat));
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

        DataTable newsDataTable = new DataTable();

        // add some columns to our datatable
        newsDataTable.Columns.Add("itemname");
        newsDataTable.Columns.Add("itemprice");
        newsDataTable.Columns.Add("itemcategory");
        newsDataTable.Columns.Add("itemtype");
        newsDataTable.Columns.Add("itempath");
        newsDataTable.Columns.Add("itemdesc");
        newsDataTable.Columns.Add("itemid");

        // adding new rows
        for (int i = 0; i < iterator; i++)
        {
            DataRow newsDataRow = newsDataTable.NewRow();
            newsDataRow["itemname"] = data[i, 0];
            newsDataRow["itemprice"] = data[i, 1];
            newsDataRow["itemcategory"] = data[i, 2];
            newsDataRow["itemtype"] = data[i, 3];
            newsDataRow["itempath"] = data[i, 4];
            newsDataRow["itemdesc"] = data[i, 5];
            newsDataRow["itemid"] = data[i, 6];

            newsDataTable.Rows.Add(newsDataRow);
        }

        // bind our datatable to our repeater
        menu1.DataSource = newsDataTable;
        menu1.DataBind();
        

    }
}