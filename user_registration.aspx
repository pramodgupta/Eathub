

<%@ Page Title="" Language="C#" MasterPageFile="~/new.master" AutoEventWireup="true" CodeFile="user_registration.aspx.cs" Inherits="user_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
     input[type=password]
     {
            width: 300px;
            position:absolute;
            right: 20px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="registration_user">
    
       <h2>User Registration</h2>
        <asp:Label ID="Label1" runat="server" Text="User Registration" Visible="False"></asp:Label>
       
        <ul>
            <li>
                <label> Name: </label>
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="name" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </li>
            <li>
                <label>Email:</label>
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="email" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="email" ErrorMessage="Enter valid email id" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </li>
            <li>
            <label> Passsword </label>
        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="password" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="password" ControlToValidate="cpassword" 
            ErrorMessage="Password should match"></asp:CompareValidator>
             </li>
          <li>        
        <label>Confirm Password </label>
        <asp:TextBox ID="cpassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="cpassword" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
       </li>

       <li>
        
        <label>Contact No:</label>
        <asp:TextBox ID="contactno" runat="server" ontextchanged="TextBox5_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="contactno" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="contactno" ErrorMessage="Enter valid contact number" 
            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
       </li>
        
        <li>
       <label> Zipcode:</label>
        <asp:TextBox ID="zipcode" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="Enter valid zipcode" 
            ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
        </li>
        <li>
        <asp:Button ID="register" runat="server" onclick="register_Click" 
            Text="Register" />
        </li>
    </div>
   </asp:Content>