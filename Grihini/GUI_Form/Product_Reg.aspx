<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="Product_Reg.aspx.cs" Inherits="Grihini.GUI_Form.Product_Reg" %>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp_Ajax" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.23/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/Blitzer/jquery-ui.css" rel="stylesheet" type="text/css" />--%>
        
        
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
<script type="text/javascript">
    function LimtCharacters(txtMsg, CharLength, indicator) {
        chars = txtMsg.value.length;
        document.getElementById(indicator).innerHTML = CharLength - chars;
        if (chars > CharLength) {
            txtMsg.value = txtMsg.value.substring(0, CharLength);
        }
    }

        </script>

        <%--<script type="text/javascript">
            function WebForm_OnSubmit() {
                if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) {
                    $("#validation_dialog").dialog({
                        title: "Validation Error!",
                        modal: true,
                        resizable: false,
                        buttons: {
                            Close: function () {
                                $(this).dialog('close');
                            }
                        }
                    });
                    return false;
                }
                return true;
            }
        </script>--%>

    <link href="../CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/mgrid.css" rel="stylesheet" type="text/css" />
   

<%--    <div class="search_box">
       <div style="width:auto; height:auto; float:right; margin:10px 10px 10px 0;">
                
                    </div>

    </div>--%>

    <asp:MultiView ID="MultiView1" runat="server">

        <asp:View ID="View_Insert" runat="server">
       

        
    
