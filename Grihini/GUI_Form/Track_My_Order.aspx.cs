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
    public partial class Track_My_Order : System.Web.UI.Page
    {
        Cls_Track_My_Order tmo = new Cls_Track_My_Order();
        protected void Page_Load(object sender, EventArgs e)
        {

            fetchorder();
            fetchorderAddr();
            bindgrid();
        }

        private void bindgrid()
        {
            int UserID = Convert.ToInt32(Session["UserID"]);
            try
            {

                DataTable dt = new DataTable();
                dt = tmo.trackorderfetch(24, UserID);

                if (dt.Rows.Count > 0)
                {
                    GridView_TrackOrder.DataSource = dt;
                    GridView_TrackOrder.DataBind();
                }
                else
                {
                    GridView_TrackOrder.DataSource = null;
                    GridView_TrackOrder.DataBind();
                }

            }
            catch (Exception ex)
            {

            }
        }

        private void fetchorderAddr()
        {
            int userid = Convert.ToInt32(Session["UserId"]);

            DataTable dt = new DataTable();

            dt = tmo.fetchAddress(16, userid);



            if (dt.Rows.Count > 0)
            {
                //GridView_Address.DataSource = dt;
                //GridView_Address.DataBind();

                //DataList_Address.DataSource = dt;
                //DataList_Address.DataBind();

            }
        }

        private void fetchorder()
        {
            int userid = Convert.ToInt32(Session["UserId"]);
            DataTable dt = new DataTable();
            dt = tmo.fetchcartdetails(15, userid);

            if (dt.Rows.Count > 0)
            {
                //DataList_Product.DataSource = dt;
                //DataList_Product.DataBind();



            }
        }

        //protected void image_command(object sender, CommandEventArgs e)
        //{

        //}
    }
}