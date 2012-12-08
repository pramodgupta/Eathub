using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class table_booking1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string res_id = Request.QueryString["email"];
        string user_id = "";
        if(Session["main_user"] != null)
        {
            user_id = Session["main_user"].ToString();
        }
        else
        {
             user_id = "guest";
        }
        string name1 = name.Text;
        string phone1 = phone.Text;
        string time1 = "";
        string message1 = "Table Booking: \r\n Requestor Name: " + name1 + "\r\n Phone number =" + phone1 + "\r\n Time = " + time1;

        order_details.order r = new order_details.order();
        int x = r.table_bokking(res_id, user_id, name1, phone1, time1);

        int y = x;
        var fromAddress = new MailAddress("eathub@gmail.com", "From Name");
        var toAddress = new MailAddress(res_id, "To Name");
        const string fromPassword = "eatasulike";
        const string subject = "Table Booking Request";
        string body = message1;

        var smtp = new SmtpClient
        {
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true,
            DeliveryMethod = SmtpDeliveryMethod.Network,
            Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
            Timeout = 20000

        };
        using (var message = new MailMessage(fromAddress, toAddress)
        {
            Subject = subject,
            Body = body
        })
        {
            smtp.Send(message);
        }

    }
}