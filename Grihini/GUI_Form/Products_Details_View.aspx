﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="Products_Details_View.aspx.cs" Inherits="Grihini.GUI_Form.Products_Details_View" %>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<link href="../CSS/b_new.css" rel="stylesheet" type="text/css" />
<link href="../CSS/style.css" rel="stylesheet" type="text/css" />

<script src="../JS/min2.js" type="text/javascript"></script>
<script src="../JS/tiks.js" type="text/javascript"></script>
<link href="../CSS/tikszoom.css" rel="stylesheet" type="text/css" />


<style type"text/css">

body{margin:0px;padding:0px;font-family:Arial;}
a img,:link img,:visited img { border: none; }
table { border-collapse: collapse; border-spacing: 0; }
:focus { outline: none; }
*{margin:0;padding:0;}
p, blockquote, dd, dt{margin:0 0 8px 0;line-height:1.5em;}
fieldset {padding:0px;padding-left:7px;padding-right:7px;padding-bottom:7px;}
fieldset legend{margin-left:15px;padding-left:3px;padding-right:3px;color:#333;}
dl dd{margin:0px;}
dl dt{}

.clearfix:after{clear:both;content:".";display:block;font-size:0;height:0;line-height:0;visibility:hidden;}
.clearfix{display:block;zoom:1}


ul#thumblist{display:block;}
ul#thumblist li{float:left;margin-right:2px;list-style:none;}
ul#thumblist li a{display:block;border:1px solid #CCC;}
ul#thumblist li a.zoomThumbActive{
    border:1px solid red;
}

.jqzoom{
	text-decoration:none;
	float:left;
}

</style>


    <link href="../CSS/button2.css" rel="stylesheet" type="text/css" />


<div class="wrapper">
<div id="validdiv" runat="server" visible="false" style="background-color:#0099cc;">

<div style="width:450px; margin:0 auto; height:30px;">
     <asp:Label ID="lblmsgshow" runat="server" Text="" style="color:White;"></asp:Label>

    <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Btnok_click" Visible="True" style="padding:5px 15px 5px 15px; background-color:#ea9b12; border:none; color:White; cursor:pointer;"/>
    <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Btncancel_click" Visible="true" style="padding:5px 15px 5px 15px; background-color:#ea9b12; border:none; color:White; cursor:pointer;" />
</div>

    </div>
<div class="main-wrapper" style="border:1px solid #eae6db; background-color:White; height:580px;">
<div class="product-one"><img src="../Images/add1.png" /></div>

<div class="product-two">    


<div class="productdetails">

    <div class="productdetails-one">
        <asp:Label ID="Lbl_Pro_Name" runat="server" Text=""></asp:Label>
    
    </div>

    <div class="productdetails-two">
    Rs.
    <asp:Label ID="Lbl_Price" runat="server" Text=""></asp:Label>
    </div>

    <div class="productdetails-three">
     <asp:Label ID="Lbl_Description" runat="server" Text=""></asp:Label>
    </div>

    <div class="productdetails-four">

    <div class="selectsize">
    <div class="selectsize-one">Select Size</div>
    <div class="selectsize-two">
    <div>
        <asp:DropDownList ID="Ddl_Size" runat="server" style="width:130px; height:31px;">
        </asp:DropDownList>
    </div>
    </div>
    </div>

    <div class="quanti">
    <div class="selectsize-one">Select Quantity</div>
    <div class="selectsize-two">
    <div>
        <asp:DropDownList ID="Ddl_Quantity" runat="server" style="width:130px; height:31px;">
        </asp:DropDownList>
    </div>
    </div>
    </div>   

    <div class="color" style="float:left; margin:0 0 0 60px;">
    <div>

        <asp:DataList ID="DataList_Image_Color" runat="server" RepeatDirection="Horizontal">
         <HeaderTemplate><div style="font-family:Arial; font-size:12px; color:#666;">Product Color</div></HeaderTemplate>
         <ItemStyle />
            <ItemTemplate>
            <div style="margin-top:8px;">
                <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl='<%# Eval("Colour_Path") %>' Height="30" Width="30"  />
               </div> 
            </ItemTemplate>
        </asp:DataList>
    </div>
    </div>

    </div>


    <div class="button">
    <div class="add2cart">
     <asp:LinkButton ID="LinkButtonAddTocart" runat="server" OnClick="Btn_addtocart22_Click" class="btn btn-5 btn-5a icon-cart"><span> ADD TO CART</span></asp:LinkButton>
        <%--<asp:Button ID="Btn_AddtoCart" runat="server" Text="ADD TO CART" onclick="Btn_addtocart22_Click" Visible="true" cssclass="button-0" style="background-color:#77cc6d;"/>--%>
        <%--<asp:ImageButton ID="Btn_addtocart22"  runat="server" 
                           onclick="Btn_addtocart22_Click" Visible="true" --%>
                           
                         <%--  cssclass="button-0"/>--%>

                           <%--ImageUrl="../Images/addtocart2.png" --%>
       <%-- <asp:Button ID="Btn_Addtocartfalse" runat="server" Text="ADD TO CART(false)" Visible="false" Enabled="false" cssclass="button-0"
                            onclick="Btn_addtocart22_Click"/>--%>
                            <asp:ImageButton ID="ImageButton2"  runat="server" ImageUrl="../Images/addtocart_false.png"
                           onclick="Btn_addtocart22_Click" Visible="false" Enabled="false"/>
        </div>

    <div class="buy2now"> 

        <asp:LinkButton ID="LinkButto_buynoww" runat="server" onclick="Btn_buynow_Click" class="btn btn-50 btn-50a glyphicon-heart"><span> BUY NOW</span></asp:LinkButton>

