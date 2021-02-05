<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AssignmentAS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 112px;
        }
        .auto-style3 {
            width: 112px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>

    <script src="https://www.google.com/recaptcha/api.js?render=6LfFXEgaAAAAANyheubcoja4wVT1tdO2acOo4GFF"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Login"></asp:Label>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td>
                        <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Label ID="lbl_error" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" OnClick="Button1_Click" Text="Login" />
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response"/>
    </form>
    <script>
 grecaptcha.ready(function () {
     grecaptcha.execute(' 6LfFXEgaAAAAAJl7NQSvro5E_PLDvLayHUL7IGcJ ', { action: 'Login' }).then(function (token) {
 document.getElementById("g-recaptcha-response").value = token;
 });
 });
    </script>
</body>
</html>
