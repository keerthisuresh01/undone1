<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="ViewEmployee.aspx.vb" Inherits="ViewEmployee" title="View Employee" %>
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
        View Employee<br />
        <br />
    </span></strong>
    <table>
        <tr>
            <td>
                Employee Id:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="174px" AutoPostBack="True">
                </asp:DropDownList></td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="Black"
                    Height="28px" Style="border-right: medium none; border-top: medium none; border-left: medium none;
                    border-bottom: medium none; background-color: lightgray" Text="Delete" ValidationGroup="1"
                    Width="127px" /></td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                --</td>
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

