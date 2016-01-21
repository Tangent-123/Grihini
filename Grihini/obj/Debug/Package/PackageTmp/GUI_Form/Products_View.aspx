<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="Products_View.aspx.cs" Inherits="Grihini.GUI_Form.Products_View" %>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp_Ajax" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../CSS/b_new.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/viewstyle.css" rel="stylesheet" type="text/css" />

<div class="wrapper" >
<div class="sportsproduct">
<div class="main-wrapper" style="box-shadow:0px 1px solid #222;">
<div class="sportsproduct-one" style="background-color:#FFF;">

<%--<div class="sportsproduct-two">
<div class="refine" id="pri" runat="server" visible="false">
<div class="refine-one">

<div class="refine-txt">REFINE</div>
<div class="refine-line"></div>

<div class="refine-check-box">
<div class="refine-txt" style="font-size:14px;">PRICE</div>

<div style="margin-top:10px; float:left;"> 
    <asp:CheckBox ID="CheckBox1" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label1" runat="server" CssClass="refine-check-txt" Text="Rs. 100 & Below"></asp:Label>
</div>
<div style="margin-top:10px; float:left;"> 
    <asp:CheckBox ID="CheckBox2" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label2" runat="server" CssClass="refine-check-txt" Text="Rs. 101 - Rs. 200"></asp:Label>
</div>
<div style="margin-top:10px; float:left;"> 
    <asp:CheckBox ID="CheckBox3" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label3" runat="server" CssClass="refine-check-txt" Text="Rs. 201 & Rs. 300"></asp:Label>
</div>
<div style="margin-top:10px; float:left;"> 
    <asp:CheckBox ID="CheckBox4" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label4" runat="server" CssClass="refine-check-txt" Text="Rs. 301 - Rs. 400"></asp:Label>
</div>
<div style="margin-top:10px; float:left;"> 
    <asp:CheckBox ID="CheckBox5" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label5" runat="server" CssClass="refine-check-txt" Text="Rs. 401 - Rs. 500"></asp:Label>
</div>
<div style="margin-top:10px; float:left;"> 
    <asp:CheckBox ID="CheckBox6" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label6" runat="server" CssClass="refine-check-txt" Text="Rs. 501 & Rs. 600"></asp:Label>
</div>
<div style="margin-top:10px; float:left;"> 
    <asp:CheckBox ID="CheckBox7" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label7" runat="server" CssClass="refine-check-txt" Text="Rs. 601 - Rs. 1000"></asp:Label>
</div>
<div style="margin-top:10px; float:left;"> 
    <asp:CheckBox ID="CheckBox8" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label8" runat="server" CssClass="refine-check-txt" Text="Rs. 1001 & Rs. 2000"></asp:Label>
</div>
<div style="margin-top:10px; float:left;"> 
    <asp:CheckBox ID="CheckBox9" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label9" runat="server" CssClass="refine-check-txt" Text="Rs. 2001 - Rs. 5000"></asp:Label>
</div>




</div>

<div class="refine-check-box" style="margin-top:30px; width:231px">
<div class="refine-txt" style="font-size:14px;">DISCOUNT</div>

<div style="margin-top:10px; float:left; width:231px"> 
    <asp:CheckBox ID="CheckBox10" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label10" runat="server" CssClass="refine-check-txt" Text="Upto 10%"></asp:Label>
</div>
<div style="margin-top:10px; float:left; width:231px"> 
    <asp:CheckBox ID="CheckBox11" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label11" runat="server" CssClass="refine-check-txt" Text="10% - 20%"></asp:Label>
</div>
<div style="margin-top:10px; float:left; width:231px"> 
    <asp:CheckBox ID="CheckBox12" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label12" runat="server" CssClass="refine-check-txt" Text="20% - 30%"></asp:Label>
</div>
<div style="margin-top:10px; float:left; width:231px"> 
    <asp:CheckBox ID="CheckBox13" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label13" runat="server" CssClass="refine-check-txt" Text="30% - 40%"></asp:Label>
</div>
<div style="margin-top:10px; float:left; width:231px"> 
    <asp:CheckBox ID="CheckBox14" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label14" runat="server" CssClass="refine-check-txt" Text="40% - 50%"></asp:Label>
</div>
<div style="margin-top:10px; float:left; width:231px"> 
    <asp:CheckBox ID="CheckBox15" runat="server" style="margin-top:1px; float:left;" />
    <asp:Label ID="Label15" runat="server" CssClass="refine-check-txt" Text="More then 50%"></asp:Label>
</div>





</div>


</div>
</div>
</div>--%>

<div class="all-product" style="width:1024px; float:left;">
<div class="all-product-one" style="background-color:#006cb4; width:1024px; float:left; height:25px;" >
<div style="font-family:Cambria; font-size:18px; text-align:center; margin:5px 0 0 0; color:White;">List  Of Products</div>
</div>

<div class="clear"></div>


<div>
<asp:DataList ID="DataList1" runat="server" 
           
            Font-Names="Verdana" Font-Size="Small" RepeatColumns="4" RepeatDirection="Horizontal"
            Width="780px" OnCommand="image_command">         
           
            <ItemStyle BackColor="White" ForeColor="Black"/>
            <ItemTemplate>               
                    <div id="pricePlans">
                    <ul id="plans">
                        <li class="plan">
                            <ul class="planContainer">
               
        <li class="title" style="margin:8px;">
                <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl='<%# Eval("Image_path") %>' OnCommand="image_command" CommandArgument='<%#Eval("Product_id")%>'  Height="280" Width="240" />
                
        </li>                

    <li class="title">                
                

    </li>
    <li class="title" style="margin:8px 0 0 0;">  
                <asp:Label ID="lblCName" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
</li>
<li class="title" style="margin:5px 0 0 0;">  
<b>Rs.</b>    
                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Product_price") %>'></asp:Label>
</li>
              
               <%-- <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/viewaddtocart.png" style="margin:5px 0 0 0; padding:0 0 10px 0;" />--%>
                <br />     
                                

                </li>
                </ul>
                </div>

            </ItemTemplate>
        </asp:DataList>

</div>
</div>
</div>
</div>
</div>
</div>



</asp:Content>
