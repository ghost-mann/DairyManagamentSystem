<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="DairyManagamentSystem.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <h2 id="title">DAIRY FARM MANAGEMENT SYSTEM</h2>
            <br />
            <img src="Images/maincow.jpg" id="image"/>
        </div>
       
        <br />
        <div id="container">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
            :&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="New Username"></asp:Label>
            :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="User E-mail"></asp:Label>
            :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="New Password"></asp:Label>
            :&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Sign Up" BackColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Login" BackColor="Black" ForeColor="White" PostBackUrl="~/Login.aspx" />
            <br />
            <br />
            <br />
        </div>
         <div id="footer">All Rights Reserved &reg; 2023</div>

        
    </form>
</body>
</html>
