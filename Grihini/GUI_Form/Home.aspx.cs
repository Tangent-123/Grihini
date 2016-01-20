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
    public partial class Home : System.Web.UI.Page
    {

        Cls_Home home = new Cls_Home();
        protected void Page_Load(object sender, EventArgs e)
        {

            //DataTable dt = new DataTable();
            //dt = home.fetchproductphoto(1);
            //if (dt.Rows.Count > 0)
            //{
            //    string product1 = Convert.ToString(dt.Rows[0]["Image_path"]);
            //    Session["Product1"] = Convert.ToString(dt.Rows[0]["Product_id"]);

            //    //Img_Pro1.ImageUrl = product1;
            //}

            //DataTable dt1 = new DataTable();
            //dt1 = home.fetchproductphoto(2);
            //if (dt.Rows.Count > 0)
            //{
            //    string product2 = Convert.ToString(dt1.Rows[0]["Image_path"]);
            //    Session["Product2"] = Convert.ToString(dt.Rows[0]["Product_id"]);
            //    //Img_Pro2.ImageUrl = product2;
            //}

            //DataTable dt2 = new DataTable();
            //dt2 = home.fetchproductphoto(3);
            //if (dt.Rows.Count > 0)
            //{
            //    string product3 = Convert.ToString(dt2.Rows[0]["Image_path"]);
            //    string Product_Id = Convert.ToString(dt.Rows[0]["Product_id"]);
            //    Session["Product3"] = Convert.ToString(dt.Rows[0]["Product_id"]);

            //    //Img_Pro3.ImageUrl = product3;
            //}


        }


        protected void openproduct(object sender, EventArgs e)
        {

            Response.Redirect("Products_View.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //mp8.Show();
        }
    }
}