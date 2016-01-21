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
    public partial class User_Registration : System.Web.UI.Page
    {

        Cls_User_Registration ud = new Cls_User_Registration();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //------------Query String to redirect Add User details---------//
                if (Request.QueryString["target"] == "AddUserDetails")
                {

                    MultiView1.ActiveViewIndex = 0;
                    Btn_Add.Visible = false;
                    Button1.Visible = true;
                    CountryAll();
                    Ddl_State.Enabled = false;
                    Ddl_Location.Enabled = false;
                }
                else if(Request.QueryString["target"] == "ViewUserDetails")
                {
                    fetchUserDetailsInGridView();
                    MultiView1.ActiveViewIndex = 1;
                    Btn_View.Visible = false;
                    Btn_Add.Visible = true;
                }

            }
        }


        private void CountryAll()
        {
            Ddl_Country.Items.Clear();
            try
            {
                DataTable dt = new DataTable();
                dt = ud.getCountry(4);

                if (dt.Rows.Count > 0)
                {

                    Ddl_Country.DataSource = dt;
                    Ddl_Country.DataTextField = "country_name";
                    Ddl_Country.DataValueField = "country_id";
                    Ddl_Country.DataBind();

                }
                else
                {
                }
             }
            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }
        }

        //-----------Button Click Event of resset button-------------//
        protected void Btn_Reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Registration.aspx");
        }

        //-----------------Button click event for Submit button for User Details-------------//
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int CountryId=Convert.ToInt32(Ddl_Country.SelectedValue);
                int StateId = Convert.ToInt32(Ddl_State.SelectedValue);
                string LocationName = null;
                string Date = Request.Form[Text_Dob.UniqueID];

                if (Ddl_Location.SelectedValue == "1000")
                {
                    LocationName = Convert.ToString(TextLocationOther.Text);

                }
                else
                
                {
                    LocationName = Ddl_Location.SelectedItem.Text;
                }


                int reg = ud.Insert_Data(1, Convert.ToString(DdlTitle.SelectedValue), Text_First_Name.Text, Text_Middle_Name.Text, Text_Last_Name.Text,
                   Ddl_Gender.SelectedValue, Date, Text_MobileNo.Text, Text_Email.Text, CountryId,
                   StateId, LocationName, Text_Emp_Id.Text);

                if (reg > 0)
                {
                    Session["EmailId"] = Convert.ToString(Text_Email.Text);
                    Session["FirstName"] = Convert.ToString(Text_First_Name.Text);
                    Session["LastName"] = Convert.ToString(Text_Last_Name.Text);
                    Response.Redirect("Home.aspx");

                }
            }
            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }

        }

        //---------------Binding Location in Location Dropdownlist Against selected State-------//
        protected void ddState_SelectedIndexchanged(object sender, EventArgs e)
        {
            Ddl_Location.Items.Clear();
            Ddl_Location.Enabled = true;
            TextLocationOther.Visible = false;
            try
            {

                DataTable dt = new DataTable();
                dt = ud.fetchlocation(6, Convert.ToInt32(Ddl_State.SelectedValue));
                if (dt.Rows.Count > 0)
                {
                    Ddl_Location.DataSource = dt;
                    Ddl_Location.DataTextField = "location_name";
                    Ddl_Location.DataValueField = "location_id";
                    Ddl_Location.DataBind();

                }
                else
                {

                }
            }

            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }

        }

        //---------------Binding State in State Dropdownlist Against selected country-------//
        protected void Ddl_Country_SelectedIndexChanged(object sender, EventArgs e)
        {
            Ddl_State.Items.Clear();
            Ddl_State.Enabled = true;
            Ddl_State.SelectedValue = "0";
            Ddl_Location.SelectedValue = "0";
            Ddl_Location.Enabled = false;
            Ddl_Location.Items.Clear();
            TextLocationOther.Visible = false;

            try
            {

                DataTable dt = new DataTable();
                dt = ud.fetchState(5, Convert.ToInt32(Ddl_Country.SelectedValue));
                if (dt.Rows.Count > 0)
                {
                    Ddl_State.DataSource = dt;
                    Ddl_State.DataTextField = "StateName";
                    Ddl_State.DataValueField = "Stateid";
                    Ddl_State.DataBind();
                    
                }
                else
                {

                }
            }

            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }
        }

        //------------Buttton Click event for View User Details in GridView---------//
        protected void Btn_View_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            MultiView1.Visible = true;
            fetchUserDetailsInGridView();
        }

        //------------Fetching User Details in GridView---------//
        private void fetchUserDetailsInGridView()
        {
            try
            {

                DataTable dt = new DataTable();
                dt = ud.FetchUserDetails(3);

                if (dt.Rows.Count > 0)
                {
                    GridView_User_Details.DataSource = dt;
                    GridView_User_Details.DataBind();
                }
                else
                {
                    GridView_User_Details.DataSource = null;
                    GridView_User_Details.DataBind();
                }

            }
            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }
        }

        //------------Buttton Click event for View User Details in GridView---------//
        protected void Btn_View_Click1(object sender, EventArgs e)
        {
            Response.Redirect("User_Registration.aspx?target=ViewUserDetails");
        }

        //------------Buttton Click event for Add User Details---------//
        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Registration.aspx?target=AddUserDetails");
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
        //------------Buttton Click event to Download Excel Sheet from GridView---------//
        protected void Btn_Excel_Export2_Click(object sender, ImageClickEventArgs e)
        {
            PrepareControlForExport(GridView_User_Details);
            ExportGridView();
        }

        private void ExportGridView()
        {
            try
            {
                Response.ClearContent();
                Response.ClearHeaders();

                Response.ContentType = "application/vnd.ms-excel";
                Response.AddHeader("Content-Disposition", "attachment; filename=User_Details_Report.xls");

                StringWriter sw = new StringWriter();
                HtmlTextWriter htw = new HtmlTextWriter(sw);
                GridView_User_Details.RenderControl(htw);
                Response.Write(sw.ToString());
                Response.End();
            }
            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }
        }

        //------------Buttton Click event to Download Pdf from GridView---------//
        protected void Btn_Pdf_Export2_Click(object sender, ImageClickEventArgs e)
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
                    Paragraph paragraph1 = new Paragraph("User Details Report");
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


                    Panel3.RenderControl(hw);
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
                    Response.AddHeader("content-disposition", "attachment;filename=User_Details_Report.pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();


                }
            }
        }
        //------------Verify Rendering In Server Form To Download Pdf File of GridView--------///

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void Ddl_Location_SelectedIndexChanged(object sender, EventArgs e)
        {
             try
            {
                if (Ddl_Location.SelectedValue == "1000")
                {
                    TextLocationOther.Visible = true;

                }
                else
                {
                    TextLocationOther.Visible = false;

                    
                }
            }

            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }


    
        }

        


    }
}