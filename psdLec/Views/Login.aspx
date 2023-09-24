<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="psdLec.Views.Login" %>

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
        .login_form{
            width: 500px;
        }
    </style>
</head>
<body>
    <form runat="server" class="login_form_frame" autocomplete="off">
        <div class="header">
            <h1>Welcome to SecondLife Market</h1>
            <p>By embracing the concept of reusing and recycling, SecondLife Market promotes sustainability and helps reduce waste, while also offering a budget-friendly and eco-conscious shopping experience. Join the community of environmentally conscious individuals and start exploring the endless possibilities of SecondLife Market today.</p>
        </div>
        <div class="login_form">
            <h2>Login Page</h2>
            <label class="label1">Email</label>
            <asp:TextBox ID="login_email" runat="server" class="password_login"/>
            <br />
            <label class="label1">Kata Sandi</label>
            <asp:TextBox ID="login_password" runat="server" TextMode="Password" class="password_login" />
            <br />
            
            <asp:Label ID="warn_login" runat="server" class="warning" Text="* Email atau Password yang dimasukkan tidak tepat"></asp:Label>
            <div class="remember_me">
                <label>Remember Me</label>
                <asp:CheckBox ID="remember" runat="server" />
            </div>
            <div class="login_buttons">
                <asp:Button ID="login_account" runat="server" Text="Login" class="login_account" OnClick="login_account_Click" />
                <asp:Button ID="to_register" runat="server" Text="Register" class="register_account" OnClick="to_register_Click" />
            </div>
        </div>
    </form>
</body>
</html>
