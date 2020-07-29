﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace MyFirstWebPage
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
                               new ScriptResourceDefinition
                               {
                                   Path = "~/Scripts/jquery-3.5.1.min.js"
                               });
        }
    }
}