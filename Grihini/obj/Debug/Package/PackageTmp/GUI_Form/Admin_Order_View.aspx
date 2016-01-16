<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="Admin_Order_View.aspx.cs" Inherits="Grihini.GUI_Form.Admin_Order_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/addtocart_jqzoom.css" rel="stylesheet" type="text/css" />
    <script src="../JS/addtocart_one.js" type="text/javascript"></script>
    <script src="../JS/addtocart_two.js" type="text/javascript"></script>
    <script src="../JS/addtocart_three.js" type="text/javascript"></script>
    <script src="../JS/addtocart_four.js" type="text/javascript"></script>

<script type="text/javascript">

    $(function () {

        var table = $('<table></table>');
        table.append('<thead><tr><th class="number">Number</th></tr></thead>');
        var tbody = $('<tbody></tbody>');
        for (var i = 0; i < 100; i++) {
            tbody.append('<tr><td>' + Math.floor(Math.random() * 100) + '</td></tr>');
        }
        table.append(tbody);
        $('.example.ex-2').append(table);

        $('table').tablesort().data('tablesort');

        $('thead th.number').data('sortBy', function (th, td, sorter) {
            return parseInt(td.text(), 10);
        });

    });
</script>
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
<style type="text/css">
	body {
		font: normal 14px/21px Arial, serif;
	}
	.example {
		float: left;
		width: 1024px;

	}
	table {
		font-size: 1em;
		border-collapse: collapse;
		margin: 0 auto
	}
	table, th, td {
		border: 1px solid #999;
		padding: 18px 16px;
		text-align: left;
	}
	th {
		background: #f4f4f4;
		cursor: pointer;
	}

	th:hover,
	th.sorted {
		background: #d4d4d4;
	}

	th.no-sort,
	th.no-sort:hover {
		background: #f4f4f4;
		cursor: not-allowed;
	}

	th.sorted.ascending:after {
		content: "  \2191";
	}

	th.sorted.descending:after {
		content: " \2193";
	}
	.txt{
		float:right;
		font-family:Arial;
		font-size:12px;
		margin:10px 0 0 30px;
	}
		.txt2{
		float:right;
		font-family:Arial;
		font-size:12px;
		margin:10px 0 0 30px;
	}
	.product-details{
		float:left;
		margin:5px 0 0 0;
	}
		.product-details-txt{
			float:left;
			width:200px;
			margin:8px 0 0 30px;
		}
	.product-txt-name{
		font-family:Arial;
		font-size:13px;
		float:left;
		width:200px;
		color:#000;
				}
	.product-txt-size{
		font-family:Arial;
		font-size:13px;
		float:left;
		width:200px;
		color:#999;

				}
				.remove-btn{
					width:200px;
					float:left;
				}
				a{
					text-decoration:none;
				}
			.remove-btn-txt a{
				font-family:Arial;
				font-size:12px;
				float:right;
				color:#06C;

				margin:10px 0 0 0;

				}
			.remove-btn-txt a:hover{
				font-family:Arial;
				font-size:12px;
				float:right;
				color:#039;
				text-decoration:underline;
				margin:10px 0 0 0;
				transition:all 0.6s;
				text-decoration:underline;

				}
				.add2main-txt{
					font-family:Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", serif;
					font-size:16px;
					float:left;
					color:#FFF;
					margin:10px 0 5px 20px;
					font-weight:bold;
				}
	
	</style>
<script type="text/javascript">

    $(document).ready(function () {
        $('.jqzoom').jqzoom({
            zoomType: 'standard',
            lens: true,
            preloadImages: false,
            alwaysOn: false
        });

    });


</script>



<div>

<div class="wrapper" style="background:none;">
<div class="product">
<div id="View1" runat="server" class="main-wrapper" style="height:425px;">

