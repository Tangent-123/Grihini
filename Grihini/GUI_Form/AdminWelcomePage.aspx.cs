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
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using Grihini_BL.BL;

namespace Grihini.GUI_Form
{
    public partial class AdminWelcomePage : System.Web.UI.Page
    {
        Cls_Admin_Login objWelcome = new Cls_Admin_Login();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string UserName = Convert.ToString(Session["UserName"]);
                int UserId = Convert.ToInt32(Session["UserId"]);
                int Role_Id = Convert.ToInt32(Session["Role_Id"]);
                string First_Name = Convert.ToString(Session["First_Name"]);
            }
        }
    }
}