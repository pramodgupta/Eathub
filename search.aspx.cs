using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using System.Data;


public partial class search : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        string searchtext = null;

        if (Session["searcht"] != null)
        {
            searchtext = Session["searcht"].ToString();
           
            ressearch.search s1 = new ressearch.search();
            ArrayList a = new ArrayList(s1.searchresults(searchtext));
            ArrayList b = new ArrayList();
            b = (ArrayList)a;

            

                dis.Text = "Search Results for :  " + searchtext;
                string[,] data = new string[100, 10];
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
                    data[iterator, 7] = row[7];
                    data[iterator, 8] = row[8];
                    data[iterator, 9] = row[9];
                    
                    iterator++;
                }

                DataTable newsDataTable = new DataTable();

                // add some columns to our datatable
                newsDataTable.Columns.Add("restaurant_name");
                newsDataTable.Columns.Add("contact_no");
                newsDataTable.Columns.Add("street");
                newsDataTable.Columns.Add("city");
                newsDataTable.Columns.Add("zipcode");
                newsDataTable.Columns.Add("logopath");
                newsDataTable.Columns.Add("restaurant_category");
                newsDataTable.Columns.Add("minamount");
                newsDataTable.Columns.Add("deliverytimings");
                newsDataTable.Columns.Add("email");
            
                // adding new rows
                for (int i = 0; i < iterator; i++)
                {
                    DataRow newsDataRow = newsDataTable.NewRow();
                    newsDataRow["restaurant_name"] = data[i, 0];
                    newsDataRow["contact_no"] = data[i, 1];
                    newsDataRow["street"] = data[i, 2];
                    newsDataRow["city"] = data[i, 3];
                    newsDataRow["zipcode"] = data[i, 4];
                    newsDataRow["logopath"] = data[i, 5];
                    newsDataRow["restaurant_category"] = data[i, 6];
                    newsDataRow["minamount"] = data[i, 7];
                    newsDataRow["deliverytimings"] = data[i, 8];
                    newsDataRow["email"] = data[i, 9];
                    newsDataTable.Rows.Add(newsDataRow);
                }

                // bind our datatable to our repeater
                searchrepeat.DataSource = newsDataTable;
                searchrepeat.DataBind();
                if (iterator != 0)
                {
            }
            else {
                dis.Text = "No Results for:  " + searchtext; 
            }
        }
        else {
            dis.Text = "no results";
        }
    }
    protected void searchrepeat_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        
    }
}