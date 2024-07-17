<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ALogin.aspx.cs" Inherits="Helping_Hands.ALogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 467px;
        }
        .auto-style3 {
            width: 467px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            color: #FF0000;
        }
        .auto-style6 {
            width: 467px;
            color: #3399FF;
            font-size: large;
        }
        .auto-style7 {
            color: #3399FF;
            font-size: large;
        }
        .auto-style8 {
            font-size: large;
            color: #006600;
            font-weight: bold;
            background-color: #FFFF99;
        }
        .auto-style9 {
            width: 467px;
            height: 35px;
        }
        .auto-style10 {
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Label" Visible="False"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong></strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="UserName"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="DateTime"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="Password"></asp:Label>
                        </strong></td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong></strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style8" OnClick="Button1_Click" Text="Login" />
                        </strong></td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
