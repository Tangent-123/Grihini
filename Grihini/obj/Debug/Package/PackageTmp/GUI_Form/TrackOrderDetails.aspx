<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="TrackOrderDetails.aspx.cs" Inherits="Grihini.GUI_Form.TrackOrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link href="../CSS/track_order.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="../Images/favicon_icon.png"  />
 <link href="../CSS/newstyle.css" rel="stylesheet" type="text/css" />
 

    <script src="../BootStrap_Contents/BootStrap_Js/jquerymin.js" type="text/javascript"></script>
    <script src="../BootStrap_Contents/BootStrap_Js/bootstrap.js" type="text/javascript"></script>
    <script src="../BootStrap_Contents/BootStrap_Js/bootstrap.min.js" type="text/javascript"></script>
    <link href="../BootStrap_Contents/BootStrap_Css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../BootStrap_Contents/BootStrap_Css/bootstrap.min.css" rel="stylesheet"
        type="text/css" />

  <style>
  
  

.board{
width: 55%;
margin: 10px auto;
height: 300px;
background: #fff;
}
.board .nav-tabs {
    position: relative;
    margin:0 auto;
    margin-bottom: 0;
    box-sizing: border-box;

}



p.narrow{
    width: 70%;
    margin: 0 auto;
}

.liner{
    height: 2px;
    background: #ddd;
    position: absolute;
    width: 75%;
    margin: 0 auto;
    left: 0;
    right: 0;
    top: 50%;
    z-index: 1;
}

.nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
    color: #555555;
    cursor: default;
    /* background-color: #ffffff; */
    border: 0;
    border-bottom-color: transparent;
}

span.round-tabs{
    width: 13px;
    height: 13px;
    line-height: 20px;
    display: inline-block;
    border-radius: 20px;
    background: white;
    z-index: 2;
    position: absolute;
    left: 0;
    text-align: center;
    font-size: 25px;
}

span.round-tabs.one{
    color: rgb(34, 194, 34);border: 2px solid rgb(34, 194, 34);
}

li.active span.round-tabs.one{
    background: #fff !important;
    border: 2px solid #ddd;
    color: rgb(34, 194, 34);
}

span.round-tabs.two{
    color: #febe29;border: 2px solid #febe29;
}

li.active span.round-tabs.two{
    background: #fff !important;
    border: 2px solid #ddd;
    color: #febe29;
}

span.round-tabs.three{
    color: #3e5e9a;border: 2px solid #3e5e9a;
}

li.active span.round-tabs.three{
    background: #fff !important;
    border: 2px solid #ddd;
    color: #3e5e9a;
}

span.round-tabs.four{
    color: #f1685e;border: 2px solid #f1685e;
}

li.active span.round-tabs.four{
    background: #fff !important;
    border: 2px solid #ddd;
    color: #f1685e;
}

span.round-tabs.five{
    color: #999;border: 2px solid #999;
}

li.active span.round-tabs.five{
    background: #fff !important;
    border: 2px solid #ddd;
    color: #999;
}

.nav-tabs > li.active > a span.round-tabs{
    background: #fafafa;
}
.nav-tabs > li {
    width: 25%;
}
/*li.active:before {
    content: " ";
    position: absolute;
    left: 45%;
    opacity:0;
    margin: 0 auto;
    bottom: -2px;
    border: 10px solid transparent;
    border-bottom-color: #fff;
    z-index: 1;
    transition:0.2s ease-in-out;
}*/
li:after {
    content: " ";
    position: absolute;
    left: 45%;
   opacity:0;
    margin: 0 auto;
    bottom: 0px;
    border: 5px solid transparent;
    border-bottom-color: #ddd;
    transition:0.1s ease-in-out;
    
}
li.active:after {
    content: " ";
    position: absolute;
    left: 45%;
   opacity:1;
    margin: 0 auto;
    bottom: 0px;
    border: 10px solid transparent;
    border-bottom-color: #ddd;
    
}
.nav-tabs > li a{
   width: 13px;
   height: 13px;
   margin: 20px auto;
   border-radius: 100%;
   padding: 0;
}

.nav-tabs > li a:hover{
    background: transparent;
}

.tab-content{
}
.tab-pane{
   position: relative;
padding-top: 50px;
}
.tab-content .head{
    font-family: 'Roboto Condensed', sans-serif;
    font-size: 25px;
    text-transform: uppercase;
    padding-bottom: 10px;
}
.btn-outline-rounded{
    padding: 10px 40px;
    margin: 20px 0;
    border: 2px solid transparent;
    border-radius: 25px;
}

.btn.green{
    background-color:#5cb85c;
    /*border: 2px solid #5cb85c;*/
    color: #ffffff;
}


@media( max-width : 585px ){
    
    .board {
width: 90%;
height:auto !important;
}
    span.round-tabs {
        font-size:16px;
width: 50px;
height: 50px;
line-height: 50px;
    }
    .tab-content .head{
        font-size:20px;
        }
    .nav-tabs > li a {
width: 50px;
height: 50px;
line-height:50px;
}

li.active:after {
content: " ";
position: absolute;
left: 35%;
}

.btn-outline-rounded {
    padding:12px 20px;
    }
}

  
  </style>



