<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="User_Registration.aspx.cs" Inherits="Grihini.GUI_Form.User_Registration" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp_Ajax" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <link href="../CSS/style.css" rel="stylesheet" type="text/css" />
<link href="../CSS/style.css" rel="stylesheet" type="text/css" />
  <link href="../CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/mgrid.css" rel="stylesheet" type="text/css" />
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

   
   
   
   
    <asp:MultiView ID="MultiView1" runat="server">
        
        <asp:View ID="View_UserInsert" runat="server">

        
   
   <div class="main-wrapper" style="height:auto;">

   <div class="reg-main" style="float:left; height:auto; background-color:#edf8ff; margin:20px 0 0 0; border: 1px solid #dbdbdb;">

   <div class="wrapper" style="background:none;">
   <div class="product">
   <div style="width:auto; height:25px; float:right; margin:10px 10px 10px 0;">
       <%--<asp:Button ID="Btn_View" runat="server" Text="View All" CssClass="btn_submit"
       BackColor="Black" Font-Bold="True" ForeColor="White" 
           style="float:left; margin:0 0 20px 0; width:100px; height:25px; font-family:Arial; font-size:13px; color:White; background-color:#fc8332; border:none; cursor:pointer;" onclick="Btn_View_Click1" 
          />--%>
                        </div>
   <div class="Insert">
   <div class="reg-toptxt" style="float:left; margin:20px 0 0 20px;">User Registration</div>
     
      <div class="reg-boxone">
   <div class="reg-personal-txt">Personal Information </div>
   <div class="form-box-left">
   <div class="form_box_left">
         <asp:Label ID="Lb_name" runat="server" Text="Title"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
        </div>
                
    <div class="form_box_right">
         
          <asp:DropDownList ID="DdlTitle" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;">
                        <asp:ListItem Value="0">Select Title</asp:ListItem>
                        <asp:ListItem Value="Mr.">Mr.</asp:ListItem>
                        <asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
                        <asp:ListItem Value="Ms.">Ms.</asp:ListItem>
                        <asp:ListItem Value="Dr.">Dr.</asp:ListItem>
                        
                       </asp:DropDownList>
                    &nbsp;&nbsp;
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Select Title!" ControlToValidate="DdlTitle" 
                        ValidationGroup="Valid1" Display="None" InitialValue="0"></asp:RequiredFieldValidator>
                    </div> 
    
    </div>
    
    <div class="form-box-right">    
    <div class="form_box_left">
         <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
        </div>
                
    <div class="form_box_right">
          <asp:TextBox ID="Text_First_Name" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter First Name!" ControlToValidate="Text_First_Name" 
                        ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="Text_First_Name" Display="None" 
                        ErrorMessage="Only Character Allowed In First Name!" ValidationExpression="^[A-Za-z\s]+$" 
                        ValidationGroup="Valid1"></asp:RegularExpressionValidator>
        </div> 
    </div>
    </div>

      <div class="reg-boxone" style="margin-top:0;">
   <div class="form-box-left">

   <div>
         <asp:Label ID="Label3" runat="server" Text="Middle Name"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
        </div>
               
   <div class="form_box_right">
          <asp:TextBox ID="Text_Middle_Name" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
                    &nbsp;&nbsp;
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Enter Middle Name!" ControlToValidate="Text_Middle_Name" 
                        ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>--%>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="Text_Middle_Name" Display="None" 
                        ErrorMessage="Only Character Allowed In Middle Name" ValidationExpression="^[A-Za-z\s]+$" 
                        ValidationGroup="Valid1"></asp:RegularExpressionValidator>
        </div> 

    </div>

   <div class="form-box-right">
   <div>
         <asp:Label ID="Label6" runat="server" Text="Last Name"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
        </div>       
        
   <div class="form_box_right">
          <asp:TextBox ID="Text_Last_Name" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Enter Last Name!" ControlToValidate="Text_Last_Name" 
                        ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="Text_Last_Name" Display="None" 
                        ErrorMessage="Only Character Allowed In Last Name!" ValidationExpression="^[A-Za-z\s]+$" 
                        ValidationGroup="Valid1"></asp:RegularExpressionValidator>
        </div> 
    </div>
    </div>

      <div class="reg-boxone" style="margin-top:-1px;">
   <div class="form-box-left">
         
   <div class="form_box_left">
         <asp:Label ID="Label11" runat="server" Text="Gender"></asp:Label>
            <%--<asp:Label ID="Label13" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>--%>
        </div>

   <div class="form_box_right">
             <asp:DropDownList ID="Ddl_Gender" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;">
                        <asp:ListItem Value="0">Select Gender</asp:ListItem>
                        <asp:ListItem Value="1">MALE</asp:ListItem>
                        <asp:ListItem Value="2">FEMALE</asp:ListItem>
                       
             </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Select Gender!" ControlToValidate="Ddl_Gender" 
                        ValidationGroup="Valid1" Display="None" InitialValue="0"></asp:RequiredFieldValidator>
         </div>
   </div>
   
   <div class="form-box-right">
   <div class="form_box_left">
        <asp:Label ID="Label5" runat="server" Text="Date Of Birth" Visible="true"></asp:Label>

        <asp:TextBox ID="Text_Dob" runat="server" style="width:200px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;" Visible="true"></asp:TextBox>
         <asp:ImageButton ID="Img_Pres" runat="server" ImageUrl="~/Images/CalenderIcon.jpg" Width="22px" Height="22px" style=""
         CssClass="imgbutton" onmouseover="this.style.cursor='hand'" ToolTip="Click to Open Calender"/>           
         <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" PopupButtonID="Img_Pres" TargetControlID="Text_Dob" Format="dd-MM-yyyy"
         CssClass="cal_Theme1" ></ajaxToolkit:CalendarExtender> --%>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ErrorMessage="Enter Your DOB!" ControlToValidate="Text_Dob" 
                        ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>
          <asp:Label ID="Label10" runat="server" Text="*" Font-Size="12px" ForeColor="Red" Visible="false"></asp:Label>
        </div>

   <div class="form_box_right">
         
        
          
         
     </div>

    </div>
    </div>

       
     <div class="reg-boxone" style="margin-top:15px;">
   <div class="form-box-left">
   <div class="form_box_left">
         <asp:Label ID="Label14" runat="server" Text="Mobile No"></asp:Label>
            <asp:Label ID="Label15" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
        </div>

   <div class="form_box_right">
         <asp:TextBox ID="Text_MobileNo" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Enter Contact No!" ControlToValidate="Text_MobileNo" 
                        ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>
                         
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="Text_MobileNo" Display="None" 
                        ErrorMessage="Only Numeric Allowed In Contact No!" ValidationExpression="^[0-9\s]+$" 
                        ValidationGroup="Valid1"></asp:RegularExpressionValidator>
         </div>
   </div>

   <div class="form-box-right">
   <div class="form_box_left">
         <asp:Label ID="Label16" runat="server" Text="Email Id"></asp:Label>
            <asp:Label ID="Label17" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
        </div>

   <div class="form_box_right">
         <asp:TextBox ID="Text_Email" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="Enter EmailId!" ControlToValidate="Text_Email" 
                        ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmailID" runat="server" ControlToValidate="Text_Email" Display="None" ErrorMessage="Enter Valid EmailId!"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Valid1"></asp:RegularExpressionValidator> 
         </div>


    </div>
    </div>

     <div class="reg-boxone" style="margin-top:15px;">
   <div class="reg-personal-txt">Location Information </div>
   <div class="form-box-left">

   <div class="form_box_left">
         <asp:Label ID="Label18" runat="server" Text="Country"></asp:Label>
            <asp:Label ID="Label19" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
        </div>

   <div class="form_box_right">
             <asp:DropDownList ID="Ddl_Country" runat="server" AutoPostBack="true" 
                 style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;" 
                 onselectedindexchanged="Ddl_Country_SelectedIndexChanged">
           </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="Select Country!" ControlToValidate="Ddl_Country" InitialValue="0" 
                        ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>
                        
         </div>
   </div>

   <div class="form-box-right">
   <div class="form_box_left">
         <asp:Label ID="Label20" runat="server" Text="State"></asp:Label>
            <asp:Label ID="Label21" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
        </div>

   <div class="form_box_right">
             <asp:DropDownList ID="Ddl_State" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddState_SelectedIndexchanged" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;">
              </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Select State!" ControlToValidate="Ddl_State" 
                        ValidationGroup="Valid1" Display="None" InitialValue="0"></asp:RequiredFieldValidator>
       <asp:TextBox ID="TextStateOther" Visible="false" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
         </div>

   </div>
   </div>

     <div class="reg-boxone" style="margin-top:15px;">
   <div class="form-box-left">

   <div class="form_box_left">
         <asp:Label ID="Label22" runat="server" Text="Location"></asp:Label>
            <asp:Label ID="Label23" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
        </div>

   <div class="form_box_right">
             <asp:DropDownList ID="Ddl_Location" Visible="false" runat="server" AutoPostBack="true" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;">
             </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="Select Location!" ControlToValidate="Ddl_Location" 
                        ValidationGroup="Valid1" Display="None" InitialValue="0"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextLocationOther" runat="server" Visible="false" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
         </div>
   </div>

   <div class="form-box-right">
   <div class="form_box_left">
        <asp:Label ID="Label9" runat="server" Text="Employee Id"></asp:Label>
          <asp:Label ID="Label12" runat="server" Text="*" Font-Size="12px" ForeColor="Red"></asp:Label>
        </div>

   <div class="form_box_right">
         <asp:TextBox ID="Text_Emp_Id" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; margin:6px 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ErrorMessage="Enter EmpId!" ControlToValidate="Text_Emp_Id" 
                        ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>
        </div> 

   </div>
   </div>

     <div class="reg-boxone">  
   <div>
            


                 <asp:Button ID="Button1" runat="server"  onclick="Button1_Click" 
                 Text="Submit" ValidationGroup="Valid1" style="float:left; margin:0 0 20px 0; width:100px; height:25px; font-family:Arial; font-size:13px; color:White; background-color:#fc8332; border:none;"/>  
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ValidationGroup="Valid1" 
                    ShowMessageBox="true" ShowSummary="false"/>
         &nbsp;
                 <asp:Button ID="Btn_Reset" runat="server" Text="Reset"  
                 CssClass="btn_submit" onclick="Btn_Reset_Click" style="float:left; margin:0 0 20px 10px; width:100px; height:25px; font-family:Arial; font-size:13px; color:White; background-color:#fc8332; border:none;"/>
                         
         </div>
   </div>
   </div>
   </div>
   </div>
   </div>

     



   </div>
 
        </asp:View>

         <asp:View ID="ViewUserFetch" runat="server">
         <div class="wrapper" style="background-color:White; height:480px;">
         <div style="width:auto; height:25px; float:right; margin:10px 10px 10px 0;">
                    <asp:Button ID="Btn_Add" runat="server" Text="Add New" CssClass="btn_submit" 
                        BackColor="Black" Font-Bold="True" ForeColor="White" 
                        
                        style="float:left; margin:0 0 20px 0; width:100px; height:25px; font-family:Arial; font-size:13px; color:White; background-color:#fc8332; border:none; cursor:pointer;" 
                        onclick="Btn_Add_Click"/>

                  
               </div>
          <div class="main-wrapper">
        <%--<div id="Div1" runat="server" class="grid"  style="width:1024px; min-height:30px; margin:5px 0 0 8px; float:left; border:1px solid #ccc; overflow:auto; background-color:White; text-align:center;">--%>
            <div id="Panel3" runat="server" class="grid"  style="width:1024px; min-height:30px; margin:5px 0 0 8px; float:left; border:1px solid #ccc; overflow:auto; background-color:White; text-align:center;">
            <asp:GridView ID="GridView_User_Details" runat="server" AutoGenerateColumns="False" CssClass="mGrid"                  
            EnableModelValidation="True" DataKeyNames="User_Id" Width="100%" CellSpacing="10" CellPadding="8" ForeColor="#464747">
               
            <Columns>      
            
            <asp:TemplateField HeaderText="User Id"   ControlStyle-Font-Size="12px" ItemStyle-ForeColor="blue">
            <ItemTemplate>
                <asp:Label ID="LabelUser_Id" runat="server" Text='<%#Eval("User_Id") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
          
            <asp:TemplateField HeaderText="First Name"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelFirst_Name" runat="server" Text='<%#Eval("First_Name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Middle Name"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelMiddle_Name" runat="server" Text='<%#Eval("Middle_Name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Last Name"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelLast_Name" runat="server" Text='<%#Eval("Last_Name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Gender"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelGender" runat="server" Text='<%#Eval("Gender") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Dob"  ControlStyle-Font-Size="12px" >
            <ItemTemplate>
                <asp:Label ID="LabelDob" runat="server" Text='<%#Eval("Dob") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Contact No"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelMobile_No" runat="server" Text='<%#Eval("Mobile_No") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Email Id"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelEmail_Id" runat="server" Text='<%#Eval("Email_Id") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Country"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelCountryName" runat="server" Text='<%#Eval("country_name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="State"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelStateName" runat="server" Text='<%#Eval("StateName") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Location"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelLocationName" runat="server" Text='<%#Eval("location_name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Emp Id"  ControlStyle-Font-Size="12px">
            <ItemTemplate>
                <asp:Label ID="LabelEmp_Id" runat="server" Text='<%#Eval("Emp_Id") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

           </Columns>
             
                  <HeaderStyle BackColor="#00ccff" CssClass="gridheader" ForeColor="White" 
                    Wrap="False" Font-Names="Arial" Font-Size="16px" 
                    HorizontalAlign="Center" Height="20px"/>
                                   
           </asp:GridView>
           </div>
         <div style="width:auto; height:auto; float:right; margin:3px 10px 10px 0; ">
                
                <asp:ImageButton ID="Btn_Excel_Export2" runat="server" Width="25px"  Height="25px"
                    ImageUrl="~/Images/NewExcel_Download.png" ToolTip="Download Excel" 
                    onclick="Btn_Excel_Export2_Click"/>


  <asp:ImageButton ID="Btn_Pdf_Export2" runat="server" Width="25px"  Height="25px"
                    ImageUrl="~/Images/NewPDF_Download.png" ToolTip="Download Pdf" 
                    onclick="Btn_Pdf_Export2_Click"/>
             </div>
         
          <%-- </div>--%>
           <div>
              
           </div>
           </div>
           </div>
        </asp:View>

    </asp:MultiView>
   
</asp:Content>
