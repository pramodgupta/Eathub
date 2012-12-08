using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {

        string name1 = name.Text;
        string email1 = email.Text;
        string message1 = msg.InnerText;

        var fromAddress = new MailAddress("munnygupta7@gmail.com", "From Name");
        var toAddress = new MailAddress("munnygupta7@gmail.com", "To Name");
        const string fromPassword = "boommercury6";
        const string subject = "Message from EatHub";
         string body = "From: " + email1 + message1;

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