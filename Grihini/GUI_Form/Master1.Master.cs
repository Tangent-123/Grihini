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
            
                string User_Name = (Convert.ToString(Session["UserName"]));
                string Role_Id = (Convert.ToString(Session["Role_Id"]));
                string first_name = (Convert.ToString(Session["First_Name"]));

                string EmailId = (Convert.ToString(Session["EmailId"]));
                string FirstNm = (Convert.ToString(Session["FirstName"]));
                string LastNm = (Convert.ToString(Session["LastName"]));

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
                    signupid.Visible = true;
                    signinid.Visible = true;
                    Menu1.Visible = false;
                    View_Products.Visible = true;
                    View_Products1.Visible = false;
                    Addprod.Visible = false;
                }
                else
                {
                    signinid.Visible = false;
                    LogOut.Visible = true;
                    signupid.Visible = false;
                    Menu1.Visible = false;
                    Div_Username.Visible = true;
                    Lbl_Username.Text = "Welcome " + first_name;

                    if (Role_Id == "1")
                    {
                        Add2cart.Visible = false;
                        Home.Visible = false;
                        View_Products.Visible = false;
                        View_Products1.Visible = true;
                       //View_Products2.Visible = true;
                        Addprod.Visible = true;
                        Menu1.Visible = true;
                        main_menu.Visible = true;
                        Div2.Visible = false;

                    }
                    else
                    {
                        Add2cart.Visible = true;
                        Home.Visible = true;
                        View_Products.Visible = true;
                        View_Products1.Visible = false;
                        //View_Products2.Visible = false;
                        Addprod.Visible = false;
                        fetchtrack();
                        fetchcartcount();
                        signupid.Visible = false;
                        signinid.Visible = false;
                    }
                }
                if (EmailId != "" && FirstNm != "" && LastNm!="")
            {
                signinid.Visible = false;
                signupid.Visible = false;
                Lbl_Username.Visible = true;
                LogOut.Visible = true;
                Track.Visible = true;
                Div_Username.Visible = true;
                Lbl_Username.Visible = true;

                Lbl_Username.Text = "Welcome " + FirstNm;
                Lbl_Cart.Visible = true;
                Lbl_Cart.Text = "0";

                    
            }
            
        }
        
        private void fetchcartcount()
        {
            int User_Id = Convert.ToInt32(Session["UserId"]);
            
            DataTable dt = new DataTable();
            dt = clm.fetchCount(2, User_Id);
            if (dt.Rows.Count > 0)
            {
                lblcartcount.Text = Convert.ToString(dt.Rows[0]["Count"]);
            }
            else
            {
                lblcartcount.Text = "";
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
            Session.Clear();
            Session.Abandon();

            Session["UserName"] = "";
            Session["Role_Id"] = "";
            Session["UserId"] = "";
            Session["First_Name"] = "";
            Lbl_Cart.Text = "";
            Track.Visible = false;
            LogOut.Visible = false;
            Sign_In.Visible = true;
            Sign_Up.Visible = true;
           
            Response.Redirect("Products_View.aspx?target=fg");
        }
    }
}