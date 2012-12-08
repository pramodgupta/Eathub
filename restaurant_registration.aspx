

<%@ Page Title="" Language="C#" MasterPageFile="~/new.master" AutoEventWireup="true" CodeFile="restaurant_registration.aspx.cs" Inherits="restaurant_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
input[type=password]
{
    width: 300px;
    position: absolute;
    right: 20px;
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
  <div id="registration_res">

  <h2> Restaurant Registration</h2>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Restaurant Registration" 
            Visible="False"></asp:Label>
    </p>
   
   <ul>
    <li>
        <label>Restaurant Name:</label>
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
        <label>Passsword</label>
        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="password" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="password" ControlToValidate="cpassword" 
            ErrorMessage="Password should match"></asp:CompareValidator>
        </li>
        <li>
        <label>Confirm Password</label>
        <asp:TextBox ID="cpassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="cpassword" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </li>
        <li>
            <label>Street</label>
        <asp:TextBox ID="street" runat="server"></asp:TextBox>
        </li>
         
     <li>
        <label>City</label>
        <asp:TextBox ID="city" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="city" ErrorMessage="Enter ay valid city"></asp:RequiredFieldValidator>
    </li>
    <li>
    <label>Contact No:</label>
        <asp:TextBox ID="contactno" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="contactno" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    </li>
    <li>
        
        <label>Zipcode:</label>
         <asp:TextBox ID="zipcode" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="zipcode" ErrorMessage="Enter valid zipcode" 
            ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
    </li>
    <li>
        <label>Min Amount</label>
        <asp:TextBox ID="minamount" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="minamount" ErrorMessage="Enter the min amount of your hotel"></asp:RequiredFieldValidator>
    </li>
    <li>
        <label>Delivery Timings: </label>
        <asp:TextBox ID="deliverytiming" runat="server"></asp:TextBox>
    </li>
    <li>
        <label>Logo </label>
        <asp:FileUpload ID="logo" runat="server" />
    </li>
    <li>
        <label>Restaurant Category:</label>
      
         <asp:DropDownList ID="cat" runat="server">
         </asp:DropDownList>
       </li>
        
     <li>
     
        
     </li>

      <li>
       <asp:Button ID="register" runat="server" onclick="register_Click" 
            Text="Register" />
    </li>
    </ul>
    </div> 

</asp:content>
   