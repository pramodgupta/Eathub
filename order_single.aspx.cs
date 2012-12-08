using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;


public partial class order_single : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);

        if (id == null)
        {
            id = 1;
        }
        order_details.order r = new order_details.order();
        string res = r.order_details(id);

        string[] a = res.Split('^');

        string details = a[2];

        string price = a[3];

        string street = a[5];

        string city = a[6];

        string state = a[7];

        string phone = a[8];

        price1.Text = price;

        string[] each_details = details.Split('&');

        int len = each_details.Length;

        DataTable newsDataTable = new DataTable();

        // add some columns to our datatable
        newsDataTable.Columns.Add("item_name");
        newsDataTable.Columns.Add("price");

        for (int i = 0; i < len - 1; i++)
        {
            string[] each_single = each_details[i].Split(',');

            DataRow newsDataRow = newsDataTable.NewRow();
            newsDataRow["item_name"] = each_single[0];
            newsDataRow["price"] = each_single[1];

            newsDataTable.Rows.Add(newsDataRow);

        }

        //Binding data to repeater

        cart.DataSource = newsDataTable;
        cart.DataBind();

      /*  city1.Text = city;
        street1.Text = street;
        state1.Text = state;
        phone1.Text = phone;
       * /*/



    }
}