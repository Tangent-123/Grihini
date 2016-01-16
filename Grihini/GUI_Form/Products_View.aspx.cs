using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data.OleDb;
using System.Configuration;
using Grihini_BL.BL;

namespace Grihini.GUI_Form
{
    public partial class Products_View : System.Web.UI.Page
    {
        Cls_Products_View pv = new Cls_Products_View();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                fetchproduct();
            }

        }

        private void fetchproduct()
        {
            DataTable dt = new DataTable();
            dt = pv.fetchdata(12);
            if (dt.Rows.Count > 0)
            {
                //string Prod_Photograph = Convert.ToString(dt.Rows[0]["Image_name"]);
                //if (Prod_Photograph != "")
                //{
                //    string logo = Convert.ToString("~/UploadedFile/Products_Photograph/" + dt.Rows[0]["Image_name"]);
                //    Image2.ImageUrl = logo;
                //}

                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }

       //protected void Pro_View_Click(object sender, EventArgs e)
       // {
       //     //string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
       //     //string ProductID = commandArgs[0];
       //     //string Stat = commandArgs[1];
       //     //int approve = Convert.ToInt32(Stat);
       //     //int ID = Convert.ToInt32(ProductID);
       //     //Session["ProductID"] = ID;

       //    // Response.Redirect("Products_Details_View.aspx");

       // }

       protected void image_command(object sender, CommandEventArgs e)
       {
           string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
           string ProductID = commandArgs[0];
           //string Stat = commandArgs[0];
           //int approve = Convert.ToInt32(Stat);
           int ID = Convert.ToInt32(ProductID);
           Session["ProductID"] = ID;

           Response.Redirect("Products_Details_View.aspx");
       }
    }
}