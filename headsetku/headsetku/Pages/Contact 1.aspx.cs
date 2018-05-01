using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace headsetku.Pages
{
    public partial class Contact_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendMessageClick(object sender, EventArgs e)
        {
            MailMessage cstmsg = new MailMessage(txtEmail.Text, " headsetku123@gmail.com ")
            {
                Subject = txtSubject.Text,
                Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br />" + txtMsg.Text,

                IsBodyHtml = true
            };
            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                EnableSsl = true
            };
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential
            {
                UserName = "headsetku123@gmail.com",
                Password = "1234567.8"
            };
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;


            try
            {
                smtp.Send(cstmsg);
                litResult.Text = "<p> Mail successfully through SMTP with a secure connection and credentials </p>";


            }
            catch (Exception ex)
            {
                litResult.Text = "<p> Send Failed:" + ex.Message + ":" + ex.InnerException + "</p>";


            }

        }

    }
}