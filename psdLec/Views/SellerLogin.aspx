<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerLogin.aspx.cs" Inherits="psdLec.Views.SellerLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
                body{
            font-size: 20px;
        }
        .label1{
            padding-right:30px;
            
        }
        .register_account{
            margin-left: 20px;
        }
        .password_login{
            width: 220px;
            
            font-size: 20px;
        }
        .header{
            background-color:antiquewhite;
            border: 2px solid gray;
            padding: 5px 5px 5px 5px;
        }
        .main_button{
            margin-right:20px;
        }
    </style>
</head>
<body>
    <form runat="server" class="login_form_frame" autocomplete="off">
        <h1 class="header">Seller Login</h1>
        <div class="login_form">
                <label>Email</label>
            <asp:TextBox ID="login_email" runat="server" class="password_login"/>
            <br /><br />
            <label>Kata Sandi</label>
            <asp:TextBox ID="login_password" runat="server" TextMode="Password" class="password_login" />
            <br /><br />
            <asp:Label ID="warn_login" runat="server" class="warning" visible="false"></asp:Label>

            <div class="login_buttons">
                <br />
                <asp:Button ID="login_account" runat="server" Text="Login" class="login_account" OnClick="login_account_Click" />
                <asp:Button ID="to_register" runat="server" Text="Register" class="register_account" OnClick="to_register_Click" />
            </div>
        </div>
    </form>
</body>
</html>
