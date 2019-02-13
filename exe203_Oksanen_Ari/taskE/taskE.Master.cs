using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskE
{
    public partial class taskE : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:52742/taskD1.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:50503/taskD4.aspx");
        }


        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:51231/taskE.aspx");
        }
    }
}