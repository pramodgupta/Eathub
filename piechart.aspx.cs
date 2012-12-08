using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using InfoSoftGlobal;

public partial class piechart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder xmlData = new StringBuilder();
        xmlData.Append("<chart bgImageAlpha='30' bgImage='img1.jpg'  canvasBgAlpha='0' caption='Monthly Order Sales' xAxisName='Month' yAxisName='Amount'>");
        xmlData.Append("<set label='Jan' value='30' />");
        xmlData.Append("<set label='Feb' value='100' />");
        xmlData.Append("<set label='Mar' value='200' />");
        xmlData.Append("<set label='Apr' value='78' />");
       
        xmlData.Append("</chart>");

        Literal2.Text = FusionCharts.RenderChart("../FusionCharts/Pie3D.swf", "", xmlData.ToString(), "FactorySum", "600", "300", false, true);
    }
}