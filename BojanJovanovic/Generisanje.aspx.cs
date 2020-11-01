using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BojanJovanovic
{
    public partial class Generisanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
        {
            e.Cancel = true;
            PasswordRecovery1.SuccessText = e.Message.Body;
        }
    }
}