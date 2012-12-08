using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

public partial class restaurant_single : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string param1 = "";
        param1 = Request.QueryString["email"];
        
        try
        {
           
            /*param1 = "gupta@gmail.com";*/

            loginwebservice.login l1 = new loginwebservice.login();
            string[] a = l1.restaurant_profile_retrieve(param1);


            string img = a[8];
            name.Text = a[0];
            contact.Text = a[2];
            street.Text = a[3];
            city.Text = a[4];
            zipcode.Text = a[5];
            minamount.Text = a[6];
            category1.Text = a[9];
            timings.Text = a[7];
            gimg.Text = "<a class='details' data-fancybox-type='iframe' href='google.aspx?address=" +street.Text + "," + city.Text + "," + zipcode.Text + "'><img src='images/google-map.png'></a>";


            restaurantmenus.restaurant_menus r = new restaurantmenus.restaurant_menus();
            ArrayList b = new ArrayList(r.category_retrieve(param1));
            ArrayList c = new ArrayList();
            c = (ArrayList)b;

            string[,] data = new string[100, 4];

            int iterator = 0;

            foreach (string d in c)
            {

                string[] row = d.Split('^');

                data[iterator, 0] = row[0];

                data[iterator, 1] = row[1];

                data[iterator, 2] = row[2];

                data[iterator, 3] = row[3];

                iterator++;

            }

            DataTable newsDataTable = new DataTable();

            // add some columns to our datatable

            newsDataTable.Columns.Add("cat_name");

            newsDataTable.Columns.Add("cat_type");

            newsDataTable.Columns.Add("cat_img");

            newsDataTable.Columns.Add("id");



            // adding new rows

            for (int i = 0; i < iterator; i++)
            {

                DataRow newsDataRow = newsDataTable.NewRow();

                newsDataRow["cat_name"] = data[i, 0];

                newsDataRow["cat_type"] = data[i, 1];

                newsDataRow["cat_img"] = data[i, 2];

                newsDataRow["id"] = data[i, 3];


                newsDataTable.Rows.Add(newsDataRow);

            }

            Label1.Text = "<a title='Send Mail to Restaurant' href='mailto:" + param1 + "'><img src ='images/email-to.png'></a>";

            // bind our datatable to our repeater

            category.DataSource = newsDataTable;

            category.DataBind();
            
          // string email = "gupta@gmail.com";

            commentsweb.comments r1 = new commentsweb.comments();
            ArrayList p = new ArrayList(r1.retrieve_comments(param1));
            ArrayList q = new ArrayList();
            q = (ArrayList)p;

            string[,] data1 = new string[100, 3];

            int iterator1 = 0;

            string abcd= "";
            foreach (string d in q)
            {

                string[] row = d.Split('^');

                data1[iterator1, 0] = row[0];

                data1[iterator1, 1] = row[1];

                data1[iterator1, 2] = abcd;

                abcd = "children";

                iterator1++;

            }

            DataTable newsDataTable1 = new DataTable();

            // add some columns to our datatable

            newsDataTable1.Columns.Add("author");

            newsDataTable1.Columns.Add("comment");

            newsDataTable1.Columns.Add("abc");


            // adding new rows

            for (int i = 0; i < iterator1; i++)
            {

                DataRow newsDataRow1 = newsDataTable1.NewRow();

                newsDataRow1["author"] = data1[i, 0];

                newsDataRow1["comment"] = data1[i, 1];

                newsDataRow1["abc"] = data1[i, 2];

                newsDataTable1.Rows.Add(newsDataRow1);

            }



            // bind our datatable to our repeater

            commentsec.DataSource = newsDataTable1;

            commentsec.DataBind();

        }
        catch (Exception e1)
        {
            error.Visible = true;
            error.Text = "error";
            int abc = 1;
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {

    }
   protected void comment_bt_Click(object sender, EventArgs e)
    {
        commentsweb.comments r = new commentsweb.comments();

        string name = commentname.Text;
        string email = commentemail.Text;
        string comment = commentmsg.InnerText;
         string param1 = Request.QueryString["email"];
           
           
            int x = r.insert_comments(param1, name, comment);
            if (x == 1)
            {
                string redirect = "restaurant_single.aspx?email=" + param1;
                Response.Redirect(redirect);

            }
            else {

                comment_error.Visible = true;
                comment_error.Text = "Seems to be an Error. Please try again later";
            }
    }

   protected void tablebooking_Click(object sender, EventArgs e)
   {
       string param1 = Request.QueryString["email"];
       Response.Redirect("table_booking1.aspx?email=" + param1);
   }
}