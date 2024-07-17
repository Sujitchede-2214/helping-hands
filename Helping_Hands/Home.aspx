<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Helping_Hands.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: justify;
            background-color: #FF66FF;
        }
        .auto-style3 {
            background-color: #FFFFFF;
        }
        .auto-style4 {
            font-size: xx-large;
            color: #66FFFF;
        }
        .auto-style5 {
            width: 627px;
            font-size: large;
            color: #FF0066;
        }
        .auto-style6 {
            width: 185px;
        }
        .auto-style7 {
            width: 249px;
        }
        .auto-style9 {
            text-align: justify;
            height: 4px;
        }
        .auto-style10 {
            color: #FF0066;
        }
        .auto-style11 {
            font-size: large;
            color: #FF0066;
        }
        .auto-style12 {
            text-align: justify;
            background-color: #FF66FF;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp; HELPING HANDS&nbsp;</strong></span><br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style1">
                            <tr>
                                <td class="auto-style5"><strong><span class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style11" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                                    <span class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style11" NavigateUrl="~/Register.aspx">Rregister</asp:HyperLink>
                                    </span><span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></strong></td>
                                <td class="auto-style7">
                                    <div class="auto-style9">
                                        <strong>
                                        <asp:Menu ID="Menu1" runat="server" BackColor="White" CssClass="auto-style12" ForeColor="#FF0066" OnMenuItemClick="Menu1_MenuItemClick">
                                            <Items>
                                                <asp:MenuItem Text="Login" Value="Login">
                                                    <asp:MenuItem Text="Admin" Value="Admin" NavigateUrl="~/ALogin.aspx"></asp:MenuItem>
                                                    <asp:MenuItem NavigateUrl="~/ULogin.aspx" Text="User" Value="User"></asp:MenuItem>
                                                </asp:MenuItem>
                                            </Items>
                                        </asp:Menu>
                                        </strong>
                                    </div>
                                    <strong><span class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></td>
                                <td class="auto-style6"><strong>
                                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style11" NavigateUrl="~/Search.aspx">Search</asp:HyperLink>
                                    </strong></td>
                                <td class="auto-style10">&nbsp;</td>
                            </tr>
                        </table>
&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/images/blooddon_img3.jpg" Width="350px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl="~/images/helpinghand_img1.jpg" Width="350px" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image3" runat="server" Height="250px" ImageUrl="~/images/bloodgrp_img2.jpg" Width="350px" />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
