<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="AddProject.aspx.vb" Inherits="AddProject" title="Add Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
 <span style="font-family: Cambria"><strong><span style="font-size: 16pt; color: #660000">
        <br />
        <br />
        <br />
        <br />
        <br />
        <span style="color: #000000">
            <br />
            Project Addition Form<br />
        </span>
        <br />
    </span></strong><span style="color: #660000">
     </span>
        </span>
        <table style="width: 920px; height: 127px" align="center">
            <tr>
                <td style="text-align: right; width: 384px;">
                    Project
                    ID:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="txtId" runat="server" Width="144px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtId" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Project
                    Name:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="txtName" runat="server" Width="144px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Client Name:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="txtClient" runat="server" Width="144px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtClient"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Start Date:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:Calendar ID="Calendar1" runat="server" Height="187px" Width="212px"></asp:Calendar>
                </td>
                <td style="text-align: left">
                    </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Duration in Month:</td>
                <td style="width: 171px; text-align: left">
                    <asp:TextBox ID="txtduration" runat="server" Width="144px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtduration"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Strength:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="txttrenght" runat="server" Width="145px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txttrenght"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 384px;">
                    Description:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:TextBox ID="txtdescription" runat="server" Width="145px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtdescription"
                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 384px; height: 30px;">
                </td>
                <td style="text-align: left; width: 171px; height: 30px;">
                    <asp:Button ID="btnAdd" runat="server" Text="Submit" Width="152px" style="background-color: #ff6d15; border:none; " Height="28px" ValidationGroup="1" Font-Bold="True" Font-Names="Cambria" ForeColor="Black" /></td>
                <td style="text-align: left; height: 30px;">
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


