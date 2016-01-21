<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="User_Login.aspx.cs" Inherits="Grihini.GUI_Form.User_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../CSS/b_new.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/style.css" rel="stylesheet" type="text/css" />

<div class="wrapper" style="background-image:url(../Images/login_bck_texture.png); 	background-repeat:repeat; padding-top:20px;">
<div class="sportsproduct" style="height:500px;">
<div class="main-wrapper">
<div class="sportsproduct-one">

<div style="margin:120px;">
<div style="text-align:center; background-color:White; width:370px; height:230px; box-shadow:0px 1px 5px #222; margin:0 auto;">
<div style="width:370px;" >
    <div>
    
     <asp:Label ID="lblmsgshow" runat="server" Text="" style="color:Red; visibility="false"></asp:Label>

    
    </div>
    <div style="float:left; margin:28px 0 0 30px;"> 
    <asp:Label ID="Label1" runat="server" Text="Email Id"></asp:Label> 
    </div>

    <div style="float:left; margin:55px 0 0 -57px;">
    <div>
    <asp:TextBox ID="Text_UserName1" runat="server" style="width:300px; height:25px;"></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Enter EmailId!" ControlToValidate="Text_UserName1" 
                        ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>

                   <asp:RegularExpressionValidator ID="revEmailID" runat="server" ControlToValidate="Text_UserName1" Display="None" ErrorMessage="Enter Valid EmailId!"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Valid1"></asp:RegularExpressionValidator> 
                   

    </div>
    </div>
    </div>


<div style="float:left; margin:15px 0 0 30px;">   
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label> 
</div>

<div style="float:left; margin:40px 0 0 -70px;">   
     <asp:TextBox ID="Text_Password2" runat="server" style="width:300px; height:25px;" TextMode="Password"></asp:TextBox>
      
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Password!" ControlToValidate="Text_Password2" 
                        ValidationGroup="Valid1" Display="None"></asp:RequiredFieldValidator>
  </div>


<div style="float:left; margin:30px 0 0 10px;">
<div>
      <asp:Button ID="Btn_Login" runat="server" Text="Login" style="background-color:#e69508; height:25px; width:80px; border:none; cursor:pointer; color:White;"
          onclick="Btn_UserLogin_Click" ValidationGroup="Valid1"/>
          <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ValidationGroup="Valid1" 
                    ShowMessageBox="true" ShowSummary="false"/>
  </div>
<div style="margin:0 0 0 100px; float:right">
   
           <asp:Button ID="Btn_Reset" runat="server" Text="Reset" 
        style="background-color:#e69508; height:25px; width:80px; border:none; cursor:pointer; color:White; margin:-25px 0 0 80px;" 
        onclick="Btn_Reset_Click"/>
  </div>
</div>

</div>
</div>

</div>
</div>
</div>
</div>

</asp:Content>
