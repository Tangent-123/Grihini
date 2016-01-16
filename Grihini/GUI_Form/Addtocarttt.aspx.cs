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
    public partial class Addtocarttt : System.Web.UI.Page
    {

        Cls_Add_ToCart cart = new Cls_Add_ToCart();
        protected void Page_Load(object sender, EventArgs e)
        {

            string User_Name = Convert.ToString(Session["UserName"]);

            if (!IsPostBack)
            {
                
                if (User_Name != "")
                {
                    loadcartdetails();
                }
                else
                {
                    GridView1.DataSource = null;
                    GridView1.DataBind();

                    Button1.Visible = false;
                }



            }
            
        }

        private void loadcartdetails()
        {
            int userid = Convert.ToInt32(Session["UserId"]);
            DataTable dt = new DataTable();                  

            dt = cart.fetchcartdetails(3, userid);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();

                Button1.Visible = false;
            }
            
           
        }  //Fetch Product For Gridview.....

        private void BindAdd2Cart()
        {
            string User_Name = Convert.ToString(Session["UserName"]);
            int Product_Id = Convert.ToInt32(Session["ProductID"]);
            int User_id = Convert.ToInt32(Session["UserId"]);
            int Quantity = Convert.ToInt32(Session["Max_quantity"]);
            int Size = Convert.ToInt32(Session["Size_id"]);

            int product = cart.insertAddtocart(1, User_id, Product_Id, Quantity, Size);
        }
       

        protected void Button1_click(object sender, EventArgs e)
        {
            Response.Redirect("Delivery_Address.aspx");
        }

        protected void griduser_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
            if (e.CommandName == "Delete")
            {
                if (IsValid)
                {
                    int Cart_Id = Convert.ToInt32(e.CommandArgument);
                    int result = cart.DeleteCart(7, Cart_Id);
                }
                Response.Redirect("Addtocarttt.aspx");
            }

        }  //Delete Product From Cart....
    }
}