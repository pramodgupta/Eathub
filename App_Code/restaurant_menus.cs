using System;
using System.Collections.Generic;

using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

/// <summary>
/// Summary description for restaurant_menus
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class restaurant_menus : System.Web.Services.WebService
{

    public restaurant_menus()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int category_add(string user_id, string cat_name, string cat_type, string img)
    {
        try
        {
            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into restaurant_categories (userid, cat_name, cat_type, cat_img) values('" + user_id + "','" + cat_name + "','" + cat_type +  "','" + img + "')", conn);
            cmd.ExecuteNonQuery();

            cmd.Dispose();
            conn.Close();

            return 1;
        }
        catch (Exception e)
        {
            return 0;
        }

    }

    [WebMethod]
    public ArrayList category_retrieve(string user_id)
    {
       ArrayList b = new ArrayList();
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

            conn.Open();
            
            SqlCommand cmd2 = new SqlCommand("select * from restaurant_categories where userid = '" + user_id + "'", conn);

            SqlDataReader reader = cmd2.ExecuteReader();

            int i = 0;
            while(reader.Read())
            {
                string a ;
                a = reader["cat_name"].ToString();
                a = a + '^';
                a = a + reader["cat_type"].ToString();
                a = a + '^';
                a = a + reader["cat_img"].ToString();
                a = a + '^';
                a = a + reader["userid"].ToString();
                b.Add(a);
                
            }
           
            return b;
        }
        catch (Exception e)
        {
            b.Add("exception");
            return b;
        }
    }

    [WebMethod]
    public ArrayList menu_retrieve(string user_id)
    {
        ArrayList b = new ArrayList();

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("select * from item_menus where userid = '" + user_id + "'", conn);

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string a;
                a = reader["item_name"].ToString();
                a = a + '^';
                a = a + reader["item_price"].ToString();
                a = a + '^';
                a = a + reader["item_category"].ToString();
                a = a + '^';
                a = a + reader["item_type"].ToString();
                a = a + '^';
                a = a + reader["image_path"].ToString();
                a = a + '^';
                a = a + reader["item_description"].ToString();
                a = a + '^';
                a = a + reader["item_id"].ToString();
                b.Add(a);
            }
            return b;
            cmd.Dispose();
            conn.Close();

        }
        catch (Exception e)
        {

            b.Add("exception");
            return b;
        }
    }

    [WebMethod]
    public ArrayList menu_retrieve_update(string user_id, int id)
    {
        ArrayList b = new ArrayList();

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("select * from item_menus where userid = '" + user_id + "' and item_id = " + id  , conn);

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string a;
                a = reader["item_name"].ToString();
                a = a + '^';
                a = a + reader["item_price"].ToString();
                a = a + '^';
                a = a + reader["item_category"].ToString();
                a = a + '^';
                a = a + reader["item_type"].ToString();
                a = a + '^';
                a = a + reader["image_path"].ToString();
                a = a + '^';
                a = a + reader["item_description"].ToString();
                a = a + '^';
                a = a + reader["item_id"].ToString();
                b.Add(a);
            }
            return b;
            cmd.Dispose();
            conn.Close();

        }
        catch (Exception e)
        {

            b.Add("exception");
            return b;
        }
    }

    [WebMethod]
    public int menu_update_update(int id, string name, string price, string category, string cattype,string img, string desc )
    {
       
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("update item_menus set item_name= '" +name+ "', item_price = '"+price+"',item_category ='"+category + "',item_type='"+cattype+"',image_path = '"+img+"',item_description = '"+desc+"' where item_id = " + id , conn);
            cmd.ExecuteNonQuery();
            
            cmd.Dispose();
            conn.Close();
            return 1;
        }
        catch (Exception e)
        {

             return 0;
        }
    }

    [WebMethod]
    public int item_add(string user_id, string it_name, string it_price, string it_category, string it_type, string img_path, string it_desc)
    {
        try
        {
            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd1 = new SqlCommand("insert into item_menus values('" + user_id + "','" + it_name + "','" + it_price + "','" + it_category + "','" + it_type + "','" + img_path + "','" + it_desc + "')", conn);
            cmd1.ExecuteNonQuery();

            cmd1.Dispose();
            conn.Close();
            return 1;
        }
        catch (Exception e)
        {
            return 0;
        }
    }

    [WebMethod]
    public ArrayList menu_category_retrieve(string email, string category)
    {
        ArrayList b = new ArrayList();
        try
        {
            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            category = category.Replace("%20", " ");

            SqlCommand cmd1 = new SqlCommand("select * from item_menus where userid ='" + email +"' and item_category ='"+category +"'", conn);
            SqlDataReader reader = cmd1.ExecuteReader();
           


            while (reader.Read())
            {
                string a;
                a = reader["item_name"].ToString();
                a = a + '^';
                a = a + reader["item_price"].ToString();
                a = a + '^';
                a = a + reader["item_category"].ToString();
                a = a + '^';
                a = a + reader["item_type"].ToString();
                a = a + '^';
                a = a + reader["image_path"].ToString();
                a = a + '^';
                a = a + reader["item_description"].ToString();
                a = a + '^';
                a = a + reader["item_id"].ToString();
                b.Add(a);
            }
            return b;
        }
        catch (Exception e)
        {
            string a = "exception";
            b.Add(a);
            return b;
        }
    
    }

    [WebMethod]
    public ArrayList res_category(string category)
    {
        ArrayList b = new ArrayList();
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * from restaurant_details where restaurant_category like '%" + category + "%'", conn);

            
            SqlDataReader reader = cmd.ExecuteReader();
            string a = "no rows";
            while (reader.Read())
            {

                a = reader["restaurant_name"].ToString();
                a = a + '^';
                a = a + reader["contact_no"].ToString();
                a = a + '^';
                a = a + reader["street"].ToString();
                a = a + '^';
                a = a + reader["city"].ToString();
                a = a + '^';
                a = a + reader["zipcode"].ToString();
                a = a + '^';
                a = a + reader["logopath"].ToString();
                a = a + '^';
                a = a + reader["restaurant_category"].ToString();
                a = a + '^';
                a = a + reader["minamount"].ToString();
                a = a + '^';
                a = a + reader["deliverytimings"].ToString();
                a = a + '^';
                a = a + reader["email"].ToString();
                b.Add(a);
                
            }
           

            return b;
            conn.Close();

        }
        catch (Exception e)
        {
            return b;
        }
    }

}