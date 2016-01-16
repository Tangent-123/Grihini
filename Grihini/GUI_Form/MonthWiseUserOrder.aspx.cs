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
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace Grihini.GUI_Form
{
    public partial class MonthWiseUserOrder : System.Web.UI.Page
    {
        MonthWiseUserOredrBL objOrder = new MonthWiseUserOredrBL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindMonthwiseUserOrderInGridView();
            }

        }

        //------------Binding Value of Monthwise User Order Data in GridView-----------------//
        private void bindMonthwiseUserOrderInGridView()
        {
           

            try
            {

                DataTable dt = new DataTable();
                dt = objOrder.FetchUserOrder(8);

                if (dt.Rows.Count > 0)
                {
                    GridViewMonthWiseUserOrder.DataSource = dt;
                    GridViewMonthWiseUserOrder.DataBind();
                }
                else
                {
                    GridViewMonthWiseUserOrder.DataSource = null;
                    GridViewMonthWiseUserOrder.DataBind();
                }

            }
            catch (Exception ex)
            {

            }
        }

        //-------------Function to Export Pdf File From GridView--------//
        private void PrepareControlForExport(Control control)
        {
            for (int i = 0; i < control.Controls.Count; i++)
            {
                Control current = control.Controls[i];
                if (current is LinkButton)
                {
                    control.Controls.Remove(current);
                    control.Controls.AddAt(i, new LiteralControl((current as LinkButton).Text));
                }
                else if (current is ImageButton)
                {
                    control.Controls.Remove(current);
                    control.Controls.AddAt(i, new LiteralControl((current as ImageButton).AlternateText));
                }
                else if (current is HyperLink)
                {
                    control.Controls.Remove(current);
                    control.Controls.AddAt(i, new LiteralControl((current as HyperLink).Text));
                }
                else if (current is DropDownList)
                {
                    control.Controls.Remove(current);
                    control.Controls.AddAt(i, new LiteralControl((current as DropDownList).SelectedItem.Text));
                }
                else if (current is CheckBox)
                {
                    control.Controls.Remove(current);
                    control.Controls.AddAt(i, new LiteralControl((current as CheckBox).Checked ? "" : ""));
                }
                if (current.HasControls())
                {
                    PrepareControlForExport(current);
                }
            }
        }

        //-------------Button click event to Pdf Download of GridView----/////

        protected void BtnDownloadPdf_Click(object sender, EventArgs e)
        {
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    Document pdfDoc = new Document(PageSize.A2, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    using (MemoryStream stream = new MemoryStream())
                    {
                        string imageURL = Server.MapPath(".") + "../../Images/whiteBackground.png";
                        iTextSharp.text.Image chartImage = iTextSharp.text.Image.GetInstance(imageURL);

                        chartImage.ScalePercent(65f);
                        chartImage.ScaleToFit(30f, 30f);
                        chartImage.Alignment = iTextSharp.text.Image.DX;

                        pdfDoc.Add(chartImage);
                    }
                    using (MemoryStream stream = new MemoryStream())
                    {
                        string imageURL = Server.MapPath(".") + "../../Images/whiteBackground.png";
                        iTextSharp.text.Image chartImage = iTextSharp.text.Image.GetInstance(imageURL);

                        chartImage.ScalePercent(65f);
                        chartImage.ScaleToFit(100f, 100f);
                        chartImage.Alignment = iTextSharp.text.Image.DX;

                        pdfDoc.Add(chartImage);
                    }
                    using (MemoryStream stream = new MemoryStream())
                    {
                        string imageURL = Server.MapPath(".") + "../../Images/whiteBackground.png";
                        iTextSharp.text.Image chartImage = iTextSharp.text.Image.GetInstance(imageURL);

                        chartImage.ScalePercent(65f);
                        chartImage.ScaleToFit(30f, 60f);
                        chartImage.Alignment = iTextSharp.text.Image.DY;

                        pdfDoc.Add(chartImage);
                    }
                    using (MemoryStream stream = new MemoryStream())
                    {
                        string imageURL = Server.MapPath(".") + "../../Images/welcome.jpg";
                        iTextSharp.text.Image chartImage = iTextSharp.text.Image.GetInstance(imageURL);

                        chartImage.ScalePercent(65f);
                        chartImage.ScaleToFit(200f, 80f);
                        chartImage.Alignment = iTextSharp.text.Image.DY;

                        pdfDoc.Add(chartImage);
                    }
                    Paragraph paragraph1 = new Paragraph("Project Wise Stackholder Details");
                    paragraph1.Font.Size = 16;
                    pdfDoc.Add(new Paragraph(paragraph1));
                    using (MemoryStream stream = new MemoryStream())
                    {
                        string imageURL = Server.MapPath(".") + "../../Images/whiteBackground.png";
                        iTextSharp.text.Image chartImage = iTextSharp.text.Image.GetInstance(imageURL);

                        chartImage.ScalePercent(65f);
                        chartImage.ScaleToFit(30f, 60f);
                        chartImage.Alignment = iTextSharp.text.Image.DY;

                        pdfDoc.Add(chartImage);
                    }


                    Panel1.RenderControl(hw);
                    StringReader sr = new StringReader(sw.ToString());
                    htmlparser.Parse(sr);
                    Paragraph paragraph4 = new Paragraph("       ");
                    paragraph4.Font.Size = 150;
                    pdfDoc.Add(new Paragraph(paragraph4));
                    DateTime today = DateTime.Now;

                    string datetime = (today.ToString("ddd MMM dd yyyy HH:mm:ss"));
                    Paragraph paragraph3 = new Paragraph("Report Generated On : " + datetime + "");
                    paragraph3.Font.Size = 10;
                    pdfDoc.Add(new Paragraph(paragraph3));

                    pdfDoc.Close();
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=Month_Wise_Order_Details.pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();


                }
            }

           
        }

        //------------Button click Event To Download Excel File of The Bound GridView-----------///
        protected void BtnDownloadExcel_Click(object sender, EventArgs e)
        {
            PrepareControlForExport(GridViewMonthWiseUserOrder);
            ExportGridView();
        }

        //-------------Method to Export Excel File-----//

        private void ExportGridView()
        {
            try
            {
                Response.ClearContent();
                Response.ClearHeaders();

                Response.ContentType = "application/vnd.ms-excel";
                Response.AddHeader("Content-Disposition", "attachment; filename=Monthwise_User_Order_Report.xls");

                StringWriter sw = new StringWriter();
                HtmlTextWriter htw = new HtmlTextWriter(sw);
                GridViewMonthWiseUserOrder.RenderControl(htw);
                Response.Write(sw.ToString());
                Response.End();
            }
            catch (Exception ex)
            {

            }
        }
        //--------Gridview RowCommand Event----///
        protected void GridViewMonthWiseUserOrder_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "details")
                {
                   
                    Session["UserID"] = Convert.ToInt32(e.CommandArgument);
                    Response.Redirect("SpecificUserOrderDescription.aspx");
                   
              }
        
                   

                
        }

    }
}