<div class="wrapper" style="background-color:White; height:500px;">
<div class="main-wrapper">

<div style="margin-top:5px; float:left;">
<div style="float:left; width:1024px;">
<div class="t_order_products_one" style=" height:50px;">
<div class="t2_bar" style="border-right:2px solid #fff;">
<div class="t2_bar_txt">ORDER ON</div>
<div class="t2_bar_txt" style="font-weight:normal; font-family:Arial;">20 Dec 2016</div>
</div>
<div class="t2_bar" style="border-right:2px solid #fff;">
<div class="t2_bar_txt">ITEMS</div>
<div class="t2_bar_txt" style="font-weight:normal; font-family:Arial;">1</div>
</div>
<div class="t2_bar">
<div class="t2_bar_txt">GRAND TOTAL</div>
<div class="t2_bar_txt" style="font-weight:normal; font-family:Arial;">2100.00</div>
</div>


</div>
<div style="float:left; width:1024px; background-color:#cceef9;">


<div>
<div style="float:left; width:1024px; background-color:#cceef9;">
<div style="float:left; width:250px; height:200px; margin:0 0 0 0;"><img src="../Images/p6.jpg" width="250" height="200" /></div>

<div class="t_order_products_name_area">
<div class="t_order_products_name">Product Name Text</div>
<div class="t_order_products_status">Status</div>
<div class="t_order_products_date">Delivered On Sat,Dec 2016</div>

</div>

<div style="float:right; width:530px; height:200px; background-color:#f1f0ee;">
<div class="t2_bar_progress">

<div class="t2_bar_progress_txt" style="margin:8px 0 0 20px;">CONFIRM</div>
<div class="t2_bar_progress_arrow" style="margin:8px 0 0 100px;"><img src="../Images/arrow.png" /></div>

<div class="t2_bar_progress_txt" style="margin:-14px 0 0 90px;">DISPATCH</div>
<div class="t2_bar_progress_arrow" style="margin:-14px 0 0 250px;"><img src="../Images/arrow.png" /></div>

<div class="t2_bar_progress_txt" style="margin:-18px 0 0 238px;">IN TRANSIT</div>
<div class="t2_bar_progress_arrow" style="margin:-14px 0 0 400px;"><img src="../Images/arrow.png" /></div>

<div class="t2_bar_progress_txt" style="margin:-21px 0 0 456px;">DELIVERY</div>

</div>

<%--<div style="width:478px; height:116px; float:left; margin:20px 0 0 30px;"><img src="../Images/progress_bar_0.png" /></div>--%>


  <div>

<section style="width:500px;">
        <div class="container" style="width:500px;" >
            <div class="row" style="width:500px;">
                <div class="board" style="width:500px;">
                    <!-- <h2>Welcome to IGHALO!<sup>™</sup></h2>-->
                    <div class="board-inner" style="width:500px;">
                    <ul class="nav nav-tabs" id="myTab" style="width:500px;">
                    <div class="liner"></div>

                     <li class="active">
                     <a href="#home" data-toggle="tab" title="welcome">
                      <span class="round-tabs one">

                      </span> 
                  </a></li>

                  <li class="disabled"><a href="#profile" data-toggle="tab" title="profile">
                     <span class="round-tabs two">
  
                     </span> 
                    </a>
                 </li>
                 <li class="disabled"><a href="#messages" data-toggle="tab" title="bootsnipp goodies">
                     <span class="round-tabs three">

                     </span> </a>
                     </li>

                     <li class="disabled"><a href="#settings" data-toggle="tab" title="blah blah">
                         <span class="round-tabs four">
    
                         </span> 
                     </a></li>


                     
                     </ul></div>

                     <div class="tab-content" style="width:500px;">
                      <div class="tab-pane fade in active" id="home" >

                          <div style="float:left; margin:20px 0 0 20px;"><p style="color:Green;">Your order has been confirmed!</p></div>
                          
                          <div style="float:left; margin:45px 0 0 -200px;"><p style="color:#999;">04:30 am | Wed, 12 Nov 2016</p></div>
              

                      </div>

                      <div class="tab-pane fade" id="profile">
                          <div style="float:left; margin:20px 0 0 20px;"><p style="color:Green;">Your Order Is Dispatched</p></div>
                          
                          
                          
                      </div>

                      <div class="tab-pane fade" id="messages">
                           <div style="float:left; margin:20px 0 0 20px;"><p style="color:Green;">Your Order Is In Transit</p></div>
                          
                          
                      </div>

                      <div class="tab-pane fade" id="settings">
                          <div style="float:left; margin:20px 0 0 20px;"><p style="color:Green;">Your Order Is Delivered</p></div>
                          
                          

                      </div>




              
                        </div>

</div>
</div>
</div>
</section>

</div>




</div>
</div>
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
