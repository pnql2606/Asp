using MyFirstWebPage.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace MyFirstWebPage.Demos
{
    public partial class WebServices : BasePage
    {
        public string HelloWorld(string name)
        {
            return string.Format("Hello {0}", name);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}