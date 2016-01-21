<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="Products_Details_View.aspx.cs" Inherits="Grihini.GUI_Form.Products_Details_View" %>
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
<div class="main-wrapper" style="border:1px solid #eae6db; background-color:White; height:550px;">
<div id="validdiv" runat="server" visible="false" style="background-color:#0099cc;">

<div style="width:450px; margin:0 auto; height:30px;">
     <asp:Label ID="lblmsgshow" runat="server" Text="" style="color:White;"></asp:Label>

    <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Btnok_click" Visible="True" style="padding:5px 15px 5px 15px; background-color:#ea9b12; border:none; color:White; cursor:pointer;"/>
    <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Btncancel_click" Visible="true" style="padding:5px 15px 5px 15px; background-color:#ea9b12; border:none; color:White; cursor:pointer;" />
</div>

    </div>

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
       
                          <asp:ImageButton ID="ImageButton2"  runat="server" ImageUrl="../Images/addtocart_false.png"
                           onclick="Btn_addtocart22_Click" Visible="false" Enabled="false"/>
    </div>


      
    <div class="buy2now">
 

    <div class="buy2now"> 

        <asp:LinkButton ID="LinkButto_buynoww" runat="server" onclick="Btn_buynow_Click" class="btn btn-50 btn-50a icon-buy"><span> BUY NOW</span></asp:LinkButton>

        <%--<asp:Button ID="btn_buynow_false" runat="server" Text="BUY NOW (false)" Visible="true" Enabled="false" CssClass="button-0"/>--%>


    </div>



    <%--<div class="buy2now">
   <%-- <asp:Button ID="Button3" runat="server" Text="CHOOSE MORE ITEMS" OnClick="buymore_click" CssClass="button-0" />--%>
              

        <div class="buy2now_2">
            <asp:LinkButton ID="LinkButton_choosemore" OnClick="buymore_click" runat="server" class="btn btn-51 btn-51a icon-choosemore"><span> CHOOSE MORE </span></asp:LinkButton>

          
   
  <%--      <asp:ImageButton ID="ImageButton4" runat="server" Visible="true" style="margin:-36.2px 0 0 160px;"
            ImageUrl="../Images/buymore.png" OnClick="buymore_click"/>--%>

    </div>

    </div>  









        


</div>



</div>

</div>

<div class="product-three">

    <div  id="zoom1">
    
        <asp:Image ID="Product_Image" runat="server" style="height:280px; width:330px;  margin:10px 0 0 5px;" data-big-image="../Images/imgProd/triumph_big1.jpg"   class="tiksluszoom" />
        
    </div>

<%--    <script language="javascript">
        $(document).ready(function () {
            $("#zoom1").tiksluszoom();
        });
		</script>--%>


        <div style="margin:5px 0 0 0;">
        <asp:DataList ID="DataList_Image" runat="server" RepeatDirection="Horizontal">
         <ItemStyle BackColor="White" ForeColor="Black" />
            <ItemTemplate>



            <ul style="list-style-type: none;">
            <li class="title" style="margin:5px;">
                <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl='<%# Eval("Image_path") %>' Height="70" Width="75"  />
                </li>
                </ul>
     
 

            </ItemTemplate>
        </asp:DataList>
    </div>


</div>

</div>
</div>


</asp:Content>
