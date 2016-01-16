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
    public partial class Delivery_Address : System.Web.UI.Page
        
    {
        Cls_Products_Registration pr = new Cls_Products_Registration();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CountryAll();
                //fetchAllLocation();
                //fetchAllState();
                dropdownstate.Enabled = false;
                dropdowncity.Enabled = false;
                fetchAddress();

            }
        }

        private void fetchAddress()
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

        //private void fetchAllState()
        //{
        //    try
        //    {

        //        DataTable dt = new DataTable();
        //        dt = pr.getState(6);

        //        if (dt.Rows.Count > 0)
        //        {

        //            dropdownstate.DataSource = dt;
        //            dropdownstate.DataTextField = "StateName";
        //            dropdownstate.DataValueField = "Stateid";
        //            dropdownstate.DataBind();

        //        }
        //        else
        //        {
        //        }

        //        ListItem li = new ListItem("Select State", "0");
        //        dropdownstate.Items.Insert(0, li);
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //}

        //private void fetchAllLocation()
        //{
        //    try
        //    {

        //        DataTable dt = new DataTable();
        //        dt = pr.getLocation(5);

        //        if (dt.Rows.Count > 0)
        //        {

        //            dropdowncity.DataSource = dt;
        //            dropdowncity.DataTextField = "location_name";
        //            dropdowncity.DataValueField = "location_id";
        //            dropdowncity.DataBind();

        //        }
        //        else
        //        {
        //        }

        //        ListItem li = new ListItem("Select City", "0");
        //        dropdowncity.Items.Insert(0, li);
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //}

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

                //ListItem li = new ListItem("Select Country", "0");
                //dropdowncountry.Items.Insert(0, li);
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
                int location = (Convert.ToInt32(dropdowncity.SelectedValue));
                int country = (Convert.ToInt32(dropdowncountry.SelectedValue));
                int state = (Convert.ToInt32(dropdownstate.SelectedValue));

                int userid = Convert.ToInt32(Session["UserId"]);
                DataTable dt = new DataTable();

                dt = pr.Insert_Products(4, Convert.ToInt32(userid), txtname.Text, country, state,
                                        location,txtpincode.Text, txtaddress.InnerText, txtlandmark.InnerText,
                                        txtphone.Text);

               if (dt.Rows.Count > 0)
               {
                   string Address_Id = Convert.ToString(dt.Rows[0]["ID"]);
                   Session["Address_Id"] = Address_Id;
                   Session["Delivery_Id"] = "";

                   Response.Redirect("Products_Order_Confirm.aspx");
               }
              
            }


            catch(Exception ex)
            {
                string strError = ex.Message.Replace("'", "");
                Response.Write("<script>alert('" + strError + "');</script>");
            }

        
        }

        protected void ddState_SelectedIndexchanged(object sender, EventArgs e)
        {
            
            dropdowncity.Items.Clear();
            dropdowncity.Enabled = true;
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
           // dropdownstate.Items.Clear();
            dropdownstate.Enabled = true;
            dropdownstate.SelectedValue = "0";
            dropdowncity.SelectedValue = "0";
            dropdowncity.Enabled = false;
            
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
    }
}