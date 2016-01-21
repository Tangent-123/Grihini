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
    public partial class AdminLogin : System.Web.UI.Page
    {
        Cls_Admin_Login objnew = new Cls_Admin_Login();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dtuser = new DataTable();
                dtuser = objnew.logindetails(4, Text_Username.Text, Text_Password.Text);
                if (dtuser.Rows.Count > 0)
                {
                    Session["UserName"] = Convert.ToString(dtuser.Rows[0]["UserName"]);
                    Session["UserId"] = Convert.ToString(dtuser.Rows[0]["UserID"]);
                    Session["Role_Id"] = Convert.ToString(dtuser.Rows[0]["Role_Id"]);
                    Session["First_Name"] = Convert.ToString(dtuser.Rows[0]["First_Name"]);

                    Response.Redirect("AdminWelcomePage.aspx");
                    Response.Redirect("Product_Reg.aspx");
                }
            }
            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }
        }



        protected void Btn_Reset_Click1(object sender, EventArgs e)
        {
            Text_Username.Text = "";
            Text_Password.Text = "";
            Response.Redirect("AdminLogin.aspx");
        }
    }
}