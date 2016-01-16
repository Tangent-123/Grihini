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
using Microsoft.Reporting.WebForms;

namespace Grihini.GUI_Form
{
    public partial class Admin_Order_View : System.Web.UI.Page
    {

        Cls_Admin_Order_View aov = new Cls_Admin_Order_View();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fetchProductDet();
            }

        }

        private void fetchProductDet()
        {

            DataTable dt = new DataTable();
            dt = aov.fetchPro(17);

            if (dt.Rows.Count > 0)
            {
                GridView_Pro_View.DataSource = dt;
                GridView_Pro_View.DataBind();

            }
            else
            {
                GridView_Pro_View.DataSource = null;
                GridView_Pro_View.DataBind();
            }

        }

        protected void reject_onclick(object sender, EventArgs e)
        {
            try
            {
                //Session["order_id"] = order_id;
                int userid = Convert.ToInt32(Session["UserId"]);
                int order_id = Convert.ToInt32(Session["order_id"]);

                DataTable dt = new DataTable();
                dt = aov.rejectproduct(22, order_id);
                if (dt.Rows.Count>0)
                {
                    Response.Redirect("Admin_Order_View.aspx");
                }



            }

            catch (Exception ex)
            {

            }

        }


        protected void confirm_onlick(object sender, EventArgs e)
        {
            try
            {
                 int userid = Convert.ToInt32(Session["UserId"]);
                int order_id = Convert.ToInt32(Session["order_id"]);
                DataTable dt = new DataTable();
                dt = aov.confirmproduct(23, order_id);
                if (dt.Rows.Count > 0)
                {

                    Response.Redirect("Admin_Order_View.aspx");
                }


            }

            catch (Exception ex)
            {

            }

        }

        protected void griduser_RowCommand1(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Address_id")
            {
                if (IsValid)
                {
                    string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
                    int Address_id = Convert.ToInt32(commandArgs[0]);
                    int userid = Convert.ToInt32(commandArgs[1]);
                    int product_Id = Convert.ToInt32(commandArgs[2]);
                    int order_id = Convert.ToInt32(commandArgs[3]);
                   // int Address_id = Convert.ToInt32(e.CommandArgument);
                    view_pro.Visible = true;
                    Session["order_id"] = order_id;

                    DataTable dt = new DataTable();
                    dt = aov.fetchAddress(18, Address_id);

                    if (dt.Rows.Count > 0)
                    {
                        DataList_Address.DataSource = dt;
                        DataList_Address.DataBind();
                    }
                    else
                    {
                        DataList_Address.DataSource = null;
                        DataList_Address.DataBind();
                    }

                    DataTable dt1 = new DataTable();
                    dt1 = aov.fetchUser(19, userid);
                    if (dt1.Rows.Count > 0)
                    {
                        DataList_UserDetails.DataSource = dt1;
                        DataList_UserDetails.DataBind();
                    }
                    else
                    {
                        DataList_UserDetails.DataSource = null;
                        DataList_UserDetails.DataBind();
                    }

                    DataTable dt2 = new DataTable();
                    dt2 = aov.fetchproduct(20, product_Id);
                    if (dt2.Rows.Count > 0)
                    {
                        GridView_Product_Det.DataSource = dt2;
                        GridView_Product_Det.DataBind();
                    }
                    else
                    {
                        GridView_Product_Det.DataSource = null;
                        GridView_Product_Det.DataBind();
                    }

                    View1.Visible = false;

                }
                
            }

        }

       //protected void Downloadadress_click(object sender, EventArgs e)
       
           

       // {
       //     DataTable dtformat = new DataTable();
       //     dtformat = aov.adddressdownload(21);
       //     if (dtformat.Rows.Count > 0)
       //     {               

       //         Warning[] warnings; string[] streamids; string mimeType = ""; string encoding; string filenameExtension;

       //         ReportViewer ReportViewer2 = new ReportViewer();
       //         ReportViewer2.Visible = true;
       //         ReportViewer2.LocalReport.EnableExternalImages = true;
       //         ReportDataSource rdss = new ReportDataSource();

       //         rdss.Name = "DataSet1";
       //         rdss.Value = dtformat;

       //         ReportViewer2.LocalReport.ReportPath = Server.MapPath("~/GUI_Form/Address.rdlc");

       //         ReportViewer2.LocalReport.DataSources.Clear();
       //         ReportViewer2.LocalReport.DataSources.Add(rdss);
       //         ReportViewer2.LocalReport.Refresh();

       //         string deviceInfo1 = "<DeviceInfo>" + "  <PageWidth>10.26in</PageWidth>" + "  <PageHeight>12.2in</PageHeight>" + "  <MarginTop>0.1in</MarginTop>" + "  <MarginLeft>.5in</MarginLeft>" +
       //         "  <MarginRight>0in</MarginRight>" + "  <MarginBottom>0in</MarginBottom>" + "</DeviceInfo>";

       //         byte[] bytes = ReportViewer2.LocalReport.Render("PDF", deviceInfo1, out mimeType, out encoding, out filenameExtension, out streamids, out warnings);

       //         Response.Buffer = true;

       //         Response.Clear();

       //         Response.ContentType = mimeType;

       //         Response.AddHeader("content-disposition", ("attachment; filename=" + "Payment_Format" + ".") + "pdf");

       //         Response.BinaryWrite(bytes);

       //         Response.Flush();
       //     }
       // }
       }
    

   
}