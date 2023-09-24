<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="psdLec.Views.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .register_account{
            margin-right: 20px;
        }
                .password_login{
            width: 400px;
            
            font-size: 20px;
        }
                body{
            font-size: 20px;
        }
                .header{
            background-color:antiquewhite;
            border: 2px solid gray;
            padding: 5px 5px 5px 5px;
        }
    </style>
</head>
    <body>
        <div class="header">
            <h1>Welcome to SecondLife Market</h1>
            <p>By embracing the concept of reusing and recycling, SecondLife Market promotes sustainability and helps reduce waste, while also offering a budget-friendly and eco-conscious shopping experience. Join the community of environmentally conscious individuals and start exploring the endless possibilities of SecondLife Market today.</p>
        </div>
        <form runat="server" class="register_form" autocomplete="off">
            <h1>Register now to start your journey!</h1>
            <div class="register_label">
                <label>Nama Asli</label>
                <asp:Label ID="warn_name" runat="server" class="warning" visible="false"></asp:Label>
            </div>
            <asp:TextBox ID="register_realname" runat="server" placeholder="Contoh: Andi Pratama" class="password_login"/></asp:TextBox>
            <br /><br />
            <div class="register_label">
                <label>Nomor telepon</label>
                <asp:Label ID="warn_phone" runat="server" class="warning" visible="false"></asp:Label>
            </div>
            <asp:TextBox ID="register_phone" runat="server" placeholder="Contoh: 08123456789" class="password_login"/></asp:TextBox>
            <br /><br />
            <div class="register_label">
                 <label>Email</label>
                 <asp:Label ID="warn_email" runat="server" class="warning" visible="false"></asp:Label>
            </div>
            <asp:TextBox ID="register_email" runat="server" placeholder="Contoh: andi@gmail.com" class="password_login"/></asp:TextBox>
            <br /> <br />
            <div class="register_label">
                <label>Kata Sandi</label>
                <asp:Label ID="warn_password" runat="server" class="warning" visible="false"></asp:Label>
            </div>
            <asp:TextBox ID="register_password" runat="server" TextMode="Password" class="password_login" /></asp:TextBox>
            <br /> <br />
            <div class="login_buttons">
                <asp:Button ID="register_account" runat="server" Text="Register" class="register_account" OnClick="register_account_Click"/>
                <asp:Button ID="to_login" runat="server" Text="Punya Akun?" class="register_account" OnClick="to_login_Click"/>
            </div>
        </form>
    </body>
</html>
