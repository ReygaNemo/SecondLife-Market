<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterSeller.aspx.cs" Inherits="psdLec.Views.RegisterSeller" %>

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
 <form runat="server" class="register_form" autocomplete="off">
     <h1 class="header">Register to be a Seller now!</h1>
            <div class="register_label">
                <label>Nama Asli</label>
                <asp:Label ID="warn_name" runat="server" class="warning"></asp:Label>
            </div>
            <asp:TextBox ID="txtName" runat="server" placeholder="Contoh: KurniaDwi" class="password_login"/></asp:TextBox>
     <br /><br />
            <div class="register_label">
                <label>Nomor telepon</label>
                <asp:Label ID="warn_phone" runat="server" class="warning"></asp:Label>
            </div>
            <asp:TextBox ID="txtPhone" runat="server" placeholder="Contoh: 08123456789" class="password_login" /></asp:TextBox>
     <br /><br />
            <div class="register_label">
                 <label>Email</label>
                 <asp:Label ID="warn_email" runat="server" class="warning"></asp:Label>
            </div>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Contoh: seller@gmail.com" class="password_login"/></asp:TextBox>
     <br /><br />
            <div class="register_label">
                <label>Kata Sandi</label>
                <asp:Label ID="warn_password" runat="server" class="warning"></asp:Label>
            </div>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="password" /></asp:TextBox>
     <br /><br />
            <div class="login_buttons">
                <asp:Button ID="register_account" runat="server" Text="Register" class="register_account" OnClick="btnRegister_Click"/>
                <asp:Button ID="to_login" runat="server" Text="Punya Akun?" class="register_account" OnClick="btnLogin_Click"/>
            </div>
        </form>
</body>
</html>
