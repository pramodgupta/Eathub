using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class table_bokking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string res_id = Request.QueryString["email"];


    }
    protected void submit_Click(object sender, EventArgs e)
    {

        string res_id = Request.QueryString["email"];
        string user_id = Session["main_user"].ToString();
        string name1 = name.Text;
        string phone1 = phone.Text;
        string time1 = "";
        string message1 = "Table Booking: /n Requestor Name: " + name1 + "/n Phone number =" + phone1 + "/n Time = "+ time1 ;

        var fromAddress = new MailAddress("munnygupta7@gmail.com", "From Name");
        var toAddress = new MailAddress(res_id, "To Name");
        const string fromPassword = "boommercury6";
        const string subject = "Your Order Confirmation from EatHub";
        string body = message1;
        Label1.Visible = true;
        Label1.Text = "Your Place has been placed Successfully";

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