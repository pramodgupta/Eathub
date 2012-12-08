<%@ Page Title="" Language="C#" MasterPageFile="~/new.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2>Contact Us</h2>

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<ul>

<li>
<label>Name: </label>
<asp:TextBox ID="name" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Name Required" ControlToValidate="name"></asp:RequiredFieldValidator>
</li>
<li>
<label>Email: </label>
<asp:TextBox ID="email" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Name Required" ControlToValidate="email"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator
        ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="RegularExpressionValidator" ControlToValidate="email" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</li>

<li>
<label>Message: </label>
</li>

<li style="height: 200px;margin-top: -40px;">
   <textarea style="width: 295px; right: 20px; position:absolute;" id="msg" 
                runat="server"/>
</li>

<li>

    <asp:Button ID="submit" runat="server" Text="Send Mail" 
        onclick="submit_Click" /></li>
</ul>


</asp:Content>

