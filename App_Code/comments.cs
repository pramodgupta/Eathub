using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

/// <summary>
/// Summary description for comments
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class comments : System.Web.Services.WebService {

    public comments () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod]
    public int insert_comments(string emailid, string user_id, string comment)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into comments values('" + emailid + "','" + user_id + "','" + comment + "') ", conn);

            cmd.ExecuteNonQuery();

            cmd.Dispose();

            return 1;
            conn.Close();

        }
        catch (Exception e)
        {
            return 0;
        }
    }

    [WebMethod]
    public ArrayList retrieve_comments(string emailid)
    {
        ArrayList b = new ArrayList();
        string a;

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();


            SqlCommand cmd1 = new SqlCommand("select count(*) from comments where emailid='" + emailid + "'", conn);

            int validation = Convert.ToInt16(cmd1.ExecuteScalar());

            if (validation != 0)
            {

                SqlCommand cmd = new SqlCommand("select * from comments where emailid='" + emailid + "'", conn);
                SqlDataReader reader = cmd.ExecuteReader();


                while (reader.Read())
                {


                    a = reader["user_id"].ToString();
                    a = a + '^';
                    a = a + reader["comment"].ToString();
                    b.Add(a);

                }
            }
            else
            {
                a = "No Comments";
                b.Add(a);
            }
            return b;

        }
        catch (Exception e)
        {

            a = "exception";
            b.Add(a);
            return b;

        }


    }
    
}
