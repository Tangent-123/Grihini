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
    public partial class Products_Order_Confirm : System.Web.UI.Page
    {

        Cls_Add_ToCart cart = new Cls_Add_ToCart();
        Cls_Products_Order_Confirm poc = new Cls_Products_Order_Confirm();

        protected void Page_Load(object sender, EventArgs e)
        {
            bindOrderDetails();

            bindDel_Address();
        }

        private void bindDel_Address()
        {
            string Address_Id = "0";
            int userid = Convert.ToInt32(Session["UserId"]);          
            if (Session["Delivery_Id"] != "")
            {
                Address_Id = Convert.ToString(Session["Delivery_Id"]);
            }
            else if (Session["Address_Id"] != "")
            {
                Address_Id = Convert.ToString(Session["Address_Id"]);
            }

            Session["Add_Del_Id"] = Address_Id;
            
            DataTable dt = new DataTable();
           
            dt = poc.fetchAddress(5, userid, Address_Id);

            if (dt.Rows.Count > 0)
            {
                
                DataList_Address.DataSource = dt;
                DataList_Address.DataBind();

            }
        }

        private void bindOrderDetails()
        {

            int userid = Convert.ToInt32(Session["UserId"]);
            DataTable dt = new DataTable();          
            
            dt = cart.fetchcartdetails(3, userid);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            
        }

        protected void Btn_Confirm_Click(object sender, EventArgs e)
        {
             int userid = Convert.ToInt32(Session["UserId"]);
             string Address_Id = Convert.ToString(Session["Add_Del_Id"]);

             DataTable dt = new DataTable();

             dt  = poc.insertorder(14, userid, Address_Id);
             if (dt.Rows.Count > 0)
             {
                 Response.Redirect("Registration_Completed.aspx");
             }
        }

    }
}