<div>
   <div class="wrapper" style="background:none;">

   <div class="product">
   <div style="width:auto; height:25px; float:right; margin:10px 10px 10px 0;">
       <asp:Button ID="Btn_View" runat="server" Text="View All" CssClass="btn_submit"
                        BackColor="Black" Font-Bold="True" ForeColor="White" 
                        onclick="Btn_View_Click" style="float:left; margin:0 0 20px 0; width:100px; height:25px; font-family:Arial; font-size:13px; color:White; background-color:#fc8332; border:none; cursor:pointer;"/>
                        </div>
   <div class="main-wrapper" style="height:auto;">
   <div class="reg-main" style="float:left; height:auto; background-color:#edf8ff; margin:20px 0 0 0; border: 1px solid #dbdbdb;">

   <div class="reg-toptxt" style="float:left; margin:20px 0 0 20px;">Product Registration</div><br />
            <%--<div style="float:left; color:Blue; margin-left:5px; font-size:15px; font-family:Arial; text-decoration:underline;">
                <asp:Label ID="LabelProductId" runat="server" Text="Product ID: "></asp:Label>
                <asp:Label ID="LabelPId" runat="server" Text=""></asp:Label>
            </div>
            <div style="float:right; color:Blue; margin-right:174px; font-size:15px; font-family:Arial; text-decoration:underline;">
                <asp:Label ID="LabelProductName" runat="server" Text="Product Name: "></asp:Label>
                <asp:Label ID="LabelPNm" runat="server" Text=""></asp:Label>
                </div>--%>
                <div><asp:Label ID="lblmsgshow" runat="server" ForeColor="#0033CC"></asp:Label></div>



   <div>
            

  

         <%--  <asp:ScriptManager ID="ScriptManager" 
                   runat="server" />--%>

   <div class="reg-boxone">
   <div class="form-box-left">
    <div> 
          <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label> 
          <asp:Label ID="Label19" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
    </div>
    
    <div> 
        <asp:DropDownList ID="Ddl_Category" runat="server" OnSelectedIndexChanged="Category_Subcategory10" AutoPostBack="true" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;">
        </asp:DropDownList>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Select Category!" 
                        ControlToValidate="Ddl_Category" ValidationGroup="Valid1" Display="None" InitialValue="0"></asp:RequiredFieldValidator>
       <asp:TextBox ID="TextCategoryOther" Visible="false" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Enter Other Category!" 
                        ControlToValidate="TextCategoryOther" ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>
    </div>
    </div>

    <div class="form-box-right">
    <div> 
          <asp:Label ID="Label2" runat="server" Text="Sub Category"></asp:Label> 
          <asp:Label ID="Label3" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
    </div>
    
    <div> 
        <asp:DropDownList ID="Ddl_SubCategory" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategory" Display="None" ControlToValidate="Ddl_SubCategory"
        runat="server" ErrorMessage="Select Product Sub Category!" ValidationGroup="Valid1" InitialValue="0"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextSubCatOther" Visible="false" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Enter Other Subcategory!" 
                        ControlToValidate="TextSubCatOther" ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>
    </div>
    </div>
    </div>
       
          <div class="reg-boxone">
    <div class="form-box-left">
    <div> 
          <asp:Label ID="Label4" runat="server" Text="Product Name"></asp:Label> 
          <asp:Label ID="Label5" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
    </div>
    
    <div> 
         <textarea ID="Text_Product_Name" runat="server"  cols="20" 
                onkeydown="LimtCharacters(this,50,'Label9');" rows="1" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></textarea>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorProductName" Display="None" ControlToValidate="Text_Product_Name"
        runat="server" ErrorMessage="Enter Product Name!" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
                
                <asp:Label ID="Label8" runat="server" Font-Names="Arial" 
                        Font-Size="10pt" Text="Chars left "></asp:Label>
                <label ID="Label9" Font-Names="Arial" Font-Size="10pt">
                        50</label>
    </div>
    </div>

    <div class="form-box-right">
    <div> 
          <asp:Label ID="Label6" runat="server" Text="Product Description"></asp:Label> 
          <asp:Label ID="Label7" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
    </div>
    
    <div> 
         <textarea ID="Text_Pro_Description" runat="server" class="txtBox" cols="41" 
                onkeydown="LimtCharacters(this,150,'lblcount111');" rows="5" style="width:230px; float:left; background-color:#FFF; height:50px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></textarea>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorProductDescription" Display="None" ControlToValidate="Text_Pro_Description"
        runat="server" ErrorMessage="Enter Product Description!" ValidationGroup="Valid1"></asp:RequiredFieldValidator>

                <asp:Label ID="Label22" runat="server" Font-Names="Arial" 
                        Font-Size="10pt" Text="Chars left "></asp:Label>
                <label ID="lblcount111" Font-Names="Arial" Font-Size="10pt">
                        150</label>
    </div>
    </div>
    </div>
     
          <div class="reg-boxone">
    <div class="form-box-left">
    <div> 
          <asp:Label ID="Label10" runat="server" Text="Product Price (Rs.)"></asp:Label> 
          <asp:Label ID="Label11" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
    </div>

    <div>
        <asp:TextBox ID="Text_Price" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" Display="None" ControlToValidate="Text_Price"
        runat="server" ErrorMessage="Enter Product Price!" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="Text_Price" Display="None" 
                        ErrorMessage="Only Numeric Allowed In Price!" ValidationExpression="^[0-9\s]+$" 
                        ValidationGroup="Valid1"></asp:RegularExpressionValidator>
    </div>
    </div>
    <div class="form-box-right">
     <div> 
          <asp:Label ID="Label14" runat="server" Text="Max. Quantity"></asp:Label> 
          <asp:Label ID="Label15" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
     </div>


      <div>
           <asp:TextBox ID="Text_Max_quantity" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidatorQuantity" Display="None" ControlToValidate="Text_Max_quantity"
        runat="server" ErrorMessage="Enter Product Quantity!" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="Text_Max_quantity" Display="None" 
                        ErrorMessage="Only Numeric Allowed In Quantity!" ValidationExpression="^[0-9\s]+$" 
                        ValidationGroup="Valid1"></asp:RegularExpressionValidator>
      </div>
      </div>
      </div>

     <div class="reg-boxone">
   <div class="form-box-left">
       <div> 
          <asp:Label ID="Label18" runat="server" Text="Discount (%)"></asp:Label> 
          <asp:Label ID="Label20" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
          </div>

          <div>
              <asp:TextBox ID="Text_Discount" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidatorDiscount" Display="None" ControlToValidate="Text_Discount"
        runat="server" ErrorMessage="Enter Discount!" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="Text_Discount" Display="None" 
                        ErrorMessage="Only Numeric Allowed In Discount!" ValidationExpression="^[0-9\s]+$" 
                        ValidationGroup="Valid1"></asp:RegularExpressionValidator>
          </div>
   </div>

   
     

    <div class="form-box-right">
     <div> 
          <asp:Label ID="Label12" runat="server" Text="Product Size/Weight"></asp:Label> 
          <asp:Label ID="Label13" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
    </div>


   
    
    
    <div>
        <asp:RadioButtonList ID="RadiBtn_Prod" runat="server" RepeatDirection="Horizontal"  AutoPostBack="true"  OnSelectedIndexChanged="radTDS_Change" style="float:left; margin:9px 0 0 0;">
        <asp:ListItem Value="1">Size</asp:ListItem>
        <asp:ListItem Value="2">Weight</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRadioButton" Display="None" ControlToValidate="RadiBtn_Prod"
        runat="server" ErrorMessage="Choose Size or Weight!" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
    </div>
    
    <div> 
        <asp:DropDownList ID="Ddl_Size" runat="server" Visible="false" OnSelectedIndexChanged="ddl_Size_Ev" AutoPostBack="true" style="width:110px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 10px; border: 1px solid #dbdbdb;" >
             <asp:ListItem Value="0">Select Size</asp:ListItem>
             <asp:ListItem Value="1">1</asp:ListItem>
             <asp:ListItem Value="2">2</asp:ListItem>
             <asp:ListItem Value="3">3</asp:ListItem>
             <asp:ListItem Value="4">4</asp:ListItem>
             <asp:ListItem Value="5">5</asp:ListItem>
             <asp:ListItem Value="6">6</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" ControlToValidate="Ddl_Size"
        runat="server" ErrorMessage="Choose Number of Size!" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
    </div>
     

     <div> 
        <asp:DropDownList ID="Ddl_Weight" runat="server" Visible="false" OnSelectedIndexChanged="ddl_Weight_Ev" AutoPostBack="true" style="width:110px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 10px; border: 1px solid #dbdbdb;">
             <asp:ListItem Value="0">Select Weight</asp:ListItem>
             <asp:ListItem Value="1">1</asp:ListItem>
             <asp:ListItem Value="2">2</asp:ListItem>
             <asp:ListItem Value="3">3</asp:ListItem>
             <asp:ListItem Value="4">4</asp:ListItem>
             <asp:ListItem Value="5">5</asp:ListItem>
             <asp:ListItem Value="6">6</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" ControlToValidate="Ddl_Weight"
        runat="server" ErrorMessage="Choose Number of Weight!" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
    </div>

    <div class="grid" runat="server" id="div_Grid_Size" visible="false"  style="width:227px; min-height:30px; height:auto; margin:10px 100px 5px 0; float:left; border:1px solid #ccc; border-radius:4px; overflow:auto;">
            <asp:GridView ID="Grid_Size" runat="server" AutoGenerateColumns="False" CssClass="mGrid"                 
            EnableModelValidation="True"  Width="100%" EmptyDataText="">
               
            <Columns>             
                    
            <asp:TemplateField HeaderText="Size"   ControlStyle-Font-Size="12px" >
            <ItemTemplate>
                <asp:TextBox ID="txt_Size" runat="server" Text='<%#Eval("size") %>' Width="221px" Height="22px"></asp:TextBox>
            </ItemTemplate>
            </asp:TemplateField>

            </Columns>
             
                  <HeaderStyle BackColor="#00ccff" CssClass="gridheader" ForeColor="White" 
                    Wrap="False" Font-Names="Arial" Font-Size="16px" 
                    HorizontalAlign="Center" Height="20px"/>
                                   
           </asp:GridView>
         
           </div>

    <div class="grid" runat="server" id="div_Grid_Weight" visible="false"  style="width:227px; min-height:30px; height:auto; margin:10px 100px 5px 0; float:left; border:1px solid #ccc; border-radius:4px; overflow:auto;">
            <asp:GridView ID="Grid_Weight" runat="server" AutoGenerateColumns="False" CssClass="mGrid"                 
            EnableModelValidation="True"  Width="100%" EmptyDataText="">
               
            <Columns>             
                    
            <asp:TemplateField HeaderText="Weight"   ControlStyle-Font-Size="12px" >
            <ItemTemplate>
                <asp:TextBox ID="txt_Weight" runat="server" Text='<%#Eval("Weight") %>' Width="221px" Height="22px"></asp:TextBox>
            </ItemTemplate>
            </asp:TemplateField>

            </Columns>
             
                  <HeaderStyle BackColor="#00ccff" CssClass="gridheader" ForeColor="White" 
                    Wrap="False" Font-Names="Arial" Font-Size="16px" 
                    HorizontalAlign="Center" Height="20px"/>
                                   
           </asp:GridView>
         
           </div>

         </div>

         

         </div>
       
          <div class="reg-boxone"> 
          
          <asp:UpdatePanel ID="UpdatePanel2" runat="server">
          <ContentTemplate>  

         <div class="form-box-left">     
          <div> 
          <asp:Label ID="Label16" runat="server" Text="Product Colour"></asp:Label> 
          <asp:Label ID="Label17" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
          </div>

          <div> 
            <asp:DropDownList ID="Ddl_Color" runat="server" OnSelectedIndexChanged="ddl_Color_Ev" AutoPostBack="true" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;" >
             <asp:ListItem Value="0">Select Color</asp:ListItem>
             <asp:ListItem Value="0">No Color</asp:ListItem>
             <asp:ListItem Value="1">1</asp:ListItem>
             <asp:ListItem Value="2">2</asp:ListItem>
             <asp:ListItem Value="3">3</asp:ListItem>
             <asp:ListItem Value="4">4</asp:ListItem>
             <asp:ListItem Value="5">5</asp:ListItem>
             <asp:ListItem Value="6">6</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorColour" Display="None" ControlToValidate="Ddl_Color"
        runat="server" ErrorMessage="Choose Colour!" ValidationGroup="valid1"></asp:RequiredFieldValidator>
       </div>
          
          <div class="grid" runat="server" id="div_Grid_Color" visible="false"  style="width:230px; min-height:30px; height:auto; margin:10px 100px 5px 0; float:left; border:1px solid #ccc; border-radius:4px; overflow:auto;">
            <asp:GridView ID="Grid_Color" runat="server" AutoGenerateColumns="False" CssClass="mGrid"                 
            EnableModelValidation="True"  Width="100%" EmptyDataText="">
               
            <Columns>             
                    
            <asp:TemplateField HeaderText="Color"   ControlStyle-Font-Size="12px" >
            <ItemTemplate>
                <%--<asp:TextBox ID="txt_Color" runat="server" Text='<%#Eval("Colour") %>' Width="120px" Height="22px"></asp:TextBox>--%>
                <asp:FileUpload ID="ColorPic_Upload"  runat="server"  Text='<%#Eval("Colour") %>'  Width="120px" Height="22px" />
            </ItemTemplate>
            </asp:TemplateField>  

            </Columns>
             
                  <HeaderStyle BackColor="#00ccff" CssClass="gridheader" ForeColor="White" 
                    Wrap="False" Font-Names="Arial" Font-Size="16px" 
                    HorizontalAlign="Center" Height="20px"/>
                                   
           </asp:GridView>
         
           </div>
           </div>

            </ContentTemplate>
            </asp:UpdatePanel>

         
          <div class="form-box-right">
           <div> 
          <asp:Label ID="Label21" runat="server" Text="Products Photograph"></asp:Label> 
          <asp:Label ID="Label23" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
          </div>

          
          <div> 
            <asp:DropDownList ID="Ddl_Pro_Photo" runat="server" OnSelectedIndexChanged="ddl_Photo_Ev" AutoPostBack="true" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;" >
             <asp:ListItem Value="0">Select Photo</asp:ListItem>
             <asp:ListItem Value="1">1</asp:ListItem>
             <asp:ListItem Value="2">2</asp:ListItem>
             <asp:ListItem Value="3">3</asp:ListItem>
             <asp:ListItem Value="4">4</asp:ListItem>
             <asp:ListItem Value="5">5</asp:ListItem>
             <asp:ListItem Value="6">6</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhoto" Display="None" ControlToValidate="Ddl_Pro_Photo"
        runat="server" ErrorMessage="Choose Photo!" ValidationGroup="valid1"></asp:RequiredFieldValidator>
       </div>


       <div class="grid" runat="server" id="div_Pro_Pic" visible="false"  style="width:227px; min-height:30px; height:auto; margin:10px 100px 5px 0; float:left; border:1px solid #ccc;  overflow:auto;">
            <asp:GridView ID="Grid_Photo" runat="server" AutoGenerateColumns="False" CssClass="mGrid"                 
            EnableModelValidation="True"  Width="100%" EmptyDataText="">
               
            <Columns>             
                    
            <asp:TemplateField HeaderText="Photograph"   ControlStyle-Font-Size="12px" >
            <ItemTemplate>
                <%--<asp:TextBox ID="txt_Color" runat="server" Text='<%#Eval("Colour") %>' Width="120px" Height="22px"></asp:TextBox>--%>
                <asp:FileUpload ID="ProductPic_Upload"  runat="server"  Text='<%#Eval("Image_name") %>'  Width="120px" Height="22px" />
            </ItemTemplate>
            </asp:TemplateField> 
            
            <asp:TemplateField HeaderText="Select"   ControlStyle-Font-Size="12px" >
            <ItemTemplate>
                <asp:CheckBox ID="CheckBox_Pic" runat="server" AutoPostBack="true" OnCheckedChanged="Image_Click"/>
                </ItemTemplate>
            </asp:TemplateField>   

             
            </Columns>
             
                  <HeaderStyle BackColor="#00ccff" CssClass="gridheader" ForeColor="White" 
                    Wrap="False" Font-Names="Arial" Font-Size="16px" 
                    HorizontalAlign="Center" Height="20px"/>
                                   
           </asp:GridView>
         
           </div>
         </div>

         
         </div>


       
         

          <div class="reg-boxone"> 
    <div>
        <asp:Button ID="Btn_Submit" runat="server" Text="Submit"  style="float:left; margin:0 0 20px 0; width:100px; height:25px; font-family:Arial; font-size:13px; color:White; background-color:#fc8332; border:none; cursor:pointer;" onclick="Btn_Submit_Click" ValidationGroup="Valid1"/>
        <asp:ValidationSummary ID="ValidationSummary2" runat="server"  ValidationGroup="Valid1" 
                    ShowMessageBox="true" ShowSummary="false"/>
        <asp:Button ID="Btn_Update" runat="server" Text="Update" Visible="false" 
            style="float:left; margin:0 0 20px 0; width:100px; height:25px; font-family:Arial; font-size:13px; color:White; background-color:#fc8332; border:none;" 
            ValidationGroup="valid1" onclick="Btn_Update_Click"/>
        <asp:Button ID="Button1" runat="server" Text="Cancel" style="float:left; margin:0 0 20px 30px; width:100px; height:25px; font-family:Arial; font-size:13px; color:White; background-color:#fc8332; border:none; cursor:pointer;" onclick="Btn_Cancle_Click" />


    </div>
    
    <div id="validation_dialog" style="display: none">
       
      
       

        
    </div>
        </div>
    </div>


            </div>
           
            </div>



