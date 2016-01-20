<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="SpecificUserOrderDescription.aspx.cs" Inherits="Grihini.GUI_Form.SpecificUserOrderDescription" %>
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
fieldset {padding:0px;padding-left:7px;padding-right:7px;padding-bottom:1px;}
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
<div class="wrapper" style="background:none;">
<div class="product">
<div class="main-wrapper" style="height:425px;">

<div><asp:Label ID="LabelUserName" runat="server" Text="User Name"></asp:Label></div>
<div><asp:Label ID="LabelUser" runat="server" Text=""></asp:Label></div>

<div style="width:auto; height:auto; float:right; margin:3px 10px 10px 0; ">
                <asp:ImageButton ID="Btn_Excel_Export1" runat="server" Width="25px"  Height="25px"
                    ImageUrl="~/Images/NewExcel_Download.png" ToolTip="Download Excel" onclick="Btn_Excel_Export1_Click"/>


  <asp:ImageButton ID="Btn_Pdf_Export1" runat="server" Width="25px"  Height="25px"
                    ImageUrl="~/Images/NewPDF_Download.png" ToolTip="Download Pdf" onclick="Btn_Pdf_Export1_Click"/>
                    
          </div>

<div style="width:1024px; float:left; height:35px; margin:10px 0 0 0; background-color:#0099CC;">
<div class="add2main-txt">USER ORDER DETAILS</div>
        </div>
        <div id="Panel000" runat="server">
    <asp:GridView ID="GridView_Specific_OrderDetails" runat="server" AutoGenerateColumns="false" AllowPaging="false" EmptyDataText="No Records To Display!"
     AllowSorting="false" Visible="true" Width="1024px">

        <Columns>
            <asp:TemplateField HeaderText="Order Id"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_orderid" runat="server" Text='<%#Eval("Order_Id") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
                           

            <asp:TemplateField HeaderText="Product Name"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_productname" runat="server" Text='<%#Eval("Product_name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Size"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_size" runat="server" text='<%#Eval("size") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Product Price(Rs.)"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_price" runat="server" text='<%#Eval("Product_price") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField HeaderText="Quantity"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Quantity" runat="server" text='<%#Eval("Quantity") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>


              <asp:TemplateField HeaderText="Discount(%)"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_discount" runat="server" text='<%#Eval("Discount") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            
             <asp:TemplateField HeaderText="Amount (Rs.)"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_totalamountprice" runat="server" text='<%#Eval("Total_Amount") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="Order Date"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_orderdate" runat="server" text='<%#Eval("Orderdate") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Colour"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <div style="margin-top:8px;">
                <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl='<%# Eval("Colour") %>' Height="35" Width="45"  />
               </div> 
            </ItemTemplate>
            </asp:TemplateField>

          


            <asp:TemplateField HeaderText="Status"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Status" runat="server" text='<%#Eval("StatusValue") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Month"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
             <asp:Label ID="lbl_month" runat="server" text='<%#Eval("Month") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

           
            </Columns>
          </asp:GridView>
          </div>
          
          
           

   <div style="float:right; margin:20px 0 0 0;">
<%--<asp:Button ID="BtnDownloadExcel" runat="server" Text="Download Excel" 
           style="padding:5px 15px 5px 15px; background-color:#ea9b12; border:none; color:White; cursor:pointer;" 
           onclick="BtnDownloadExcel_Click" />--%>
    </div>

    <div style="float:right; margin:20px 0 0 0;">
<%--<asp:Button ID="BtnDownloadPdf" runat="server" Text="Download Pdf" 
            style="padding:5px 15px 5px 15px; background-color:#ea9b12; border:none; color:White; cursor:pointer;" 
            onclick="BtnDownloadPdf_Click" />--%>
    </div>
</div>
</div>

</div>

</asp:Content>
