using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace htel
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            DetailsView1.DataBind();
            if (DetailsView1.Rows.Count > 1)
            {
                Label1.Text = "更改帳號再註冊";
                Button2.Visible = false;
                Button2.Enabled = false;
            }
            else
            {
                SqlDataSource1.Insert();
                Button2.Visible = true;
                Button2.Enabled = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}