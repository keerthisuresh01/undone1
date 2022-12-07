<%@ Page Language="VB" MasterPageFile="~/MasterPageEmployee.master" AutoEventWireup="false" CodeFile="ViewPerformanceScoreEmployee.aspx.vb" Inherits="ViewPerformanceScore" title="Untitled Page" %>
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
            View Performance score<br />
        </span>
        <br />
    </span></strong><span style="color: #660000">
     </span>
        </span>
        <table style="width: 920px; height: 127px" align="center">
            <tr>
                <td style="text-align: right; width: 174px;">
                    <strong>
                    Employee
                    ID:</strong></td>
                <td style="text-align: left; width: 171px;">
                    <asp:Label ID="lblID" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 174px; text-align: right">
                    <strong>
                    Employee Name:</strong></td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblname" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 174px; text-align: right">
                    <strong>
                    Spelization :</strong></td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblSpelization" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 174px; text-align: right">
                    <strong>
                    Score:</strong></td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblScore" runat="server" Text="-"></asp:Label></td>
            </tr>
            <tr>
                <td style="height: 21px; text-align: center;" colspan="2">
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
       </form>
</asp:Content>

