using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class order_address : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        order_details.order r = new order_details.order();
        string street1 = street.Text;
        string city1 = city.Text;
        string state1 = state.Text;
        string phone1 = phone.Text;
        int id = Convert.ToInt32(Request.QueryString["id"]);
        string date1 = datepicker.Value;


        int x = r.address_insert(street1, city1, state1, phone1, id, date1);

        string main_user = Session["main_user"].ToString();
        string res_id = Session["mail_res"].ToString();


/*  Email to User */

        string message1 = "Your Order has been successfully Placed.";

        var fromAddress = new MailAddress("eathub@gmail.com", "From Name");
        var toAddress = new MailAddress(main_user, "To Name");
        const string fromPassword = "eatasulike";
        const string subject = "Your Order Confirmation from EatHub";
        string body =  message1;

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

        /*  Email to User */

        string message2 = "A new Order has been placed. Please Login to your profile to process the order";

        var fromAddress1 = new MailAddress("eathub@gmail.com", "From Name");
        var toAddress1 = new MailAddress(res_id, "To Name");
        const string fromPassword1 = "eatasulike";
        const string subject1 = "New order from EatHub";
        string body1 = message2;

        var smtp1 = new SmtpClient
        {
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true,
            DeliveryMethod = SmtpDeliveryMethod.Network,
            Credentials = new NetworkCredential(fromAddress1.Address, fromPassword1),
            Timeout = 20000
        };
        using (var message = new MailMessage(fromAddress, toAddress)
        {
            Subject = subject1,
            Body = body1
        })
        {
            smtp.Send(message);
        }
       
        Response.Redirect("order_success.aspx");

        

    }
}