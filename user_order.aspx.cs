using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;


public partial class user_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string emailid = "";
        if (Session["main_user"] != null)
        {
            emailid = Session["main_user"].ToString();
        }
       
        order_details.order r = new order_details.order();
            
        ArrayList b = new ArrayList(r.user_order(emailid));
        ArrayList c = new ArrayList();
        c = (ArrayList)b;

        string[,] data = new string[100, 6];

        int iterator = 0;

        foreach (string d in c)
        {

            string[] row = d.Split('#');

            data[iterator, 0] = row[0];

            data[iterator, 1] = row[1];

            data[iterator, 2] = row[2];

            data[iterator, 3] = row[3];

            data[iterator, 4] = row[4];
                

            iterator++;

        }

        DataTable newsDataTable = new DataTable();

        // add some columns to our datatable
       
        newsDataTable.Columns.Add("res_id");

        newsDataTable.Columns.Add("date");

        newsDataTable.Columns.Add("price");
        newsDataTable.Columns.Add("id");
        


      


        // adding new rows

        for (int i = 0; i < iterator; i++)
        {

            DataRow newsDataRow = newsDataTable.NewRow();

            newsDataRow["res_id"] = data[i, 0];

            newsDataRow["price"] = data[i, 2];

            newsDataRow["date"] = data[i, 3];

            newsDataRow["id"] = data[i, 4];

   


            newsDataTable.Rows.Add(newsDataRow);

        }



        // bind our datatable to our repeater

        details.DataSource = newsDataTable;

        details.DataBind();
    }
}