using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

public partial class category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        restaurantmenus.restaurant_menus r1 = new restaurantmenus.restaurant_menus();
       string main_res = Session["main_res"].ToString();

        ArrayList a = new ArrayList(r1.category_retrieve(main_res));
        ArrayList b = new ArrayList();
        b = (ArrayList)a;

        string[,] data = new string[100,3];
        int iterator = 0;

        foreach (string c in b)
        {
            string[] row = c.Split('^');
            data[iterator,0] = row[0];
            data[iterator,1] = row[1];
            data[iterator, 2] = row[2];
            iterator++;
        }

        DataTable newsDataTable = new DataTable();

        // add some columns to our datatable
        newsDataTable.Columns.Add("categoryname");
        newsDataTable.Columns.Add("categorytype");
        newsDataTable.Columns.Add("categoryimg");

        // adding new rows
        for (int i = 0; i < iterator; i++)
        {
            DataRow newsDataRow = newsDataTable.NewRow();
            newsDataRow["categoryname"] = data[i,0];
            newsDataRow["categorytype"] = data[i,1];
            newsDataRow["categoryimg"] = data[i, 2];
            newsDataTable.Rows.Add(newsDataRow);
        }

        // bind our datatable to our repeater
        c11.DataSource = newsDataTable;
        c11.DataBind();
    }
}