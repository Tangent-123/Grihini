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
using System.Configuration;
using Grihini_BL.BL;

namespace Grihini.GUI_Form
{
    public partial class User_Login : System.Web.UI.Page
    {
        Cls_Login objnew = new Cls_Login();

        protected void Page_Load(object sender, EventArgs e)
        {

            messagedisplay();

            
            //lblmsgshow.Text = "You Need To Login To Purchase Any Product";



        }

        private void messagedisplay()
        {
           string User_name = Convert.ToString(Session["UserName"]);

           if (User_name == "")
            {
                
                lblmsgshow.Visible = true;
                lblmsgshow.Text = "You Need To Login To Purchase Any Product";
            }

            else
            {
                lblmsgshow.Visible = false;
            }
        }

        protected void Btn_UserLogin_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dtuser = new DataTable();
                dtuser = objnew.logindetails(3, Text_UserName1.Text, Text_Password2.Text);
                if (dtuser.Rows.Count > 0)
                {
                    Session["UserName"] = Convert.ToString(dtuser.Rows[0]["UserName"]);
                    Session["UserId"] = Convert.ToString(dtuser.Rows[0]["UserID"]);
                    Session["First_Name"] = Convert.ToString(dtuser.Rows[0]["First_Name"]);
                    //Session["UserName"] = Convert.ToString(dtuser.Rows[0]["UserName"]);
                    //Session["Password"] = Convert.ToString(dtuser.Rows[0]["Password"]);
                    //Session["auth_Name"] = Convert.ToString(dtuser.Rows[0]["Emp_Name"]);
                    //Session["auth_DOB"] = Convert.ToString(dtuser.Rows[0]["Emp_Dob"]);
                    ////Session["auth_Age"] = Convert.ToString(dtuser.Rows[0]["Emp_Age"]);
                    //Session["auth_Address"] = Convert.ToString(dtuser.Rows[0]["Emp_Present_Addr"]);
                    //Session["auth_State"] = Convert.ToString(dtuser.Rows[0]["Emp_State"]);
                    //Session["auth_Location"] = Convert.ToString(dtuser.Rows[0]["Emp_Location"]);
                    //Session["auth_Photograph"] = Convert.ToString(dtuser.Rows[0]["Emp_Photograph"]);
                    Response.Redirect("Products_View.aspx");
                }
            }
            catch (Exception ex)
            {
            }
        }

        protected void Btn_Reset_Click1(object sender, EventArgs e)
        {
            Text_UserName1.Text = "";
            Text_Password2.Text = "";
        }
    }
}