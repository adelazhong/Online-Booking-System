using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace htel
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static int sum = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label15.Text = Session["name"]+"";
            Label1.Text =  "歡迎光臨!   您還有" + Session["money"] + "元";

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = "每晚" + DropDownList1.SelectedItem.Value + "元";
            Image1.ImageUrl = "./image/" + DropDownList1.SelectedItem.Text.Trim() + ".jpg";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert(); 
            SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\db.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
            conn.Open();
            SqlDataReader dr;
            SqlCommand cmd = new SqlCommand("select top 1 id_order from [order] order by id_order Desc", conn); //select出編號最大一筆
            dr = cmd.ExecuteReader(); //執行select
            if (dr.Read())
            {
                Session["id_order"] = dr["id_order"];
                Button1.Text = dr["id_order"] + "號預訂";
                Button1.Enabled = false;
                Button2.Visible = true;
                DropDownList2.Visible = true;
                DropDownList5.Visible = true;
                Calendar1.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label8.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
            }



        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
           // DateTime d=Calendar1.SelectedDate;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Label13.Visible = true;
            Button3.Visible = true;
            SqlDataSource2.Insert();
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count-1; i++)
            {
                sum += Convert.ToInt32(((Label)GridView1.Rows[i].Cells[5].FindControl("Label6")).Text);

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            sum = 0;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                sum += Convert.ToInt32(((Label)GridView1.Rows[i].Cells[5].FindControl("Label6")).Text);

            }
            Session["money"] = (Convert.ToInt32(Session["money"]) - sum / 1000) + "";
            SqlDataSource4.Update();
            Label15.Text = Session["name"] + "";
            Label1.Text = "謝謝惠顧!   您還有" + Session["money"] + "元";
            Label4.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label8.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            Label13.Visible = false;
            Label18.Visible = false;
            DropDownList1.Visible = false;
            DropDownList2.Visible = false;
            DropDownList5.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            GridView1.Visible = false;
            Calendar1.Visible = false;
            Image1.Visible = false;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //sum = 0;
            //for (int i = 0; i < GridView1.Rows.Count; i++)
            //{
            //    sum += Convert.ToInt32(((Label)GridView1.Rows[i].Cells[5].FindControl("Label6")).Text);
                
            //}
        }
    }
}