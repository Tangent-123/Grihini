<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="Track_My_Order.aspx.cs" Inherits="Grihini.GUI_Form.Track_My_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link href="../CSS/b_new.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/track_order_style.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/style.css" rel="stylesheet" type="text/css" />

  <%--  <link href="../CSS/addtocart_jqzoom.css" rel="stylesheet" type="text/css" />--%>
    <%--<script src="../JS/addtocart_one.js" type="text/javascript"></script>
    <script src="../JS/addtocart_two.js" type="text/javascript"></script>
    <script src="../JS/addtocart_three.js" type="text/javascript"></script>
    <script src="../JS/addtocart_four.js" type="text/javascript"></script>--%>

<%--<script type="text/javascript">

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
</script>--%>


<%--<style type"text/css">

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

</style>--%>

<%--<style type="text/css">
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
	
	</style>--%>
<%--<script type="text/javascript">

    $(document).ready(function () {
        $('.jqzoom').jqzoom({
            zoomType: 'standard',
            lens: true,
            preloadImages: false,
            alwaysOn: false
        });

    });


</script>--%>


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
<%--<div style="float:left; width:1024px; background-color:#cceef9;">
<div style="float:left; width:169px; height:122px; margin:0 0 0 0;"><img src="../Images/c4.png" /></div>

<div class="t_order_products_name_area">
<div class="t_order_products_name">Product Name Text</div>
<div class="t_order_products_status">Status</div>
<div class="t_order_products_date">Delivered On Sat,Dec 2016</div>

</div>
</div>--%>

<div>

<asp:GridView ID="GridView_TrackOrder" runat="server" AutoGenerateColumns="false" AllowPaging="false" EmptyDataText="No Records To Display!"
     AllowSorting="false" Visible="true" Width="1024px">

        <Columns>
           
               

            <asp:TemplateField HeaderText="" ControlStyle-Font-Size="12px">
            <ItemTemplate>

              <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl='<%# Eval("ImageName3") %>' Height="150" Width="180"  />
            </ItemTemplate>
            </asp:TemplateField>

       
                        

            <asp:TemplateField HeaderText=""   ControlStyle-Font-Size="12px" ControlStyle-Width="780px" >
            <ItemTemplate>
           
            <asp:Label ID="lbl_price" runat="server" text='<%#Eval("Product_name") %>'></asp:Label>
                  <br />
            <asp:Label ID="lbl_Quantity" runat="server" text='<%#Eval("Order_Status") %>'></asp:Label>
                  <br />
            <asp:Label ID="lbl_discount" runat="server" text='<%#Eval("Orderdate") %>'></asp:Label>
            
            </ItemTemplate>
            </asp:TemplateField>

                  
            </Columns>
          </asp:GridView>

</div>
<div class="t_order_border"></div>
</div>
</div>



</div>
</div>

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
