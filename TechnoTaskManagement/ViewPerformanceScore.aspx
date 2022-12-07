<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="ViewPerformanceScore.aspx.vb" Inherits="ViewPerformanceScore" title="Untitled Page" %>
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
                <td style="text-align: right; width: 384px;">
                    Employee
                    ID:</td>
                <td style="text-align: left; width: 171px;">
                    <asp:DropDownList ID="ddId" runat="server" AutoPostBack="True" Width="157px">
                    </asp:DropDownList></td>
                <td style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Employee Name:</td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblname" runat="server" Text="-"></asp:Label></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Spelization :</td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblSpelization" runat="server" Text="-"></asp:Label></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Score:</td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblScore" runat="server" Text="-"></asp:Label></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; height: 30px;">
                </td>
                <td style="text-align: left; width: 171px; height: 30px;">
                    </td>
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

