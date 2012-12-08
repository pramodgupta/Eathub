<%@ Page Title="" Language="C#" MasterPageFile="~/new.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>


 <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <style>
    input[type=password]
    {
        width: 300px;
        color: White;
position: absolute;
right: 20px;
        }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2>Login</h2>
    
    <p>
        <span class="error"><asp:Label ID="Label1" runat="server" Text="Login Page" Visible="False"></asp:Label></span>
    </p>
    <ul>
    <li>
        <label>Username: </label>
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
    </li>
    <li>
        <label> Password:</label>
        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox> 
        
    </li>
    <li>
        <asp:Button ID="Button1" runat="server" Text="Login as User" 
            onclick="Button1_Click" />

        <asp:Button ID="Button2" runat="server" Text="Login as Restaurant" 
            onclick="Button2_Click" />
    </li>
    </ul>

</asp:content>
   