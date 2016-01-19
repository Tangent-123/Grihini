<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="popup.aspx.cs" Inherits="Grihini.GUI_Form.popup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript">
    $(function () {
        $('#<%=btnclick.ClientID%>').click(function () {
            $("#popupdiv").dialog({
                title: "jQuery Popup from Server Side",
                width: 430,
                height: 250,
                modal: true,
                buttons: {
                    Close: function () {
                        $(this).dialog('close');
                    }
                }
            });
            return false;
        });
    })

</script>


<div>
<div id="popupdiv" title="Basic modal dialog" style="display: none">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
<table align="center" style="margin-top:200px">
<tr>
<td>
<asp:Button ID="btnclick" runat="server" Text="Welcome" OnClick="gggggg"/>
</td>
</tr>
</table>

</div>

</asp:Content>
