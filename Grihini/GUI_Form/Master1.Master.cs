using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using Grihini_BL.BL;

namespace Grihini.GUI_Form
{
    public partial class Master1 : System.Web.UI.MasterPage
    {
        Cls_Master clm = new Cls_Master();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
                string User_Name = (Convert.ToString(Session["UserName"]));
                string Role_Id = (Convert.ToString(Session["Role_Id"]));
                string first_name = (Convert.ToString(Session["First_Name"]));
                if (!this.IsPostBack)
                {
                    Session["Reset"] = true;
                    Configuration config = WebConfigurationManager.OpenWebConfiguration("~/Web.Config");
                    SessionStateSection section = (SessionStateSection)config.GetSection("system.web/sessionState");
                    int timeout = (int)section.Timeout.TotalMinutes * 1000 * 60;
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "SessionAlert", "SessionExpireAlert(" + timeout + ");", true);
                }
                if (Request.QueryString["target"] == "fg")
                {
                    Response.Redirect("~/GUI_Form/Products_View.aspx");
                }
                if (User_Name == "")
                {

                    
                    LogOut.Visible = false;
                    Sign_Up.Visible = true;
                    Sign_In.Visible = true;
                    Menu1.Visible = false;
                    View_Products.Visible = true;
                    View_Products1.Visible = false;
                    Addprod.Visible = false;
                    

                }
                else
                {
                    Sign_In.Visible = false;
                    LogOut.Visible = true;
                    Sign_Up.Visible = false;
                    Menu1.Visible = false;
                    Div_Username.Visible = true;
                    Lbl_Username.Text = first_name;

                    if (Role_Id == "1")
                    {
                        Add2cart.Visible = false;
                        Home.Visible = false;
                        View_Products.Visible = false;
                        View_Products1.Visible = true;
                        View_Products2.Visible = true;
                        Addprod.Visible = true;
                        Menu1.Visible = true;
                        welcome.Visible = false;

                    }
                    else
                    {
                        Add2cart.Visible = true;
                        Home.Visible = true;
                        View_Products.Visible = true;
                        View_Products1.Visible = false;
                        View_Products2.Visible = false;
                        Addprod.Visible = false;
                        fetchtrack();
                        fetchcartcount();
                    }
                }

               

              

                

        }

        private void fetchcartcount()
        {
            int User_Id = Convert.ToInt32(Session["UserId"]);
            
            DataTable dt = new DataTable();
            dt = clm.fetchCount(2, User_Id);
            if (dt.Rows.Count > 0)
            {
                Lbl_Cart.Text = Convert.ToString(dt.Rows[0]["Count"]);
            }
            else
            {
                Lbl_Cart.Text = "";
            }
        }

        private void fetchtrack()
        {
            int User_Id = Convert.ToInt32(Session["UserId"]);
            DataTable dt1 = new DataTable();
            dt1 = clm.fetchtrackOrder(6, User_Id);
            if (dt1.Rows.Count > 0)
            {
                Track.Visible = true;
            }
            else
            {
                Track.Visible = false;
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "";
            Session["Role_Id"] = "";
            Session["UserId"] = "";
            Session["First_Name"] = "";
            Lbl_Cart.Text = "";
            Response.Redirect("Products_View.aspx?target=fg");
        }
    }
}