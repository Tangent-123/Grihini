<%@ Page Title="" Language="C#" MasterPageFile="~/GUI_Form/Master1.Master" AutoEventWireup="true" CodeBehind="Delivery_Address.aspx.cs" Inherits="Grihini.GUI_Form.Delivery_Address" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<script type="text/javascript">
    function LimtCharacters(txtMsg, CharLength, indicator) {
        chars = txtMsg.value.length;
        document.getElementById(indicator).innerHTML = CharLength - chars;
        if (chars > CharLength) {
            txtMsg.value = txtMsg.value.substring(0, CharLength);
        }
    }

        </script>
<script type="text/javascript">
    function SentenceCase(ControlID) {
        var value = toTitleCase
(ControlID.value);
        ControlID.value = value;
    }
    function toTitleCase(str) {
        return str.replace(/\w\S*/g, function 
(txt) {
            return txt.charAt(0).toUpperCase
() + txt.substr(1).toLowerCase();
        });
    }
    //Function for Upper Case:-
    function UpperCase(UpperControlID) {
        var value = UpperControlID.value;
        var string = value.toUpperCase();
        UpperControlID.value = string;
    }
</script> 

    <link href="../CSS/Style_Delivery.css" rel="stylesheet" type="text/css" />


   <div class="wrapper" style="background:none;">
   <div class="product">
   <div class="main-wrapper" style="height:auto;">
   <div class="reg-main" style="float:left; height:auto; background-color:#edf8ff; margin:20px 0 0 0; border: 1px solid #dbdbdb;">

    <div class="clear"></div>
    <div class="del-textarea" style="height:40px; width:1024px;  margin:0 0 0 0; border:0px 1px 5px #222;  background-color:#0099CC; ">
    <div class="del-delivery-fnt">DELIVERY ADDRESS </div>
    </div>

    <div class="del-address">
    <div class="del-main-address">


    <div class="del-name-area">
    <div class="del-name-txt">Name &nbsp; &nbsp;&nbsp; &nbsp;:</div>
    <div style="float:right;">
    <asp:TextBox ID="txtname" runat="server" onkeyup="SentenceCase(this);" style="width:230px; float:left; 
        background-color:#FFF; height:25px; margin:0 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
    <asp:RequiredFieldValidator ID="req_name" runat="server" ErrorMessage="Please enter name" 
    ControlToValidate="txtname" ForeColor="Red" ValidationGroup="Delivery_Group" Display="None"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="regu_name" runat="server" ErrorMessage="Only character is allow in name" 
    ControlToValidate="txtname" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$" ValidationGroup="Delivery_Group" Display="None"></asp:RegularExpressionValidator>
    </div>
    </div>

    <div class="del-name-area" style="margin:16px 0 0 0;">
    <div class="del-name-txt">Country &nbsp; &nbsp;:</div>
    <div style="float:right;">
    <asp:DropDownList ID="dropdowncountry" runat="server" AutoPostBack="true" style="width:230px; float:left; background-color:#FFF; 
        height:25px; margin:0 0 0 0; border: 1px solid #dbdbdb;">
            <%-- <asp:ListItem Value="1">India</asp:ListItem>
             <asp:ListItem Value="2">Usa</asp:ListItem>
             <asp:ListItem Value="2">Uk</asp:ListItem>  --%>      
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="req_country" runat="server" ErrorMessage="Please select country" 
    ControlToValidate="dropdowncountry" ForeColor="Red" ValidationGroup="Delivery_Group" Display="None"></asp:RequiredFieldValidator>
    </div>
    </div>

    <div class="del-name-area" style="margin:16px 0 0 0;">
    <div class="del-name-txt">State &nbsp; &nbsp;:</div>
    <div style="float:right;">
    <asp:DropDownList ID="dropdownstate" runat="server" OnSelectedIndexChanged="ddState_SelectedIndexchanged" style="width:230px; float:left; background-color:#FFF; 
        height:25px; margin:0 0 0 0; border: 1px solid #dbdbdb;"></asp:DropDownList>
    <asp:RequiredFieldValidator ID="req_state" runat="server" ErrorMessage="Please select state" 
    ControlToValidate="dropdownstate" ForeColor="Red" ValidationGroup="Delivery_Group" Display="None"></asp:RequiredFieldValidator>
    </div>
    </div>
    

    <div class="del-name-area" style="margin:16px 0 0 0;">
    <div class="del-name-txt">City &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:</div>
    <div style="float:right;">
    <asp:DropDownList ID="dropdowncity" runat="server" style="width:230px; float:left; background-color:#FFF; 
        height:25px; margin:0 0 0 0; border: 1px solid #dbdbdb;"></asp:DropDownList>
    <asp:RequiredFieldValidator ID="req_city" runat="server" ErrorMessage="Please select city" 
    ControlToValidate="dropdowncity" ForeColor="Red" ValidationGroup="Delivery_Group" Display="None"></asp:RequiredFieldValidator>
    </div>
    </div>

    

    

    <div class="del-name-area" style="margin:16px 0 0 0;">
    <div class="del-name-txt">Pincode &nbsp; &nbsp;:</div>
    <div style="float:right;">
    <asp:TextBox ID="txtpincode" runat="server" style="width:230px; float:left; 
        background-color:#FFF; height:25px; margin:0 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
    <asp:RequiredFieldValidator ID="req_pincode" runat="server" ErrorMessage="Please enter pincode" 
    ControlToValidate="txtpincode" ForeColor="Red" ValidationGroup="Delivery_Group" Display="None"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="regu_pincode" runat="server" ErrorMessage="Only numeric is allow in pincode" 
    ControlToValidate="txtpincode" ForeColor="Red" ValidationExpression="^[0-9\s]+$" ValidationGroup="Delivery_Group" Display="None"></asp:RegularExpressionValidator>
    </div>
    </div>

    <div class="del-name-area" style="margin:16px 0 0 0;">
    <div class="del-name-txt">Address  &nbsp; &nbsp:</div>
    <div style="float:left; margin:-18px 0 0 88px;">
    <textarea id="txtaddress" runat="server" onkeyup="SentenceCase(this);" onkeydown="LimtCharacters(this,200,'lblsize_address');" 
    style="width:230px; height:50px;"></textarea>
    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="10pt" Text="Chars left" style="float:left; margin:6px 0 0 0;"></asp:Label>
    <label ID="lblsize_address" Font-Names="Arial" Font-Size="10pt" style="float:left; margin:5px 0 0 10px;">200</label>
    <asp:RequiredFieldValidator ID="req_address" runat="server" ErrorMessage="Please enter address" 
    ControlToValidate="txtaddress" ForeColor="Red" ValidationGroup="Delivery_Group" Display="None"></asp:RequiredFieldValidator>
    </div>
    </div>

    <div class="del-name-area" style="margin:16px 0 0 0;">
    <div class="del-name-txt">Landmark &nbsp; &nbsp;:</div>
    <div style="float:left; margin:-18px 0 0 88px;">
    <textarea ID="txtlandmark" runat="server" onkeyup="SentenceCase(this);" onkeydown="LimtCharacters(this,200,'lblsize_landmark');" 
    style="width:230px; height:50px;"></textarea>
    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="10pt" Text="Chars left" style="float:left; margin:6px 0 0 0;"></asp:Label>
    <label ID="lblsize_landmark" Font-Names="Arial" Font-Size="10pt" style="float:left; margin:5px 0 0 10px;">200</label>
    <asp:RequiredFieldValidator ID="req_landmark" runat="server" ErrorMessage="Please enter landmark" 
    ControlToValidate="txtlandmark" ForeColor="Red" ValidationGroup="Delivery_Group" Display="None"></asp:RequiredFieldValidator>
    </div>
    </div>

    <div class="del-name-area" style="margin:16px 0 0 0;">
    <div class="del-name-txt">Phone &nbsp; &nbsp;:</div>
    <div style="float:right;">
    <asp:TextBox ID="txtphone" runat="server" style="width:230px; float:left; background-color:#FFF; height:25px; 
        margin:0 0 0 0; border: 1px solid #dbdbdb;"></asp:TextBox>
    <asp:RequiredFieldValidator ID="req_phone" runat="server" ErrorMessage="Please enter phone number" 
    ControlToValidate="txtphone" ForeColor="Red" ValidationGroup="Delivery_Group" Display="None"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="regu_phone" runat="server" ErrorMessage="Only numeric is allow in phone number" 
    ControlToValidate="txtphone" ForeColor="Red" ValidationExpression="^[0-9\s]+$" ValidationGroup="Delivery_Group" Display="None"></asp:RegularExpressionValidator>
    </div>
    </div>

    <div class="del-name-area" style="margin:25px 0 25px 89px; width:230px;">
    <asp:ImageButton ID="ImageButton100" runat="server" 
            ImageUrl="~/Images/saveicon.png" ValidationGroup="Delivery_Group" height="30" 
            width="230" onclick="ImageButton100_Click"  />
    <asp:ValidationSummary ID="popmgs" runat="server" ValidationGroup="Delivery_Group" ShowMessageBox="true" ShowSummary="false" />
    </div>


