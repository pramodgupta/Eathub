
<%@ Page Title="" Language="C#" MasterPageFile="~/restaurant.master" AutoEventWireup="true" CodeFile="restaurant_profile_edit.aspx.cs" Inherits="restaurant_profile_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <h2>Profile Edit</h2>
    
    <ul>
    <li>
       <label> Name:</label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="name" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </li>
        <li>
        
       <label> Street</label>
        <asp:TextBox ID="street" runat="server"></asp:TextBox>
        </li>
    
    <li>
       <label> City</label>
        <asp:TextBox ID="city" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="city" ErrorMessage="Enter ay valid city"></asp:RequiredFieldValidator>
</li>
    <li>
    
<label>Contact No:</label>
        <asp:TextBox ID="contactno" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="contactno" ErrorMessage="Enter contact no"></asp:RequiredFieldValidator>
    </li>
    
        <li>
      <label>  Zipcode: </label>
         <asp:TextBox ID="zipcode" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="Enter valid zipcode" 
            ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
    </li>
    <li>
       <label> Min Amount</label>
        <asp:TextBox ID="minamount" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="minamount" 
            ErrorMessage="Enter the min amount of your hotel"></asp:RequiredFieldValidator>
    </li>
    <li>
      <label>  Delivery Timings</label>
        <asp:TextBox ID="timing" runat="server"></asp:TextBox>
    
    </li>
    <li>
       <label> Logo </label>
        <asp:FileUpload ID="logo" runat="server" />
    </li>
    <li>
    
        <label>Restaurant Category:</label>
        <asp:TextBox ID="category" runat="server"></asp:TextBox>
    </li>

    <li>
      <asp:Button ID="update" runat="server" onclick="register_Click" 
            Text="update" />
    </li>
    <li>
        
    
        <asp:Label ID="status" runat="server" Text="Label" Visible="False"></asp:Label>
    </li>
    </ul>
  
  </asp:Content>