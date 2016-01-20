<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Grihini.GUI_Form.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link href="../CSS/b_new.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/style.css" rel="stylesheet" type="text/css" />

    <link href="http://localhost:56654/CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="http://localhost:56654/CSS/login.css" rel="stylesheet" type="text/css" />

<div class="wrapper" style="background-image:url(../Images/login_bck_texture.png); 	background-repeat:repeat; padding-top:20px;">
<div class="main-wrapper">
<div class="sportsproduct-one">

<div style="margin-top:100px;">
<div style="text-align:center; background-color:White; width:370px; height:230px; box-shadow:0px 1px 5px #222; margin:0 auto;">
<div style="width:370px;" >

    <div style="float:left; margin:28px 0 0 30px;"> 
    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label> 
    </div>

    <div style="float:left; margin:55px 0 0 -80px;">
    <div>
    <asp:TextBox ID="Text_Username" runat="server" style="width:300px; height:25px;"></asp:TextBox>

    </div>
    </div>
    </div>


<div style="float:left; margin:15px 0 0 30px;">   
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label> 
</div>

<div style="float:left; margin:40px 0 0 -70px;">   
     <asp:TextBox ID="Text_Password" runat="server" style="width:300px; height:25px;" TextMode="Password"></asp:TextBox>
  </div>


<div style="float:left; margin:30px 0 0 10px;">
<div>
      <asp:Button ID="Btn_Login" runat="server" Text="Login" style="background-color:#e69508; height:25px; width:80px; border:none; cursor:pointer; color:White;"
          onclick="Btn_Login_Click" />
  </div>
<div style="margin:0 0 0 100px; float:right">
    <asp:Button ID="Btn_Reset" runat="server" Text="Reset" style="background-color:#e69508; cursor:pointer; height:25px; width:80px; border:none; color:White; margin:-25px 0 0 80px;" 
          onclick="Btn_Reset_Click" />
  </div>
</div>

</div>
</div>

</div>
</div>
</div>


</asp:Content>
