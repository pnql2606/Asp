using MyFirstWebpage.Controls;
using MyFirstWebPage.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebPage.About1
{
    public partial class AboutUS : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Banner2.NavigateUrl = "http://codeproject.com";
                Banner2.DisplayDirection = Direction.Vertical;
            }
        }
    }
}