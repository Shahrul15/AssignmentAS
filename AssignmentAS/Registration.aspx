<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AssignmentAS.Registration" %>

<!DOCTYPE html>
<script src="https://www.google.com/recaptcha/api.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 132px;
        }
        .auto-style3 {
            width: 132px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 375px;
        }
        .auto-style6 {
            height: 23px;
            width: 375px;
        }
        .auto-style7 {
            width: 137px;
        }
        .auto-style8 {
            height: 23px;
            width: 137px;
        }
    </style>
    <script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=tbPassword.ClientID %>').value;

            if (str.length < 8) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Too short";
                document.getElementById("lbl_pwdchecker").style.color = "Red";

                return ("Too short");
            }
            else if (str.search(/[0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "No numbers";
                document.getElementById("lbl_pwdchecker").style.color = "Red";

                return ("no_number");
            }
            else if (str.search(/[A-Z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "No uppercase characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";

                return ("no_upper");
            }
            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "No lowercase characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";

                return ("no_lower");
            }
            else if (str.search(/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "No special characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";

                return ("no_special");
            }


            document.getElementById("lbl_pwdchecker").innerHTML = "Excellent!";
            document.getElementById("lbl_pwdchecker").style.color = "Blue";


        }
    </script>
    <script src="https://www.google.com/recaptcha/api.js?render=6LfFXEgaAAAAANyheubcoja4wVT1tdO2acOo4GFF"></script>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Register"></asp:Label>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">First Name:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbFname" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">Last Name:</td>
                    <td>
                        <asp:TextBox ID="tbLname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">Credit Card No.:</td>
                    <td>
                        <asp:TextBox ID="tbCrediCard" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" onkeyup="javascript:validate()"></asp:TextBox>
                        <asp:Label ID="lbl_pwdchecker" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style7">Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="tbCPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Date of Birth:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbdob" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_error" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>

                    <td class="auto-style3"></td>
                    <td class="auto-style6">
                        <asp:Button ID="btnLogin" runat="server" OnClick="Button1_Click" Text="Register" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
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
