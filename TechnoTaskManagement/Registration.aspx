<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" title="Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <span style="font-family: Cambria"><strong><span style="font-size: 16pt; color: #660000">
        <br />
        <br />
        <br />
        <br />
        <br />
        <span style="color: #000000">Member Registration Form<br />
        </span>
        <br />
    </span></strong><span style="color: #660000">
     </span>
        </span>
        <table style="width: 920px; height: 127px" align="center">
            <tr>
                <td style="text-align: right; width: 384px;">
                    ID:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="144px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ValidationGroup="1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="ex :Member001" ValidationExpression="^[a-zA-Z]{6}[0-9]{3}$" ValidationGroup="1"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Name:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="TextBox2" runat="server" Width="144px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Gender:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="152px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Blood Group:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="152px">
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Mobile no:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="TextBox3" runat="server" Width="145px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    EmailId:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="145px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Password:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="TextBox5" runat="server" Width="145px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="8< pswd < 12"
                        ValidationExpression="^[a-zA-Z0-9]{8,9}$" ValidationGroup="1" ControlToValidate="TextBox5"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 384px">
                </td>
                <td style="text-align: left; width: 171px;">
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="152px" style="background-color: #ff6d15; border:none; " Height="28px" ValidationGroup="1" Font-Bold="True" Font-Names="Cambria" ForeColor="Black" /></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="height: 21px; text-align: center;" colspan="3">
                    &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red" Text='---'></asp:Label>&nbsp;
                </td>
            </tr>
        </table>
       </div>
</asp:Content>


