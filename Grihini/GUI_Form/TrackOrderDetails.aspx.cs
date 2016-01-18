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
            dt = tmo.orderstatus(28, UserID);
                if(dt.Rows.Count>0)
                {


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