<div style="width:1024px; float:left; height:35px; margin:15px 0 0 0; background-color:#0099CC;">
<div class="add2main-txt">PRODUCT DETAILS</div>
</div>
<asp:GridView ID="GridView_Pro_View" runat="server" AutoGenerateColumns="false" AllowPaging="false" EmptyDataText="No Products In Cart"
     AllowSorting="false" Visible="true" Width="1024px" EnableModelValidation="True" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-BorderColor="Red"
     EmptyDataRowStyle-BackColor="Azure" EmptyDataRowStyle-ForeColor="Red" onrowcommand="griduser_RowCommand1">



    <Columns>

    <asp:TemplateField HeaderText="Order Id"   ControlStyle-Font-Size="12px" >
            <ItemTemplate>
            <asp:Label ID="lbl_Item1" runat="server" Text='<%#Eval("Order_Id") %>'></asp:Label>
            

            </ItemTemplate>
            </asp:TemplateField>

  <asp:TemplateField HeaderText="ITEM"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Item2" runat="server" Text='<%#Eval("Product_name") %>'></asp:Label>
            

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
            <asp:Label ID="lbl_Subtotal1" runat="server" text='<%#Eval("Subtotal") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

           <asp:TemplateField HeaderText="Order Status"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Subtotal2" runat="server" text='<%#Eval("Order_Status") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Order Status"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
          
              <asp:Button ID="Button_View" runat="server" Text="View Details"  CssClass="button-0" ToolTip="View Details" CommandName="Address_id" CommandArgument='<%#Eval("Deliver_Address_Id")+","+Eval("user_Id")+","+Eval("Product_Id")+","+Eval("order_id")%>'/>
                            
            </ItemTemplate>
            </asp:TemplateField>
  
  
  </Columns>



    </asp:GridView>


</div>

<div id="view_pro" runat="server" class="main-wrapper" visible="false">
<div>
<div style="width:1024px; float:left; height:35px; margin:5px 0 0 0; background-color:#0099CC;">
<div class="add2main-txt">PRODUCT DETAILS</div>
</div>
<asp:GridView ID="GridView_Product_Det" runat="server" AutoGenerateColumns="false" AllowPaging="false" EmptyDataText="No Products In Cart"
     AllowSorting="false" Visible="true" Width="1024px" EnableModelValidation="True" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-BorderColor="Red"
     EmptyDataRowStyle-BackColor="Azure" EmptyDataRowStyle-ForeColor="Red" >



    <Columns>

    <asp:TemplateField HeaderText="Order Id"   ControlStyle-Font-Size="12px" >
            <ItemTemplate>
            <asp:Label ID="lbl_Item1" runat="server" Text='<%#Eval("Order_Id") %>'></asp:Label>
            

            </ItemTemplate>
            </asp:TemplateField>

  <asp:TemplateField HeaderText="ITEM"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Item2" runat="server" Text='<%#Eval("Product_name") %>'></asp:Label>
            

            </ItemTemplate>
            </asp:TemplateField>

            <asp:ImageField DataImageUrlField="ImageName2" ControlStyle-Width="100"
        ControlStyle-Height = "100" HeaderText = "Preview Image"/>

      

  <asp:TemplateField HeaderText="QTY"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_QTY" runat="server" Text='<%#Eval("Quantity") %>'></asp:Label>

            </ItemTemplate>
            </asp:TemplateField>

        <asp:ImageField DataImageUrlField="ImageName3" ControlStyle-Width="100"
        ControlStyle-Height = "100" HeaderText = "PRODUCT COLOR"/>

        <asp:TemplateField HeaderText="SIZE"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_SIZE" runat="server" Text='<%#Eval("size") %>'></asp:Label>

            </ItemTemplate>
            </asp:TemplateField>

  <asp:TemplateField HeaderText="PRICE (Rs.)"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_PRICE" runat="server" text='<%#Eval("Product_price") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

  <%--<asp:TemplateField HeaderText="Subtotal (Rs.)"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Subtotal1" runat="server" text='<%#Eval("Subtotal") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>--%>

           <asp:TemplateField HeaderText="Order Status"   ControlStyle-Font-Size="12px" >
            <ItemTemplate>
            <asp:Label ID="lbl_Subtotal2" runat="server" text='<%#Eval("Order_Status") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

             
  
  </Columns>



    </asp:GridView>

</div>

<div style="width:1024px; margin:0 auto;">

    <div style="float:left; width:350px; margin:35px 0 0 40px;">
    <div style="float:left;  background-color:#0099CC; width:350px;">