</div>

<div style="width:300px; height:480px; float:right; background-color:White; margin:0 150px 0 0;">

<asp:DataList ID="DataList_Address" runat="server" 
           
            Font-Names="Verdana" Font-Size="Small" RepeatColumns="1" RepeatDirection="Horizontal"
            Width="150px" OnCommand="image_command">         
           
            <ItemStyle BackColor="White" ForeColor="Black"/>
            <ItemTemplate>               
                    <div id="pricePlans">
                    <ul id="plans" style="list-style-type: none;">
                        <li class="plan">
                            <ul class="planContainer" style="list-style-type: none;">
               
        <li class="title" style="margin:8px 0 0 0;">
         <b>
             <asp:Label ID="Label3" runat="server" Text='<%# Eval("Name") %>'></asp:Label>  
             </b>   
        </li>                

    <li class="title">                
                

    </li>
    <li class="title" style="margin:8px 0 0 0;">  
   
                <asp:Label ID="lblCName" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("City_Id") %>'></asp:Label>,
                <br />
                 Pincode: 
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Pincode") %>'></asp:Label>,
                </br>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("State_Id") %>'></asp:Label>,
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Country_Id") %>'></asp:Label>
</li>
<li class="title" style="margin:5px 0 0 0;">     
    <img src="../Images/phone.png" />
                <asp:Label ID="lblName" runat="server" Text='<%# Eval("PhoneNo") %>'></asp:Label>
</li>
              </br>
                <%--<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/conform.png" style="margin:5px 0 0 0; height:25px; width:130px; padding:0 0 10px 0;" />--%>
                <div class="btn-continue-with">
                
                <%--<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/conform.png"  Height="280" Width="243" style="margin:5px 0 0 0; height:25px; width:130px; padding:0 0 10px 0;"/>--%>
                   <asp:Button ID="Button1" runat="server" class="button-0" OnCommand="Delivery_Add_Id" CommandArgument='<%#Eval("Delivery_Id")%>'  Text="CONTINUE WITH THIS" />
                   </div>
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
