<%@ Page Language="VB" MasterPageFile="~/MasterPageTeamLeader.master" AutoEventWireup="false" CodeFile="ViewPersonalDetailLeader.aspx.vb" Inherits="PersonalDetailTeamLeader" title="Untitled Page" %>
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
            Personal Details<br />
        </span>
        <br />
    </span></strong><span style="color: #660000">
     </span>
        </span>
        <table style="width: 920px; height: 127px" align="center">
            <tr>
                <td style="text-align: right; width: 173px;">
                    <strong>
                    Employee ID:</strong></td>
                <td style="text-align: left; width: 171px;">
                    <asp:Label ID="Label1" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 173px; text-align: right">
                    <strong>
                    Employee Name:</strong></td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="Label2" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 173px; text-align: right">
                    <strong>
                    Gender:</strong></td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="Label3" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 173px; text-align: right">
                    <strong>
                    Designstion:</strong></td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="Label4" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 173px; text-align: right">
                    <strong>
                    Spelization:</strong></td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="Label5" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 173px; text-align: right">
                    <strong>
                    Contact no:</strong></td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="Label6" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 173px; height: 21px; text-align: right">
                    <strong>
                    Email Id:</strong></td>
                <td style="width: 171px; height: 21px; text-align: left">
                    <asp:Label ID="Label7" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 173px; text-align: right">
                    <strong>
                    Password:</strong></td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="Label8" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 173px; text-align: right">
                    <strong>
                    Score:</strong></td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="Label9" runat="server" Text="-"></asp:Label></td>
            </tr>
        </table>
       </form>
</asp:Content>


