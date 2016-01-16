<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="Track_My_Order.aspx.cs" Inherits="Grihini.GUI_Form.Track_My_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../CSS/track_order_style.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/style.css" rel="stylesheet" type="text/css" />

<div class="wrapper" style="background-color:White; height:500px;">
<div class="main-wrapper">

<div style="margin-top:5px; float:left;">
<div style="float:left; width:1024px;">
<div class="t_order_products_one">
<div class="t_order_products_orderno">ORDER NO :</div>
<div class="t_order_products_orderno_area"></div>
<div class="t_order_products_orderno">ORDER PLACED ON :</div>
<div class="t_order_products_orderno_area"></div>
</div>
<div style="float:left; width:1024px; background-color:#cceef9;">
<div style="float:left; width:169px; height:122px; margin:0 0 0 0;"><img src="../Images/c4.png" /></div>

<div class="t_order_products_name_area">
<div class="t_order_products_name">Product Name Text</div>
<div class="t_order_products_status">Status</div>
<div class="t_order_products_date">Delivered On Sat,Dec 2016</div>

</div>
</div>
<div class="t_order_border"></div>
</div>
</div>


</div>
</div>

<%--<asp:GridView ID="GridView_Pro" runat="server" AutoGenerateColumns="false" AllowPaging="false" EmptyDataText="No Product"
     AllowSorting="false" Visible="true" Width="1024px">



    <Columns>

    <asp:TemplateField HeaderText="Order Id"   ControlStyle-Font-Size="12px" >
            <ItemTemplate>
            <asp:Label ID="lbl_Item" runat="server" Text='<%#Eval("Order_Id") %>'></asp:Label>
            

            </ItemTemplate>
            </asp:TemplateField>

  <asp:TemplateField HeaderText="ITEM"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Item" runat="server" Text='<%#Eval("Product_name") %>'></asp:Label>
            

            </ItemTemplate>
            </asp:TemplateField>

            <asp:ImageField DataImageUrlField="ImageName2" ControlStyle-Width="100"
        ControlStyle-Height = "100" HeaderText = "Preview Image"/>

      

  <asp:TemplateField HeaderText="QTY"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_QTY" runat="server" Text='<%#Eval("Quantity") %>'></asp:Label>

            </ItemTemplate>
            </asp:TemplateField>

  <asp:TemplateField HeaderText="PRICE (Rs.)"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_PRICE" runat="server" text='<%#Eval("Product_price") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

  <asp:TemplateField HeaderText="Subtotal (Rs.)"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Subtotal" runat="server" text='<%#Eval("Subtotal") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

           <asp:TemplateField HeaderText="Order Status"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Subtotal" runat="server" text='<%#Eval("Order_Status") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
  
  
  </Columns>



    </asp:GridView>--%>
<%--<asp:DataList ID="DataList_Address" runat="server" 
           
            Font-Names="Verdana" Font-Size="Small" RepeatColumns="3" RepeatDirection="Horizontal"
            Width="200px" OnCommand="image_command">         
           
            <ItemStyle BackColor="White" ForeColor="Black"/>
            <ItemTemplate>               
                    <div id="pricePlans">
                    <ul id="plans" style="list-style-type: none;">
                        <li class="plan">
                            <ul class="planContainer" style="list-style-type: none;">
               
        <li class="title" style="margin:8px 0 0 0;">
         <b>Name:</b> 
             <asp:Label ID="Label3" runat="server" Text='<%# Eval("Name") %>'></asp:Label>  
                
        </li>                

    <li class="title">                
                

    </li>
    <li class="title" style="margin:8px 0 0 0;">  
    <b>Address:</b> 
                <asp:Label ID="lblCName" runat="server" Text='<%# Eval("Address") %>'></asp:Label>

                 <asp:Label ID="lbl_Country" runat="server" Text='<%#Eval("Country_Id") %>'></asp:Label>
                 <asp:Label ID="lbl_State" runat="server" text='<%#Eval("State_Id") %>'></asp:Label>
                 <asp:Label ID="lbl_City" runat="server" text='<%#Eval("City_Id") %>'></asp:Label>

                   <asp:Label ID="lbl_Landmark" runat="server" text='<%#Eval("Landmark") %>'></asp:Label>
                    
</li>
<li class="title" style="margin:8px 0 0 0;"> 
<b>PinCode:</b>
<asp:Label ID="lbl_Pincode" runat="server" text='<%#Eval("Pincode") %>'></asp:Label>
</li>
<li class="title" style="margin:5px 0 0 0;">  
<b>Phone No:</b>    
                <asp:Label ID="lblName" runat="server" Text='<%# Eval("PhoneNo") %>'></asp:Label>
</li>
              
                
                <br />     
                                
</ul>
                          
                </li>
                </ul>
                </div>

            </ItemTemplate>
        </asp:DataList>--%>



</asp:Content>
