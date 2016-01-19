<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="Add_ToCart.aspx.cs" Inherits="Grihini.GUI_Form.Add_ToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<link href="../CSS/b_new.css" rel="stylesheet" type="text/css" />
<link href="../CSS/style.css" rel="stylesheet" type="text/css" />

<div>  

<div id="Cart" runat="server" visible="false" style="width:200px; height:30px; background-color:Aqua; float:right;">
    <asp:Label ID="Lbl_Cart1" runat="server"  Text=""></asp:Label>
</div>

  <%--<asp:GridView ID="gridfordisplay" runat="server" AutoGenerateColumns="false" AllowPaging="false" AllowSorting="false">
  <Columns>
  <asp:TemplateField HeaderText="ITEM"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Item" runat="server" Text='<%#Eval("Product_name") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

  <asp:TemplateField HeaderText="QTY"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_QTY" runat="server" Text='<%#Eval("Quantity") %>'></asp:Label>

            </ItemTemplate>
            </asp:TemplateField>

  <asp:TemplateField HeaderText="PRICE"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_QTY" runat="server" text='<%#Eval("Product_price") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

  <asp:TemplateField HeaderText="Subtotal"   ControlStyle-Font-Size="12px"  >
            <ItemTemplate>
            <asp:Label ID="lbl_Subtotal" runat="server" text='<%#Eval("Subtotal") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
  
  
  </Columns>
  
  
  
  
  
  </asp:GridView>--%>



 

</div>


<div>

    <asp:Button ID="Btn_New" runat="server" Text="Button" OnClick="Btn_New_submit" />
</div>
   

</asp:Content>
