using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace commerce
{

    
    public partial class authentifier_client : System.Web.UI.Page
    {
        DCDataContext dc = new DCDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            e.Authenticated = authenticate(Login1.UserName, Login1.Password);
        }

        private bool authenticate(string userName, string password)
        {
            Session["nom"] = userName;

            t_Client client = dc.t_Client.Where(u => u.client_nom.Equals(userName) && u.pawd.Equals(password)).FirstOrDefault();
            return client != null;
        }
    }
}