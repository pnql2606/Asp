﻿using MyFirstWebPage.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebPage.Demos
{
    public partial class Target : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString.ToString();
        }
    }
}