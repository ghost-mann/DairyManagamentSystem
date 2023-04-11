<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DairyManagamentSystem.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
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
            <asp:Label ID="user" runat="server" Text="UserID"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="user_id" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;:&nbsp;
            <asp:TextBox ID="pass_word" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" BackColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sign Up" BackColor="Black" ForeColor="White" PostBackUrl="~/SignUp.aspx" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <div id="footer">All Rights Reserved &reg; 2023</div>
    </form>
</body>
</html>
