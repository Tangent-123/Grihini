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
    public partial class Add_ToCart : System.Web.UI.Page
    {

        Cls_Add_ToCart cart = new Cls_Add_ToCart();
        protected void Page_Load(object sender, EventArgs e)
        {

            string User_Name = Convert.ToString(Session["UserName"]);

            if (!IsPostBack)
            {
                BindAdd2Cart();
                //fetchcartcount();
               // loadcartdetails();


                
            }
            //fetchcartproduct();

           
            
        }

        //private void loadcartdetails()
        //{
        //    //string User_Name = Convert.string (Session["UserName"]);
        //    int userid=Convert.ToInt32(Session["UserId"]);
        //    DataTable dt = new DataTable();
        //    dt = cart.fetchcartdetails(3, userid);

          
        //}

        //private void fetchcartproduct()
        //{

        //    DataTable dt = new DataTable();


        //}

        private void fetchcartcount()
        {
            int User_id = Convert.ToInt32(Session["UserId"]);
            DataTable dt = new DataTable();
            dt = cart.fetchcartcount(2, User_id);
            if (dt.Rows.Count > 0)
            {
                string count = Convert.ToString(dt.Rows[0]["Count"]);

                

               
               

            }
        }

        private void BindAdd2Cart()
        {
            string User_Name = Convert.ToString(Session["UserName"]);
            int Product_Id=Convert.ToInt32(Session["ProductID"]);
            int User_id = Convert.ToInt32(Session["UserId"]);
            int Quantity = Convert.ToInt32(Session["Max_quantity"]);
            int Size = Convert.ToInt32(Session["Size_id"]);

            int product = cart.insertAddtocart(1, User_id, Product_Id, Quantity, Size);

        }

        protected void Btn_New_submit(object sender, EventArgs e)
        {

        }
        

    }
}