<%--        <asp:Button ID="btn_buynoww" runat="server" Text="BUY NOW" Visible="true"  CssClass="button-0"/>--%>
    <%--<a href="#"><img src="../Images/buynow.png"/></a>--%>
       <%-- <asp:ImageButton ID="Btn_buynow" runat="server" Visible="true" 
            ImageUrl="../Images/buynow.png" onclick="Btn_buynow_Click" />--%>
        <asp:Button ID="btn_buynow_false" runat="server" Text="BUY NOW (false)" Enabled="false" CssClass="button-0" Visible="false"/>

           <%-- <asp:ImageButton ID="ImageButton3" runat="server" Visible="true" 
            ImageUrl="../Images/buynow_FALSE.png"  onclick="Btn_buynow_Click" Enabled="false"/>--%>
    </div>

    <div class="buy2now_2">
            <asp:LinkButton ID="LinkButton_choosemore" OnClick="buymore_click" runat="server" class="btn btn-51 btn-51a glyphicon-plus"><span> CHOOSE MORE</span></asp:LinkButton>

           <%-- <asp:Button ID="Button3" runat="server" Text="CHOOSE MORE PRODUCTS"  CssClass="btn btn-5 btn-5a glyphicon-plus" style="width:254px;" />--%>
   
  <%--      <asp:ImageButton ID="ImageButton4" runat="server" Visible="true" style="margin:-36.2px 0 0 160px;"
            ImageUrl="../Images/buymore.png" OnClick="buymore_click"/>--%>
    </div>

    </div>

    </div>  


<div class="product-three">

    <div  id="zoom1">
    
        <asp:Image ID="Product_Image" runat="server" style="height:300px; width:350px; border: 3px solid #666; margin:0 0 0 0;" data-big-image="../Images/imgProd/triumph_big1.jpg"   class="tiksluszoom" />
        
    </div>

<%--    <script language="javascript">
        $(document).ready(function () {
            $("#zoom1").tiksluszoom();
        });
		</script>--%>


        <div style="margin:5px 0 0 0;">
        <asp:DataList ID="DataList_Image" runat="server" RepeatDirection="Horizontal">
         <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />
            <ItemTemplate>

                <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl='<%# Eval("Image_path") %>' Height="70" Width="100"  />
                
            </ItemTemplate>
        </asp:DataList>
    </div>


</div>






        


</div>



</div>
</div>


<%--<!-- ModalPopupExtender -->
           <div id="divOpenner" runat="server" />
        <cc1:ModalPopupExtender ID="mp7" runat="server" PopupControlID="Panel7" TargetControlID="divOpenner"
            CancelControlID="btnClose" BackgroundCssClass="modalBackground">
        </cc1:ModalPopupExtender>
        <asp:Panel ID="Panel7" runat="server" CssClass="modalPopuppop" align="center" style = "display:none">
            <div class="popup_header">
        Meesage from Webpage
        </div>
        <div id="dialog" style="width:100%; height:30px; margin:25px 0 0 0; float:left;">
           
            <asp:Label ID="lblmsgshow" runat="server" Font-Size="13px" ForeColor="Red" Text="" Visible="true" CssClass="errortext"></asp:Label>

            </div>
            <div style="float:left; margin:20px 0 0 125px;">
            <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="btn_mouuu" Height="25px" Width="80px" />
            </div>

            <div style="float:left; margin:20px 0 0 125px;">
            <asp:Button ID="BtnOk" runat="server" Text="Ok" CssClass="btn_mouuu" Height="25px" Width="80px" OnClick="BtnOk_click" />
            </div>
        </asp:Panel>
<!-- ModalPopupExtender -->--%>
</asp:Content>
