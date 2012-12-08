using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;

public partial class testing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        string resid = Request.QueryString["id"];
        int id = Convert.ToInt32(resid);
       ressearch.search s1 = new ressearch.search();
       ArrayList a = new ArrayList(s1.itemretrieve(id));
       ArrayList c = new ArrayList();
       ArrayList b = new ArrayList();

       if (Session["menulist"] != null)
       {
            c = (ArrayList)(Session["menulist"]);
       }
             
       
       b = (ArrayList)a;

       foreach (string ss in b)
       {

           c.Add(ss);

       }
       Session["menulist"] = c;


       if (!IsPostBack)
       {
           string prevPage = Request.UrlReferrer.ToString();
           Response.Redirect(prevPage);
       }
       

    }
}