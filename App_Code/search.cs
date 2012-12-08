using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for search
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class search : System.Web.Services.WebService {

    public search () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public ArrayList searchresults(string searchres) {

        ArrayList b = new ArrayList();
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * from restaurant_details where city LIKE '%" + searchres + "%' OR zipcode LIKE '%" + searchres + "%' OR restaurant_name LIKE '%" + searchres + "%' OR street LIKE '%" + searchres + "%' OR email IN (SELECT userid from item_menus where item_name LIKE '%" + searchres + "%') ", conn);

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
            cmd.Dispose();

            return b;
            conn.Close();

        }
        catch (Exception e)
        {
            return null;
        }
    }

    [WebMethod]
    public ArrayList itemretrieve(int id)
    {

        ArrayList b = new ArrayList();
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * from item_menus where item_id = "+ id, conn);

            SqlDataReader reader = cmd.ExecuteReader();
            string a = "no rows";
            while (reader.Read())
            {

                a = reader["item_name"].ToString();
                a = a + '^';
                a = a + reader["item_price"].ToString();
                a = a + '^';
                a = a + reader["userid"].ToString();
                b.Add(a);
            }
            cmd.Dispose();
            return b;
            conn.Close();

        }
        catch (Exception e)
        {
            return null;
        }
    }
    
}
