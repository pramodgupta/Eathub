

<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="user_profile.aspx.cs" Inherits="user_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="user_profile">

    <h2> Personal Profile</h2>
    <span style="float:right;text-align: right; right: 40px;"> <a href="user_profile_edit.aspx">Edit</a></span>
     <br class="clear" />
    <ul>
        <li>
        <label>Name:</label>
        <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
        </li>
        <li>
        <label>Email:</label>
        <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
        </li>
        <li>
       <label> Contact No:</label>
        <asp:Label ID="contact" runat="server" Text="Label"></asp:Label>
        </li>
        <li>
       <label> Zipcode: </label>
        <asp:Label ID="zipcode" runat="server" Text="Label"></asp:Label>
        </li>
    
    </div>
    </asp:Content>