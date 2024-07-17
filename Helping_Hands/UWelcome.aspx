<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UWelcome.aspx.cs" Inherits="Helping_Hands.UWelcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            color: #66FFFF;
            background-color: #FF6699;
        }
        .auto-style3 {
            background-color: #FF6699;
        }
        .auto-style4 {
            background-color: #FF3399;
        }
        .auto-style5 {
            background-color: #FFFFFF;
        }
        .auto-style6 {
             font-size: large;
             color: #800000;
         }
         .auto-style7 {
             color: #800000;
         }
         .auto-style8 {
             font-size: large;
             text-decoration: underline;
             color: #006600;
         }
         .auto-style9 {
             color: #663300;
             font-size: large;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table class="auto-style1">
                <tr>
                    <td class="auto-style4"><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><strong><span class="auto-style2">HELPING&nbsp;&nbsp; HANDS&nbsp;</span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style7">&nbsp; </span> <strong><span class="auto-style6">&nbsp;&nbsp; &nbsp;</span><asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style6" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                        <span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style6" NavigateUrl="~/Update.aspx">Update</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style6" NavigateUrl="~/Search.aspx">Search</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hi&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style9" NavigateUrl="~/LogOut.aspx">LogOut</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/images/blooddon_img3.jpg" Width="350px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl="~/images/helpinghand_img1.jpg" Width="350px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image3" runat="server" Height="250px" ImageUrl="~/images/bloodgrp_img2.jpg" Width="350px" />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
