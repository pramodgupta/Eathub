using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using InfoSoftGlobal;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

public partial class user_revenue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string main_user = "";
        if (Session["main_user"] != null)
        {
            main_user = Session["main_user"].ToString();
        }
        else
        {
            main_user = "gupta@gmail.com";
        }

        int[] ab = new int[12];
        order_details.order r = new order_details.order();
        for (int i = 1; i < 13; i++)
        {
            ab[i - 1] = r.chart_user(i, main_user);

        }


        StringBuilder xmlData = new StringBuilder();
        xmlData.Append("<chart bgImageAlpha='30' bgImage='img1.jpg'  canvasBgAlpha='0' caption='Monthly Order Sales' xAxisName='Month' yAxisName='Amount'>");
        xmlData.Append("<set label='Jan' value='100' />");
        xmlData.Append("<set label='Feb' value='120' />");
        xmlData.Append("<set label='Mar' value='120' />");
        xmlData.Append("<set label='Apr' value='120' />");
        xmlData.Append("<set label='May' value='120' />");
        xmlData.Append("<set label='Jun' value='120' />");
        xmlData.Append("<set label='Jul' value='120' />");
        xmlData.Append("<set label='Aug' value='120' />");
        xmlData.Append("<set label='Sep' value='120' />");
        xmlData.Append("<set label='Oct' value='120' />");
        xmlData.Append("<set label='Nov' value='120' />");
        xmlData.Append("<set label='Dec' value='120' />");
        xmlData.Append("</chart>");

        Literal1.Text = FusionCharts.RenderChart("js/Column3D.swf", "", xmlData.ToString(), "myNext", "500", "300", false, true);

    }
}