using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace htel
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DetailsView1.Visible = true;
            DetailsView1.DataBind();
            if (DetailsView1.Rows.Count > 1)
            {
                Session["name"] = DetailsView1.Rows[0].Cells[1].Text;
                Session["pass"] = TextBox2.Text;
                Session["money"] = DetailsView1.Rows[1].Cells[1].Text;
                LinkButton1.Visible = true;
                LinkButton1.Enabled = true;
            }
            else
            {
                LinkButton1.Visible = false;
                LinkButton1.Enabled = false;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}
