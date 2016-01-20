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
    public partial class TrackOrderDetails : System.Web.UI.Page
    {
        Cls_Track_My_Order tmo = new Cls_Track_My_Order();
        protected void Page_Load(object sender, EventArgs e)
        {
            bindgrid();
            int UserID = Convert.ToInt32(Session["UserID"]);
            DataTable dt = new DataTable();
            dt = tmo.orderstatus(29, UserID);

            if (dt.Rows.Count>0)
                {
                    Session["Product_Id"] = Convert.ToString(dt.Rows[0]["Product_Id"]);
                    int productid = Convert.ToInt32(Session["Product_Id"]);

                    DataTable dt1 = new DataTable();
                    dt1 = tmo.orderstatuswithproduct(28, UserID, productid);
                    if (dt1.Rows.Count > 0)
                    {
                        string orderdate = Convert.ToString(dt.Rows[0]["Created_date"]);
                        string items = Convert.ToString(dt.Rows[0]["Quantity"]);
                        string grandtotal = Convert.ToString(dt.Rows[0]["Subtotal"]); 

                        lbl_order.Text = orderdate;
                        lbl_tems.Text = items;
                        lbl_grandtotal.Text = grandtotal;
                    }
            

                }

            

                

        }

        private void bindgrid()
        {
            int UserID = Convert.ToInt32(Session["UserID"]);
            try
            {

                DataTable dt = new DataTable();
                dt = tmo.trackmyorder(27, UserID);

                if (dt.Rows.Count > 0)
                {
                    GridView_TrackOrderdetails.DataSource = dt;
                    GridView_TrackOrderdetails.DataBind();
                }
                else
                {
                    GridView_TrackOrderdetails.DataSource = null;
                    GridView_TrackOrderdetails.DataBind();
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}