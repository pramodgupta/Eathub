
<%@ Page Title="" Language="C#" MasterPageFile="~/restaurant.master" AutoEventWireup="true" CodeFile="restaurant_profile.aspx.cs" Inherits="restaurant_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="restaurant_profile">
    
    <h2>Your Profile</h2>
     <span style="float:right;text-align: right; right: 40px;"> <a href="restaurant_profile_edit.aspx">Edit</a></span>
     <br class="clear" />
    <p>
        
        <asp:Label ID="Label3" runat="server" Text="Profile" Visible="False"></asp:Label>
      
    </p>
   <ul>
       <li>
        <label> Name:</label>
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
    
        <label> Street:</label>
        <asp:Label ID="street" runat="server" Text="Label"></asp:Label>
    </li>
    <li>
       <label>  City:  </label>
        <asp:Label ID="city" runat="server" Text="Label"></asp:Label>
        </li>
        <li>
        
        <label> Zipcode:</label>
        <asp:Label ID="zipcode" runat="server" Text="Label"></asp:Label>
        </li>
        <li>
    
        <label> Minimun Amount:</label>
        <asp:Label ID="minamount" runat="server" Text="Label"></asp:Label>
        </li>
        <li>
       <label>  Delivery Timings:</label>
        <asp:Label ID="timings" runat="server" Text="Label"></asp:Label>
</li>
    <li>
      <label> Category:</label>
        <asp:Label ID="category" runat="server" Text="Label"></asp:Label>
    </li>
       </ul>
</div>
        </asp:Content>