<div class="add2main-txt">DELIVERY ADDRESS DETAILS</div>
</div>
    
    <div style="float:left; margin:0 0 0 0;">
    <asp:DataList ID="DataList_Address" runat="server" 
           
            Font-Names="Verdana" Font-Size="Small" RepeatColumns="1" RepeatDirection="Horizontal"
            Width="350px" Height="200px" OnCommand="image_command">         
           
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



</li>
<li class="title" style="margin:8px 0 0 0;"> 
<b>PinCode:</b>
<asp:Label ID="lbl_Pincode" runat="server" text='<%#Eval("Pincode") %>'></asp:Label>
</li>
 <li class="title" style="margin:8px 0 0 0;"> 
     <b>Landmark:</b>
                   <asp:Label ID="lbl_Landmark" runat="server" text='<%#Eval("Landmark") %>'></asp:Label>
 </li>
<li class="title" style="margin:5px 0 0 0;">  
    
     <img src="../Images/phone.png" /> <asp:Label ID="lblName" runat="server" Text='<%# Eval("PhoneNo") %>'></asp:Label>
</li>
              
                
                <br />     
                                
</ul>
                          
                </li>
                </ul>
                </div>

            </ItemTemplate>
        </asp:DataList> 
    </div>
    </div>

    <div style="float:left; margin:260px 0 0 45px;">
        <asp:Button ID="Button1" runat="server" Text="CONFIRM ORDER" 
            CssClass="button-0" />

           <asp:Button ID="Button2" runat="server" Text="Reject Order" 
            CssClass="button-0" OnClick="reject_onclick" />
    </div>

   <%--  <div style="float:left; margin:260px 0 0 45px;">
        <asp:Button ID="brn_downloadaddress" runat="server" Text="Download Address" 
            CssClass="button-0" onclick="Downloadadress_click" />
    </div>--%>

    <div style="float:right; width:350px; margin:35px 40px 0 0;">
    <div style="float:left;  background-color:#0099CC; width:350px;">
    <div class="add2main-txt">USER DETAILS</div>
    </div>
    <asp:DataList ID="DataList_UserDetails" runat="server" 
           
            Font-Names="Verdana" Font-Size="Small" RepeatColumns="1" RepeatDirection="Horizontal"
            Width="350px" OnCommand="image_command">         
           
            <ItemStyle BackColor="White" ForeColor="Black"/>
            <ItemTemplate>               
                    <div id="pricePlans">
                    <ul id="plans" style="list-style-type: none;">
                        <li class="plan">
                            <ul class="planContainer" style="list-style-type: none;">
               
        <li class="title" style="margin:8px 0 0 0;">
         <b>Name:</b> 
             <asp:Label ID="Label3" runat="server" Text='<%# Eval("Title") %>'></asp:Label>  
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("First_Name") %>'></asp:Label> 
                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("Middle_Name") %>'></asp:Label> 
                  <asp:Label ID="Label4" runat="server" Text='<%# Eval("Last_Name") %>'></asp:Label> 
        </li>                

    <li class="title">                
                   <b>Gender:</b> 
             <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label> ,
              <br />
                   <b>Date Of Birth:</b> 
             <asp:Label ID="Label5" runat="server" Text='<%# Eval("Dob") %>'></asp:Label>     

    </li>
    <li class="title" style="margin:8px 0 0 0;">  
    <b>Address:</b> 
              

                 <asp:Label ID="lbl_Country" runat="server" Text='<%#Eval("location_name") %>'></asp:Label>
                 <asp:Label ID="lbl_State" runat="server" text='<%#Eval("StateName") %>'></asp:Label>
                 <asp:Label ID="lbl_City" runat="server" text='<%#Eval("country_name") %>'></asp:Label>

                                    
</li>
<li class="title" style="margin:8px 0 0 0;"> 
<b>Contact Details:</b>
<br />
<img src="../Images/phone.png" /><asp:Label ID="lbl_Email_Id" runat="server" text='<%#Eval("Email_Id") %>'></asp:Label>
<br />
    <img src="../Images/phone.png" /> <asp:Label ID="lbl_Mobile_No" runat="server" Text='<%# Eval("Mobile_No") %>'></asp:Label>
</li>

              
                
                <br />     
                                
</ul>
                          
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
