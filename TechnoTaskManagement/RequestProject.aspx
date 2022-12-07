<%@ Page Language="VB" MasterPageFile="~/MasterPageEmployee.master" AutoEventWireup="false" CodeFile="RequestProject.aspx.vb" Inherits="RequestProject" title="Project Request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <strong><span style="font-size: 16pt; font-family: Cambria">
        <br />
        <br />
        <br />
        Add Request To Project<br />
        <br />
    </span></strong>
    <table>
        <tr>
            <td>
                Project Id:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="174px" AutoPostBack="True">
                </asp:DropDownList></td>
            <td>
                <asp:Button ID="btnRequest" runat="server" Font-Bold="True" Font-Names="Cambria"
                    Font-Size="Medium" Height="30px" Style="border-right: medium none; border-top: medium none;
                    border-left: medium none; cursor: pointer; border-bottom: medium none; background-color: #ff6d15;
                    border-radius: 2px" Text="Request" Width="134px" /></td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Label ID="lblStatus" runat="server" BackColor="White" ForeColor="Red" Text="--"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="3" rowspan="2">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
        </tr>
    </table>
    <br />
    </form>
</asp:Content>


