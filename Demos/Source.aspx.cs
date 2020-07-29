using MyFirstWebPage.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebPage.Demos
{
    public partial class Source : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Redirect("Target.aspx?Test=SomeValue");
            Server.Transfer("Target.aspx?Test=SomeValue");
        }
    }
}