using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       /* SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn.Open();
        string emailid = "gupta@gmail.com";
        SqlCommand cmd = new SqlCommand("select * from user_details where email='"+emailid+"'", conn);
        SqlDataReader reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            name.Text = reader["name"].ToString();
            contact.Text = reader["contact_no"].ToString();
            zipcode.Text = reader["zipcode"].ToString();
            email.Text = reader["email"].ToString();
           
        }
        reader.Close();*/

        loginwebservice.login s1 = new loginwebservice.login();
        string[] b = new string[10];
        string main_user = Session["main_user"].ToString();
        b = s1.user_profile_retrieve(main_user);

        name.Text = b[0];
        contact.Text = b[2];
        zipcode.Text = b[1];
        email.Text = b[3];
      


    }
}