</div>
</div>
</div>

</asp:View>


<asp:View ID="View_Fetch" runat="server">
  
 <%-- <div  id="Div1"  runat="server" style="margin: 80px 0 10px 50px; border:1px solid #c1c1c1; float:left; width:850px; border-radius: 8px; overflow:auto;" visible="false">  --%>
    <div class="wrapper" style="background-color:White;">
            <div style="width:auto; height:25px; float:right; margin:10px 90px 10px 0;">
                    <asp:Button ID="Btn_Add" runat="server" Text="Add New" CssClass="btn_submit" 
                        BackColor="Black" Font-Bold="True" ForeColor="White" 
                        onclick="Btn_Add_Click" style="float:left; margin:0 0 20px 0; width:100px; height:25px; font-family:Arial; font-size:13px; color:White; background-color:#fc8332; border:none; cursor:pointer;"/>

                  
               </div>

               <div style="width:auto; height:auto; float:right; margin:3px 80px 10px 0; ">
                <asp:ImageButton ID="Btn_Excel_Export2" runat="server" Width="25px"  Height="25px"
                    ImageUrl="~/Images/NewExcel_Download.png" ToolTip="Download Excel" 
                    onclick="Btn_Excel_Export2_Click"/>


                    <asp:ImageButton ID="Btn_Pdf_Export2" runat="server" Width="25px"  Height="25px"
                    ImageUrl="~/Images/NewPDF_Download.png" ToolTip="Download Pdf" 
                    onclick="Btn_Pdf_Export2_Click"/>
                    
        </div>
        <div id="View1" runat="server" class="main-wrapper" style="height:425px;">
   
    <div style="width:1024px; float:left; height:35px; margin:15px 0 0 0; background-color:#0099CC;">
