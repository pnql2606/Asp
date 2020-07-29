using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebPage
{
    public partial class MyFirstPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ServerMessage(object sender, EventArgs e)
        {
            lbServer.Text = "I am Server";
        }
    }
}