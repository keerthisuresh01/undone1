<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="AddEmployeeToProject.aspx.vb" Inherits="AddEmployeeToProject" title="EmployeeToProject Page" %>
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
            Add Employee To Project<br />
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
                    <asp:DropDownList ID="ddProjectId" runat="server" AutoPostBack="True" Width="157px">
                    </asp:DropDownList></td>
                <td style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Project Name:</td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblprojectname" runat="server" Text="-"></asp:Label></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Start Date:</td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblStartDate" runat="server" Text="-"></asp:Label></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Duration:</td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblDuration" runat="server" Text="-"></asp:Label></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    &nbsp;Total Strenght:</td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblTotalStrength" runat="server" Text="-"></asp:Label></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Current strength:</td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblCurrentStrength" runat="server" Text="-"></asp:Label></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Description:</td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblDesc" runat="server" Text="-"></asp:Label></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Spelization:</td>
                <td style="width: 171px; text-align: left">
                    <asp:DropDownList ID="ddSpelization" runat="server" AutoPostBack="True" Width="156px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Java</asp:ListItem>
                        <asp:ListItem>Dot NET</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                        <asp:ListItem>SQL</asp:ListItem>
                        <asp:ListItem>ORACLE</asp:ListItem>
                        <asp:ListItem>UI Designing</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Employee ID:</td>
                <td style="width: 171px; text-align: left">
                    <asp:DropDownList ID="ddEmployeeID" runat="server" AutoPostBack="True" Width="157px">
                    </asp:DropDownList></td>
                <td style="text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 384px; text-align: right">
                    Employee Name:</td>
                <td style="width: 171px; text-align: left">
                    <asp:Label ID="lblEmpName" runat="server" Text="-"></asp:Label></td>
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
                    <asp:Button ID="btnSubmit" runat="server" Text="Assign" Width="152px" style="background-color: #ff6d15; border:none; " Height="28px" ValidationGroup="1" Font-Bold="True" Font-Names="Cambria" ForeColor="Black" /></td>
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




