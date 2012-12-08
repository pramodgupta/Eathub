
<%@ Page Title="" Language="C#" MasterPageFile="~/restaurant.master" AutoEventWireup="true" CodeFile="category_add.aspx.cs" Inherits="category_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div>
    
        <h2>Add New Category</h2>
        <asp:Label ID="status" runat="server" Text="Label" Visible="False"></asp:Label>
        
    <ul>
      <li> <label> Category name: </label>
        <asp:TextBox ID="cat_name" runat="server"></asp:TextBox></li>
        
        
      <li> <label> Category type : </label>
        <asp:TextBox ID="cat_type" runat="server"></asp:TextBox></li>
      
      <li>
      <label>Cateogry Image:</label>
          <asp:FileUpload ID="catimg" runat="server" />
          
      </li>  
        

        <li><asp:Button ID="add" runat="server" onclick="add_Click" Text="add" /></li>

        </ul>     
    </div>
   </asp:Content>