<div class="add2main-txt">PRODUCT DETAILS</div>
</div>
            <div id="Panel3" runat="server" class="grid" style="width:1024px; min-height:30px; float:left; border:1px solid #ccc; overflow:auto; background-color:White; text-align:center;">
            <asp:GridView ID="GridViewProduct" runat="server" AutoGenerateColumns="False" 
                     DataKeyNames="Product_id" EnableModelValidation="True" onrowcommand="GridViewProduct_rowcommand" EmptyDataRowStyle-BackColor="Azure" EmptyDataRowStyle-ForeColor="Red"
                      Width="1024px" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-BorderColor="Red"> 
                   

           
            
            <Columns> 
            <asp:TemplateField HeaderText="Product Id"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
               <asp:LinkButton ID="LinkButton1v" runat="server" CommandArgument='<%#Eval("Product_id")%>' 
                               CommandName="select" Font-Bold="True"  ForeColor="#000" Text='<%#Eval("Product_id")%>'></asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField> 
            
            <asp:TemplateField HeaderText="Category Name"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelCategoryName" runat="server" Text='<%#Eval("Category_name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Subcategory Name"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelSubCategoryName" runat="server" Text='<%#Eval("Subcategory_name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>        
            
            <asp:TemplateField HeaderText="Product Name"   ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelProductName" runat="server" Text='<%#Eval("Product_name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Product Price"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelProductPrice" runat="server" Text='<%#Eval("Product_price") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

           <asp:TemplateField HeaderText="Maximum Quantity"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelQuantity" runat="server" Text='<%#Eval("Max_quantity") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:ImageButton ID="btndelete" ImageUrl="~/images/trash-icon.png" ToolTip="Delete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("Product_id") %>' OnClientClick="return confirm('Are you sure you want to Delete?');"/>
                        <%--<asp:ImageButton ID="btnblock" ImageUrl="~/images/notification-slash.gif" ToolTip="Block" runat="server" CommandName="Block" CommandArgument='<%# Eval("UserId") %>' OnClientClick="return confirm('Are you sure you want to Block?');"/>
                        <asp:ImageButton ID="btnedit" ImageUrl="~/images/pencil.gif" ToolTip="Edit" runat="server" CommandName="Edit" CommandArgument='<%# Eval("UserId") %>' />--%>
                     </ItemTemplate>
             </asp:TemplateField>
           </Columns>
             
    <%-- <HeaderStyle BackColor="#00ccff" CssClass="gridheader" ForeColor="White" 
                    Wrap="False" Font-Names="Arial" Font-Size="16px" 
                    HorizontalAlign="Center" Height="20px"/>--%>
                                   
           </asp:GridView>
         
           </div>

            
         
           </div>
           </div>
    <%--</div>--%>


 </asp:View>


</asp:MultiView>


</asp:Content>
