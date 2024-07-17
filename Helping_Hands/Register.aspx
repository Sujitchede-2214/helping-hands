<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Helping_Hands.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 484px;
        }
        .auto-style3 {
            font-size: large;
            color: #0066FF;
        }
        .auto-style4 {
            width: 484px;
            font-size: large;
            color: #0066FF;
        }
        .auto-style5 {
            color: #00FF00;
            font-size: large;
            font-weight: bold;
            background-color: #FF9933;
        }
        .auto-style6 {
            color: #CCFFFF;
            font-size: large;
            font-weight: bold;
            background-color: #FF0000;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style8 {
            color: #FF3300;
            font-size: large;
        }
        .auto-style9 {
            width: 484px;
            font-size: large;
            color: #0066FF;
            height: 35px;
        }
        .auto-style10 {
            font-size: large;
            height: 35px;
            width: 1299px;
        }
        .auto-style11 {
            width: 1299px;
        }
        .auto-style12 {
            font-size: large;
            width: 1299px;
        }
        .auto-style13 {
            width: 484px;
            font-size: large;
            color: #0066FF;
            height: 48px;
        }
        .auto-style14 {
            width: 1299px;
            height: 48px;
        }
        .auto-style15 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="UserName"></asp:Label>
                        </strong></td>
                    <td class="auto-style11">
                        <strong>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style15" ErrorMessage="User Name Must be Required"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Password"></asp:Label>
                        </strong></td>
                    <td class="auto-style11">
                        <strong>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style15" ErrorMessage="Password Must be Required"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" CssClass="auto-style15" ErrorMessage="password must be contain:min 8 characters,atleast 1upper case,atleast 1lowercase,1 number and 1 special character" ValidationExpression="^(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*])(?!.*\s).*$"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Confrim Password"></asp:Label>
                        </strong></td>
                    <td class="auto-style11">
                        <strong>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style7" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style15" ErrorMessage="Comfrim Password Must be Required"></asp:RequiredFieldValidator>
                        </strong>
                    &nbsp;&nbsp;&nbsp; <strong>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="auto-style15" ErrorMessage="Confrim Pass &amp; Password Must be Same"></asp:CompareValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text="Gender"></asp:Label>
                        </strong></td>
                    <td class="auto-style11">
                        <strong>
                        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style7" ForeColor="#0066FF" Text="Male" GroupName="gen" />
                        <span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </span>
                        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style7" ForeColor="#6600CC" Text="Female" GroupName="gen" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style3" Text="Languages"></asp:Label>
                        </strong></td>
                    <td class="auto-style11">
                        <strong>
                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style8" Text="Telugu" />
                        </strong><span class="auto-style8"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </strong></span><strong>
                        <asp:CheckBox ID="CheckBox2" runat="server" CssClass="auto-style8" Text="Hindi" />
                        </strong><span class="auto-style8"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </strong></span><strong>
                        <asp:CheckBox ID="CheckBox3" runat="server" CssClass="auto-style8" Text="English" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style3" Text="State"></asp:Label>
                        </strong></td>
                    <td class="auto-style11">
                        <strong>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style7" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style3" Text="City"></asp:Label>
                        </strong></td>
                    <td class="auto-style11">
                        <strong>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style7">
                        </asp:DropDownList>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style3" Text="BloodGroup"></asp:Label>
                        </strong></td>
                    <td class="auto-style11">
                        <strong>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style7">
                            <asp:ListItem>--select--</asp:ListItem>
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>A-</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>B-</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                        </asp:DropDownList>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style3" Text="PhoneNo"></asp:Label>
                        </strong></td>
                    <td class="auto-style11">
                        <strong>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style7"></asp:TextBox>
                        &nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" CssClass="auto-style15" ErrorMessage="Phone Number Must be in 10 digits" ValidationExpression="[6-9][0-9]{9}"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style3" Text="Email-Id"></asp:Label>
                        </strong></td>
                    <td class="auto-style14">
                        <strong>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style7"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" CssClass="auto-style15" ErrorMessage="Email Id Must be Required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style7"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Register" />
                        </strong><span class="auto-style7"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Text="Clear" OnClick="Button2_Click" />
                        </strong></td>
                </tr>
            </table>
        </div>
    </form> 
</html>
