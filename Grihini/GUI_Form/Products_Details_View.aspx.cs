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
    public partial class Products_Details_View : System.Web.UI.Page
    {

        Cls_Products_Details_View pd = new Cls_Products_Details_View();
        Cls_Add_ToCart cart = new Cls_Add_ToCart();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showalldata();

                buttonvisibility();
            }

        }


        private void buttonvisibility()
        {
            try
            {
                int userid = Convert.ToInt32(Session["UserId"]);
                int ProductId = Convert.ToInt32(Session["ProductID"]);
                DataTable dt = new DataTable();
                dt = cart.buttonvisible(10, userid, ProductId);
                if (dt.Rows.Count > 0)
                {
                    LinkButtonAddTocart.Visible = false;
                    ImageButton2.Visible = true;
                    btn_buynoww.Visible = true;
                    btn_buynow_false.Visible = false;

                }
                if (dt.Rows.Count == 0)
                {
                    LinkButtonAddTocart.Visible = true;
                    ImageButton2.Visible = false;
                    btn_buynoww.Visible = true;
                    btn_buynow_false.Visible = false;
                }


                if (userid == 0)
                {
                    LinkButtonAddTocart.Visible = true;
                    ImageButton2.Visible = false;
                    btn_buynoww.Visible = true;
                    btn_buynow_false.Visible = false;

                }

            }
            catch (Exception e)
            {

            }

        }
        private void showalldata()
        {
            int ProductId=0;
            if(ProductId==0)

            ProductId = Convert.ToInt32(Session["ProductID"]);
            DataTable dt = new DataTable();
            dt = pd.fetchall(13, ProductId);
            if (dt.Rows.Count > 0)
            {

                Lbl_Pro_Name.Text = Convert.ToString(dt.Rows[0]["Product_name"]);
                Lbl_Price.Text = Convert.ToString(dt.Rows[0]["Product_price"]);
                Lbl_Description.Text = Convert.ToString(dt.Rows[0]["Product_description"]);

                //Ddl_Size.SelectedValue = Convert.ToString(dt.Rows[0]["size"]);
                int val = Convert.ToInt32(dt.Rows[0]["Max_quantity"]);

                for (int a = 1; a <= val; a++)
                {
                    Ddl_Quantity.Items.Add(a.ToString());

                }
                ListItem li = new ListItem("Select Quantity", "0");
                Ddl_Quantity.Items.Insert(0, li);	
                string Image = Convert.ToString(dt.Rows[0]["Image_path"]);
                Product_Image.ImageUrl = Image;
                fetchsize();
                fetchImage();
                fetchColorImage();



            }
        }

        private void fetchColorImage()
        {
            try
            {
                int ProductId = Convert.ToInt32(Session["ProductID"]);
                DataTable dt = new DataTable();
                dt = pd.fetchdata(16, ProductId);
                if (dt.Rows.Count > 0)
                {
                    DataList_Image_Color.DataSource = dt;
                    DataList_Image_Color.DataBind();
                }
            }
            catch
            {


            }
        }

        private void fetchImage()
        {
            try
            {
                int ProductId = Convert.ToInt32(Session["ProductID"]);
                DataTable dt = new DataTable();
                dt = pd.fetchdata(15, ProductId);
                if (dt.Rows.Count > 0)
                {
                    DataList_Image.DataSource = dt;
                    DataList_Image.DataBind();
                }
            }
            catch
            {


            }
              
        }

        private void fetchsize()
        {
            try
                {
            int ProductId = Convert.ToInt32(Session["ProductID"]);
            DataTable dt = new DataTable();
            dt = pd.fetchdata(14, ProductId);
            if (dt.Rows.Count > 0)
            {
                
                     Ddl_Size.DataSource = dt;
                     Ddl_Size.DataTextField = "size";
                     Ddl_Size.DataValueField = "Size_id";
                     Ddl_Size.DataBind();

              }
              else
                {

                }

                    ListItem li = new ListItem("Select size", "0");
                    Ddl_Size.Items.Insert(0, li);
                }

            catch (Exception ex)
                {

                }
                
            
        }

        protected void Btn_addtocart22_Click(object sender, EventArgs e)
        {
            // Response.Redirect("Add_ToCart.aspx");
            
            string User_name = Convert.ToString(Session["UserName"]);
            if (User_name == "")
            {
               // Response.Redirect("User_Login.aspx");
                //mp7.Show();
                validdiv.Visible = true;
                Response.Redirect("User_Login.aspx");
                lblmsgshow.Visible = true;
                
                
            }
            else
            {
                
                Session["UserName"] = User_name;
                int quantity = Convert.ToInt32(Ddl_Quantity.SelectedValue);
                Session["Max_quantity"] = quantity;
                int Size=Convert.ToInt32(Ddl_Size.SelectedValue);
                Session["Size_id"] = Size;
               // ProductId = Convert.ToInt32(Session["ProductID"]);
                //Response.Redirect("Add_ToCart.aspx");
                
                BindAdd2Cart();
                
            }

        }

        private void BindAdd2Cart()
        {
            string User_Name = Convert.ToString(Session["UserName"]);
            int Product_Id = Convert.ToInt32(Session["ProductID"]);
            int User_id = Convert.ToInt32(Session["UserId"]);
            int Quantity = Convert.ToInt32(Session["Max_quantity"]);
            int Size = Convert.ToInt32(Session["Size_id"]);

            int product = cart.insertAddtocart(1, User_id, Product_Id, Quantity, Size);
            if (product > 0)
            {
                Response.Redirect("Products_Details_View.aspx");
                //Btn_Addtocartfalse.Visible = true;
                //Btn_AddtoCart.Visible = false;
            }
            else
            {

            }
        }

        protected void buymore_click(object sender, EventArgs e)
        {
            Response.Redirect("Products_View.aspx");
        }

        protected void Btn_buynow_Click(object sender, EventArgs e)
        {
            string User_name = Convert.ToString(Session["UserName"]);
            if (User_name == "")
            {
                // Response.Redirect("User_Login.aspx");
                //mp7.Show();
                validdiv.Visible = true;
                Response.Redirect("User_Login.aspx");
                //lblmsgshow.Text = "You are not Logged in, do you want to login?";


            }
            else
            {

                Session["UserName"] = User_name;
                int quantity = Convert.ToInt32(Ddl_Quantity.SelectedValue);
                Session["Max_quantity"] = quantity;
                int Size = Convert.ToInt32(Ddl_Size.SelectedValue);
                Session["Size_id"] = Size;
                // ProductId = Convert.ToInt32(Session["ProductID"]);
                //Response.Redirect("Add_ToCart.aspx");

                bindbuynow();

            }


        }

        private void bindbuynow()
        {
            string User_Name = Convert.ToString(Session["UserName"]);
            int Product_Id = Convert.ToInt32(Session["ProductID"]);
            int User_id = Convert.ToInt32(Session["UserId"]);
            int Quantity = Convert.ToInt32(Session["Max_quantity"]);
            int Size = Convert.ToInt32(Session["Size_id"]);
           
            int product = cart.insertAddtocart(1, User_id, Product_Id, Quantity, Size);
            if (product > 0)
            {
                Response.Redirect("Addtocarttt.aspx");
            }
            else
            {
                Response.Redirect("Addtocarttt.aspx");
            }
        }

        protected void Btnok_click(object sender, EventArgs e)
        {
            Response.Redirect("User_Login.aspx");
        }

        protected void Btncancel_click(object sender, EventArgs e)
        {
            
        }
    }
}