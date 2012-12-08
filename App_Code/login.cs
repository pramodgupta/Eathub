using System;
using System.Collections.Generic;

using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>-
/// Summary description for login
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class login : System.Web.Services.WebService {

    public login () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int user_login_check(string email,string password,int type) {
        try
        {

            
            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            //Declare the sql command
            string table = null;
            if (type == 0)
            {
                table = "user_details";
            }
            else
            {
                table = "restaurant_details";
            }

            SqlCommand cmd1 = new SqlCommand("select count(*) from " +table+ " where email = '" + email + "' and password= '" + password + "'", conn);
            int validation = Convert.ToInt16(cmd1.ExecuteScalar());
            if (validation != 0)
            {
                return 1;
            }
            else 
            {
                return 0;
            }
            
            conn.Close();
    
        }
        catch (Exception e)
        {
            return -1;
        }
    }


    [WebMethod]
    public string[] user_profile_retrieve(string emailid)
    {
        string[] a = new string[10];
        try
        {

            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            //Declare the sql command

            SqlCommand cmd1 = new SqlCommand("select * from user_details where email='" + emailid + "'", conn);
            SqlDataReader reader = cmd1.ExecuteReader();
            
           

            while (reader.Read())
            {
               a[0] = reader["name"].ToString();
               a[1] = reader["contact_no"].ToString();
               a[2] = reader["zipcode"].ToString();
               a[3] = reader["email"].ToString();
            }


            cmd1.Dispose();
            conn.Close();
            return a;
        }
        catch (Exception e)
        {
             a[0]= "exception";
             return a;
        }
     }

    [WebMethod]
    public string[] restaurant_profile_retrieve(string emailid)
    {
        string[] a = new string[10];
        try
        {

            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            //Declare the sql command

            SqlCommand cmd1 = new SqlCommand("select * from restaurant_details where email ='" + emailid + "'", conn);
            SqlDataReader reader = cmd1.ExecuteReader();



            while (reader.Read())
            {
                a[0] = reader["restaurant_name"].ToString();
                a[2] = reader["contact_no"].ToString();
                a[3] = reader["street"].ToString();
                a[1] = reader["email"].ToString();
                a[4] = reader["city"].ToString();
                a[5] = reader["zipcode"].ToString();
                a[6] = reader["minamount"].ToString();
                a[7] = reader["deliverytimings"].ToString();
                a[8] = reader["logopath"].ToString();
                a[9] = reader["restaurant_category"].ToString();
                
            }


            cmd1.Dispose();
            conn.Close();
            return a;
        }
        catch (Exception e)
        {
            a[0] = "exception";
            return a;
        }
    }
   
    [WebMethod]
    public int user_profile_update(string name, string email,int contact_no, int zipcode)
    {
        try
        {


            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            //Declare the sql command
            
            SqlCommand cmd1 = new SqlCommand("update user_details set name='"+ name +"' ,  contact_no="+contact_no +" , zipcode="+ zipcode +" where email='"+ email +"'", conn);
            cmd1.ExecuteNonQuery();

            cmd1.Dispose();
            conn.Close();
            return 1;
        }
        catch (Exception e)
        {
            return -1;
        }
    }

    
    [WebMethod]
    public int restaurant_profile_update(string name, string email, string contact_no, string street,string city, string zipcode, string minamount, string deliverytime, string logo, string category)
    {
        try
        {


            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            //Declare the sql command

            SqlCommand cmd1 = new SqlCommand("update restaurant_details set restaurant_name='" + name + "' , contact_no='" + contact_no + "' , street='" + street + "' , city ='" + city + "', zipcode='" + zipcode + "' ,minamount ='" + minamount + "' , deliverytimings='" + deliverytime + "', logopath='" + logo + "', restaurant_category='" + category + "'  where email='" + email + "'", conn);
            cmd1.ExecuteNonQuery();

            cmd1.Dispose();
            conn.Close();
            return 1;
        }
        catch (Exception e)
        {
            return -1;
        }
    }

    [WebMethod]
    public int user_registration(string name, string email, string password, string contact_no, string zipcode)
    {

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            int validation = 0;
            //Declare the sql command
            SqlCommand cmd2 = new SqlCommand("select count(*) from user_details where email='"+email+"'", conn);
             validation = Convert.ToInt16(cmd2.ExecuteScalar());
             if (validation == 0)
             {

                 SqlCommand cmd1 = new SqlCommand("insert into user_details values('" + name + "','" + email + "','" + password + "','" + contact_no + "','" + zipcode + "')", conn);
                 cmd1.ExecuteNonQuery();

                 cmd1.Dispose();
                 return 1;
             }
             else
             {
                 return -1;
             }
             
             cmd2.Dispose();
             conn.Close();
        }
        catch (Exception e) 
        {
            return 0;
        }
    }

    [WebMethod]
    public int restaurant_registrations(string name, string email, string password, string contact_no, string street, string city, string zipcode, string minamount, string deliverytime, string logo, string category)
    {

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO restaurant_details values('" + name + "','" + email + "','" + password + "','" + contact_no + "','" + street + "','" + city + "','" + zipcode + "','" + minamount + "','" + deliverytime + "','" + logo + "','" + category + "')",conn);  
            int a = cmd.ExecuteNonQuery();

            if (a == 1)
            {
                return 1;
            }
            else {
                return -1;
            }
        }
        catch (Exception e)
        {
            return 0;    
        }


    }
}
