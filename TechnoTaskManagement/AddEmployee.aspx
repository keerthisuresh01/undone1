<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="AddEmployee.aspx.vb" Inherits="AddEmployee" title="Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
 <span style="font-family: Cambria"><strong><span style="font-size: 16pt; color: #660000">
        <br />
        <br />
        <br />
        <br />
        <br />
        <span style="color: #000000">
            <br />
            Employee Addition Form<br />
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
                    <asp:TextBox ID="txtId" runat="server" Width="144px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtId" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Name:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="txtName" runat="server" Width="144px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Gender:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:DropDownList ID="ddGender" runat="server" Width="152px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddGender"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Designation:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:DropDownList ID="ddDesignation" runat="server" Width="152px">
                        <asp:ListItem>Programmer</asp:ListItem>
                        <asp:ListItem>Egineer</asp:ListItem>
                        <asp:ListItem>Tester</asp:ListItem>
                        <asp:ListItem>Team Leader</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddDesignation"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Spelization:</td>
                <td style="width: 171px; text-align: left">
                    <asp:DropDownList ID="ddSpelization" runat="server" Width="152px">
                        <asp:ListItem>Java</asp:ListItem>
                        <asp:ListItem>Dot NET</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                        <asp:ListItem>SQL</asp:ListItem>
                        <asp:ListItem>ORACLE</asp:ListItem>
                        <asp:ListItem>UI Designing</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddSpelization"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Contact no:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="txtcontactno" runat="server" Width="145px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcontactno"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtcontactno"
                        ErrorMessage="Contact No must Contain 10 digit" MaximumValue="10" MinimumValue="0"></asp:RangeValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    EmailId:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="txtEmailID" runat="server" Width="145px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmailID"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Password:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="txtPassword" runat="server" Width="145px" TextMode="Password"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 384px">
                </td>
                <td style="text-align: left; width: 171px;">
                    <asp:Button ID="btnAdd" runat="server" Text="Submit" Width="152px" style="background-color: #ff6d15; border:none; " Height="28px" ValidationGroup="1" Font-Bold="True" Font-Names="Cambria" ForeColor="Black" /></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="height: 21px; text-align: center;" colspan="3">
                    &nbsp; &nbsp; &nbsp;<asp:Label ID="lblStatus" runat="server" ForeColor="Red" Text='---'></asp:Label>&nbsp;
                </td>
            </tr>
        </table>
       </form>
</asp:Content>

