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
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Configuration;
using Grihini_BL.BL;

namespace Grihini.GUI_Form
{
    public partial class Delivery_Address : System.Web.UI.Page
    {
        Cls_Products_Registration pr = new Cls_Products_Registration();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CountryAll();
                dropdownstate.Enabled = false;
                dropdowncity.Enabled = false;
                fetchAddress();

            }
        }

        private void fetchAddress()
        {
            try
            {
                string userid = Convert.ToString(Session["UserId"]);
                DataTable dtadd = new DataTable();
                dtadd = pr.fetchAdd(2, userid);

                if (dtadd.Rows.Count > 0)
                {
                    DataList_Address.DataSource = dtadd;
                    DataList_Address.DataBind();
                }
            }
            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }

        }



        private void CountryAll()
        {
            try
            {

                DataTable dt = new DataTable();
                dt = pr.getCountry(8);

                if (dt.Rows.Count > 0)
                {

                    dropdowncountry.DataSource = dt;
                    dropdowncountry.DataTextField = "country_name";
                    dropdowncountry.DataValueField = "country_id";
                    dropdowncountry.DataBind();

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

        protected void ImageButton100_Click(object sender, ImageClickEventArgs e)
        {

            try
            {

                int  Country_Id = Convert.ToInt32(dropdowncountry.SelectedValue);
                int State_Id = Convert.ToInt32(dropdownstate.SelectedValue);
                string Location_Name = null;

                if (dropdowncity.SelectedValue == "1000")
                {
                    Location_Name = Convert.ToString(TextOtherLocation.Text);

                }
                else
                {
                    Location_Name = dropdowncity.SelectedItem.Text;
                }
                
                int userid = Convert.ToInt32(Session["UserId"]);
                DataTable dt = new DataTable();

                dt = pr.Insert_Products(4, Convert.ToInt32(userid), txtname.Text, Country_Id, State_Id,
                                        Location_Name, txtpincode.Text, txtaddress.InnerText, txtlandmark.InnerText,
                                        txtphone.Text);

                if (dt.Rows.Count > 0)
                {
                    string Address_Id = Convert.ToString(dt.Rows[0]["ID"]);
                    Session["Address_Id"] = Address_Id;
                    Session["Delivery_Id"] = "";

                    Response.Redirect("Products_Order_Confirm.aspx");
                }

            }


            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }


        }

        protected void ddState_SelectedIndexchanged(object sender, EventArgs e)
        {
            
            dropdowncity.Items.Clear();
            dropdowncity.Enabled = true;
            TextOtherLocation.Visible = false;
            try
            {

                DataTable dt = new DataTable();
                dt = pr.fetchCiryAgaginstState(10, Convert.ToInt32(dropdownstate.SelectedValue));
                if (dt.Rows.Count > 0)
                {
                    dropdowncity.DataSource = dt;
                    dropdowncity.DataTextField = "location_name";
                    dropdowncity.DataValueField = "location_id";
                    dropdowncity.DataBind();

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

        protected void Delivery_Add_Id(object sender, CommandEventArgs e)
        {
            string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
            string Delivery_Id = commandArgs[0];
            //string Stat = commandArgs[0];
            //int approve = Convert.ToInt32(Stat);
            int ID = Convert.ToInt32(Delivery_Id);
            Session["Delivery_Id"] = ID;
            Session["Address_Id"] = "";

            Response.Redirect("Products_Order_Confirm.aspx");
        }

        protected void dropdowncountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            dropdownstate.Items.Clear();
            dropdownstate.Enabled = true;
            dropdownstate.SelectedValue = "0";
            dropdowncity.SelectedValue = "0";
            dropdowncity.Enabled = false;
            dropdowncity.Items.Clear();
            TextOtherLocation.Visible = false;
            try
            {

                DataTable dt = new DataTable();
                dt = pr.fetchStateAgainstCountry(9, Convert.ToInt32(dropdowncountry.SelectedValue));
                if (dt.Rows.Count > 0)
                {
                    dropdownstate.DataSource = dt;
                    dropdownstate.DataTextField = "StateName";
                    dropdownstate.DataValueField = "Stateid";
                    dropdownstate.DataBind();

                }
                else
                {
                    dropdownstate.Enabled = false;
                    dropdowncity.Enabled = false;
                }

            }

            catch (Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }


        }

        protected void dropdowncity_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (dropdowncity.SelectedValue == "1000")
                {
                    TextOtherLocation.Visible = true;
                    dropdowncity.Enabled = false;

                }
                else
                {
                    TextOtherLocation.Visible = false;
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