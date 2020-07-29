using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebPage.Management
{
    public partial class Reviews : System.Web.UI.Page
    {


        protected string GetBooleanText(object booleanValue)
        {
            bool authorized = (bool)booleanValue;
            if (authorized)
            {
                return "Yes";
            }
            else
            {
                return "No";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    }
