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
    public partial class Product_Reg : System.Web.UI.Page
    {
        Cls_Products_Registration pr = new Cls_Products_Registration();


        protected void Page_Load(object sender, EventArgs e)
        {
             if (!IsPostBack)
                {

                    if (Request.QueryString["target"] == "AddProduct")
                    {
                        Label13.Text = "Add Product Details";
                        MultiView1.ActiveViewIndex = 0;
                        Btn_View.Visible = true;
                        Btn_Add.Visible = false;
                        Btn_Submit.Visible = true;
                        fetchAllProduct();
                        AllCategory();
                    }
                    else if (Request.QueryString["target"] == "ViewAllProduct")
                    {
                        Label13.Text = "View Product Details";
                        fetchAllProduct();
                        MultiView1.ActiveViewIndex = 1;
                        Btn_View.Visible = false;
                        Btn_Add.Visible = true;
                    }

                }

            }

       
        //--------------Fetch All Product Details In GridView---------////
        private void fetchAllProduct()
        {
            try
            {

                DataTable dt = new DataTable();
                dt = pr.FetchProduct(17);

                if (dt.Rows.Count > 0)
                {
                    GridViewProduct.DataSource = dt;
                    GridViewProduct.DataBind();
                }
                else
                {
                    GridViewProduct.DataSource = null;
                    GridViewProduct.DataBind();
                }

            }
            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }
        }



        private void AllCategory()
        {
            try
            {

                DataTable dt = new DataTable();
                dt = pr.getCategory(5);

                if (dt.Rows.Count > 0)
                {

                    Ddl_Category.DataSource = dt;
                    Ddl_Category.DataTextField = "Category_name";
                    Ddl_Category.DataValueField = "Category_id";
                    Ddl_Category.DataBind();

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

        protected void Category_Subcategory10(object sender, EventArgs e)
        {
            Ddl_SubCategory.Enabled = false;
            try
            {
                //int category = Convert.ToInt32(Ddl_Category.SelectedValue);

                //DataTable dt = new DataTable();
                //dt = pr.getSubCategory(6, category);

                //if (dt.Rows.Count > 0)
                //{

                //    Ddl_SubCategory.DataSource = dt;
                //    Ddl_SubCategory.DataTextField = "Subcategory_name";
                //    Ddl_SubCategory.DataValueField = "Subcategory_id";
                //    Ddl_SubCategory.DataBind();

                //}
                //else
                //{
                //}

                if (Ddl_Category.SelectedValue == "1000")
                {
                   
                    Ddl_SubCategory.Enabled = false;
                    TextCategoryOther.Visible = true;
                    Ddl_SubCategory.Items.Clear();
                    TextSubCatOther.Visible = true;

                }
                else
                {
                   
                    TextCategoryOther.Visible = false;
                    TextSubCatOther.Visible = false;
                    Ddl_Category.Enabled = true;
                    Ddl_SubCategory.Enabled = true;

                    int category = Convert.ToInt32(Ddl_Category.SelectedValue);

                    DataTable dt = new DataTable();
                    dt = pr.getSubCategory(6, category);

                    if (dt.Rows.Count > 0)
                    {

                        Ddl_SubCategory.DataSource = dt;
                        Ddl_SubCategory.DataTextField = "Subcategory_name";
                        Ddl_SubCategory.DataValueField = "Subcategory_id";
                        Ddl_SubCategory.DataBind();

                    }

                }
                
            }
            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }

        }



        protected void radTDS_Change(object sender, EventArgs e)
        {
            int val = Convert.ToInt32(RadiBtn_Prod.SelectedValue);
            if (val == 1)
            {
                Ddl_Size.Visible = true;
                Ddl_Weight.Visible = false;
                div_Grid_Weight.Visible = false;
            }
            else if (val == 2)
            {
                Ddl_Weight.Visible = true;
                Ddl_Size.Visible = false;
                div_Grid_Size.Visible = false;
            }
        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {

            try
            {
                string CategoryName = null;
                string SubCategoryName = null;

                if (Ddl_Category.SelectedValue == "1000")
                {
                    CategoryName = Convert.ToString(TextCategoryOther.Text);
                    SubCategoryName = Convert.ToString(TextSubCatOther.Text);

                }
                else
                {
                    CategoryName = Ddl_Category.SelectedItem.Text;
                    SubCategoryName = Ddl_SubCategory.SelectedItem.Text;
                }

                string size = "";
                string Weight = "";
                string Color = "";
                string Particulars = "";
                string Details = "";
                string Amount = "";

                DataTable dt = new DataTable();

                //if (Btn_Submit.Text == "Save")


                //dt = pr.Insert_Products(1, Convert.ToInt32(Ddl_Category.SelectedValue), Convert.ToInt32(Ddl_SubCategory.SelectedValue), Text_Product_Name.InnerText,
                //    Text_Pro_Description.InnerText, Text_Price.Text, Text_Max_quantity.Text, Text_Discount.Text);

                dt = pr.Insert_Products(1, CategoryName, SubCategoryName, Text_Product_Name.InnerText,
                    Text_Pro_Description.InnerText, Text_Price.Text, Text_Max_quantity.Text, Text_Discount.Text);


                foreach (GridViewRow row in Grid_Size.Rows)
                {
                    TextBox txt1 = row.FindControl("txt_Size") as TextBox;
                    // TextBox txt2 = row.FindControl("txt_Rate") as TextBox;

                    size = txt1.Text;



                    int SizeInsert = pr.InsertSize(2, dt.Rows[0]["ID"], size);
                }

                foreach (GridViewRow row in Grid_Weight.Rows)
                {
                    TextBox txt1 = row.FindControl("txt_Weight") as TextBox;
                    // TextBox txt2 = row.FindControl("txt_Rate") as TextBox;

                    Weight = txt1.Text;



                    int WeightInsert = pr.InsertWeight(3, dt.Rows[0]["ID"], Weight);
                }

                foreach (GridViewRow row in Grid_Color.Rows)
                {
                    //TextBox txt1 = row.FindControl("txt_Weight") as TextBox;
                    FileUpload txt2 = row.FindControl("ColorPic_Upload") as FileUpload;
                    // TextBox txt2 = row.FindControl("txt_Rate") as TextBox;

                    // Weight = txt1.;
                    string Photo = null;
                    DataTable dt2 = new DataTable();
                    dt2 = pr.pickpath(1, "ColorPhotograph");
                    string dbpath = Convert.ToString(dt2.Rows[0]["Config_Value"]);

                    string fileExt = System.IO.Path.GetExtension(txt2.FileName);
                    if (txt2.HasFile)
                    {
                        if (fileExt == ".jpg" || fileExt == ".JPG" || fileExt == ".jpeg" || fileExt == ".JPEG" || fileExt == ".PNG" || fileExt == ".png")
                        {
                            Photo = "Color Photograph" + "_" + DateTime.Now.ToString("yyyy_MM_dd_hh_mm_sss") + fileExt;
                            string colorPath = dbpath + Photo;
                            string Colorlocation = Server.MapPath(colorPath);
                            txt2.SaveAs(Colorlocation);

                            int WeightInsert = pr.InsertColor(4, dt.Rows[0]["ID"], Photo, colorPath);
                        }
                        else
                        {
                            //ViewState["View_Emp_Photograph"]
                        }
                    }
                    else
                    {
                        // name = Convert.ToString(ViewState["View_Emp_Photograph"]);
                    }




                }

                foreach (GridViewRow row in Grid_Photo.Rows)
                {
                    //TextBox txt1 = row.FindControl("txt_Weight") as TextBox;
                    FileUpload txt1 = row.FindControl("ProductPic_Upload") as FileUpload;
                    // TextBox txt2 = row.FindControl("txt_Rate") as TextBox;
                    CheckBox chk = row.FindControl("CheckBox_Pic") as CheckBox;

                    string Flag = "";
                    if (chk.Checked == true)
                    {
                        Flag = "1";
                    }
                    else
                    {
                        Flag = "0";
                    }
                    // Weight = txt1.;
                    string Photo = null;
                    DataTable dt1 = new DataTable();
                    dt1 = pr.pickpath(1, "ProductsPhotograph");
                    string dbpath = Convert.ToString(dt1.Rows[0]["Config_Value"]);

                    string fileExt = System.IO.Path.GetExtension(txt1.FileName);
                    if (txt1.HasFile)
                    {
                        if (fileExt == ".jpg" || fileExt == ".JPG" || fileExt == ".jpeg" || fileExt == ".JPEG" || fileExt == ".PNG" || fileExt == ".png")
                        {
                            Photo = "ProductsPhotograph" + "_" + DateTime.Now.ToString("yyyy_MM_dd_hh_mm_sss") + fileExt;
                            string fsef = dbpath + Photo;
                            string location = Server.MapPath(fsef);
                            txt1.SaveAs(location);

                            int ProductInsert = pr.InsertPhoto(10, dt.Rows[0]["ID"], Photo, fsef, Flag);
                        }
                        else
                        {
                            //ViewState["View_Emp_Photograph"]
                        }
                    }
                    else
                    {
                        // name = Convert.ToString(ViewState["View_Emp_Photograph"]);
                    }




                }
                Response.Redirect("Product_Reg.aspx?target=ViewAllProduct");
            }
            catch (Exception ex)
            {

            }


        }

        protected void Image_Click(object sender, EventArgs e)
        {
            string abc = "hii";
            string def = abc;
        }




        protected void ddl_Size_Ev(object sender, EventArgs e)
        {
            int vall = Convert.ToInt32(Ddl_Size.SelectedValue);

            DataTable dtDetails = new DataTable();
            dtDetails = pr.getCountValues(9, vall);
            if (dtDetails.Rows.Count > 0)
            {
                div_Grid_Size.Visible = true;
                Grid_Size.DataSource = dtDetails;
                Grid_Size.DataBind();
                div_Grid_Weight.Visible = false;
            }
            else
            {
                div_Grid_Size.Visible = false;
                Grid_Size.DataSource = dtDetails;
                Grid_Size.DataBind();
            }

        }

        protected void ddl_Weight_Ev(object sender, EventArgs e)
        {
            int val = Convert.ToInt32(Ddl_Weight.SelectedValue);

            DataTable dtDetails = new DataTable();
            dtDetails = pr.getCountValues(7, val);
            if (dtDetails.Rows.Count > 0)
            {
                div_Grid_Weight.Visible = true;
                Grid_Weight.DataSource = dtDetails;
                Grid_Weight.DataBind();
                div_Grid_Size.Visible = false;
            }
            else
            {
                div_Grid_Weight.Visible = false;
                Grid_Weight.DataSource = dtDetails;
                Grid_Weight.DataBind();
            }

        }


        protected void ddl_Color_Ev(object sender, EventArgs e)
        {
            int val = Convert.ToInt32(Ddl_Color.SelectedValue);

            DataTable dtDetails = new DataTable();
            dtDetails = pr.getCountValues(8, val);
            if (dtDetails.Rows.Count > 0)
            {
                div_Grid_Color.Visible = true;
                Grid_Color.DataSource = dtDetails;
                Grid_Color.DataBind();

            }
            else
            {
                div_Grid_Color.Visible = false;
                Grid_Color.DataSource = dtDetails;
                Grid_Color.DataBind();
            }

        }


        protected void ddl_Photo_Ev(object sender, EventArgs e)
        {
            int val = Convert.ToInt32(Ddl_Pro_Photo.SelectedValue);

            DataTable dtDetails = new DataTable();
            dtDetails = pr.getCountValues(11, val);
            if (dtDetails.Rows.Count > 0)
            {
                div_Pro_Pic.Visible = true;
                Grid_Photo.DataSource = dtDetails;
                Grid_Photo.DataBind();

            }
            else
            {
                div_Pro_Pic.Visible = false;
                Grid_Photo.DataSource = dtDetails;
                Grid_Photo.DataBind();
            }

        }

        protected void Btn_View_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product_Reg.aspx?target=ViewAllProduct");
        }

        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product_Reg.aspx?target=AddProduct");
        }





        protected void GridViewProduct_rowcommand(object sender, GridViewCommandEventArgs e)
        {



            try
            {
                if (e.CommandName == "select")
                {
                    int id = Convert.ToInt32(e.CommandArgument);
                    ViewState["Product_id"] = Convert.ToString(id);
                    Btn_Update.Visible = true;
                    Btn_Submit.Visible = false;
                    DataTable dt = new System.Data.DataTable();
                    dt = pr.Fetch_Product_By_ID(18, id);
                    if (dt.Rows.Count > 0)
                    {
                        Label13.Text = "Add Product Details";
                        MultiView1.ActiveViewIndex = 0;
                        Btn_View.Visible = true;
                        Btn_Add.Visible = false;

                        //AllCategory();
                        //Category_Subcategory10();

                        //ListItem li = new ListItem("Select Location", "0");
                        //Ddl_Category.Items.Insert(0, li);

                        Ddl_Category.SelectedValue = Convert.ToString(dt.Rows[0]["Category_id"]);
                        //------------------------------------------------//
                        try
                        {
                            int category = Convert.ToInt32(Ddl_Category.SelectedValue);

                            DataTable dtc = new DataTable();
                            dtc = pr.getSubCategory(6, category);

                            if (dt.Rows.Count > 0)
                            {

                                Ddl_SubCategory.DataSource = dtc;
                                Ddl_SubCategory.DataTextField = "Subcategory_name";
                                Ddl_SubCategory.DataValueField = "Subcategory_id";
                                Ddl_SubCategory.DataBind();

                            }
                            else
                            {
                            }

                            //ListItem li = new ListItem("Select SubCategory", "0");
                            //Ddl_SubCategory.Items.Insert(0, li);
                        }
                        catch (Exception ex)
                        {
                            string strError = ex.Message.Replace("'", "");
                            Response.Write("<script>alert('" + strError + "');</script>");
                        }

                        //-----------------------------------------------//
                        Ddl_SubCategory.SelectedValue = Convert.ToString(dt.Rows[0]["Subcategory_id"]);
                        Text_Product_Name.InnerText = Convert.ToString(dt.Rows[0]["Product_name"]);
                        Text_Pro_Description.InnerText = Convert.ToString(dt.Rows[0]["Product_description"]);
                        Text_Price.Text = Convert.ToString(dt.Rows[0]["Product_price"]);
                        Text_Max_quantity.Text = Convert.ToString(dt.Rows[0]["Max_quantity"]);
                        Text_Discount.Text = Convert.ToString(dt.Rows[0]["Discount"]);
                        // LabelPId.Text =Convert.ToString(dt.Rows[0]["Product_id"]);
                        //  LabelPNm.Text = Convert.ToString(dt.Rows[0]["Product_name"]);



                    }
                }
                //-------------Code to Delete Product from GridView---------// 
                if (e.CommandName == "Delete")
                {

                    if (IsValid)
                    {

                        Int32 ProductId = Convert.ToInt32(e.CommandArgument);

                        int result = pr.UpdateProductStatus(20, ProductId);

                    }


                    Response.Redirect("Product_Reg.aspx?target=ViewAllProduct");

                }
            }

            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "'); </script>");
            }
        }

        protected void Btn_Update_Click(object sender, EventArgs e)
        {

            try
            {
                int updateProduct = pr.Update_Product(19, Convert.ToInt32(Ddl_Category.SelectedValue), Convert.ToInt32(Ddl_SubCategory.SelectedValue),
                                              Text_Product_Name.InnerText, Text_Pro_Description.InnerText, Text_Price.Text,
                                               Text_Max_quantity.Text, Text_Discount.Text, Convert.ToInt32(ViewState["Product_id"]));


                Response.Redirect("Product_Reg.aspx?target=ViewAllProduct");


            }
            catch (Exception ex)
            {

                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }
        }

        protected void Btn_Cancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product_Reg.aspx?target=AddProduct");

            // MultiView1.ActiveViewIndex = 0;
        }

        protected void Btn_Excel_Export2_Click(object sender, ImageClickEventArgs e)
        {
            PrepareControlForExport(GridViewProduct);
            ExportProductGridView();
        }

        private void ExportProductGridView()
        {
            try
            {
                Response.ClearContent();
                Response.ClearHeaders();

                Response.ContentType = "application/vnd.ms-excel";
                Response.AddHeader("Content-Disposition", "attachment; filename=Product_Details_Report.xls");

                StringWriter sw = new StringWriter();
                HtmlTextWriter htw = new HtmlTextWriter(sw);
                GridViewProduct.RenderControl(htw);
                Response.Write(sw.ToString());
                Response.End();
            }
            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
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
                    Paragraph paragraph1 = new Paragraph("Specific User Order Details");
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
                    Response.AddHeader("content-disposition", "attachment;filename=Product_Details_Report.pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();


                }
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }


    }
}