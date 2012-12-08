
<%@ Page Title="" Language="C#" MasterPageFile="~/restaurant.master" AutoEventWireup="true" CodeFile="menu_edit.aspx.cs" Inherits="menu_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h2>Update your Menu</h2>

    <ul>
   <li>
      <label> Item Name:</label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="name" ErrorMessage="Please Enter the item name"></asp:RequiredFieldValidator>
      </li>
      <li>
       <label> Item Category: </label>
        <asp:DropDownList ID="category" runat="server" >
        </asp:DropDownList>
    
    </li>
     <li>
       <label> Item Type:</label>
        <asp:DropDownList ID="cattype" runat="server" >
        </asp:DropDownList>
    
    </li>
    <li>
      <label> Item Description:</label>
        <asp:TextBox ID="desc" runat="server" ></asp:TextBox>
    
    </li>
    <li>
      <label>  Item Price:</label>
        <asp:TextBox ID="price" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="price" ErrorMessage="Please Enter the item price"></asp:RequiredFieldValidator>
    </li>
    <li>
       <label> Menu Image :</label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </li>
        <asp:Label ID="id" runat="server" Text="Label" Visible="False"></asp:Label>
    <li>
        <asp:Button ID="update" runat="server" Text="Update" onclick="update_Click" />
        <asp:Button ID="delete" runat="server" Text="Delete" />
    </li>
        
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
    
    
        
    </ul>
        
    
    
</asp:Content>