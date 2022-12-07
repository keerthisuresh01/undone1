<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" title="Login Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />
      <br />
    <br />
    <br />
    <br />
    <br />
    <span style="font-family: Cambria"><strong><span style="font-size: 16pt;">
        Login Form</span></strong></span><br />
    <table style="width: 200px; height: 128px" align="center"  >
        <tr>
            <td style="height: 33px; width: 219px; text-align: left;">
                <strong>
                Username:<br />
                </strong><asp:TextBox ID="txtUsername" runat="server" Placeholder="Username" Width="304px" Height="22px" ></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 33px; width: 219px; text-align: left;">
                <strong>
                Password:</strong><asp:TextBox ID="txtPassword" runat="server" Placeholder="password" Width="304px" TextMode="Password" Height="22px" ></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 34px; width: 219px; text-align: left;">
                <strong>
                    <br />
                Type:</strong><asp:DropDownList ID="ddType" runat="server" Width="312px" Height="30px" >
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Team Leader</asp:ListItem>
                    <asp:ListItem>Employee</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="height: 50px; width: 219px;">
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="312px" style="background-color: #ff6d15; border-radius:2px; border:none; cursor:pointer; " Height="30px" Font-Bold="True" Font-Names="Cambria" Font-Size="Medium"/></td>
        </tr>
        <tr>
            <td style="width: 219px">
                <asp:Label ID="lblstatus" runat="server" ForeColor="Red" Text="-"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

