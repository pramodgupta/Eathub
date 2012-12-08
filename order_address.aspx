<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true"
    CodeFile="order_address.aspx.cs" Inherits="order_address" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    
    <script src="http://fgelinas.com/code/timepicker/jquery.ui.timepicker.js?v=0.3.1"></script>
    <link rel="Stylesheet" href="http://fgelinas.com/code/timepicker/jquery.ui.timepicker.css?v=0.3.1" />
    <script>
        $(function () {
            $("#ctl00_ContentPlaceHolder1_datepicker").datepicker();
            $("#ctl00_ContentPlaceHolder1_time").timepicker();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>
        Delivery Address</h2>
    Please Enter the Deliver Address
    <ul>
        <li>
            <label>
                Name:</label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Name Required"
                ControlToValidate="name"></asp:RequiredFieldValidator>
        </li>
        <li>
            <label>
                Street:</label>
            <asp:TextBox ID="street" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Street Required"
                ControlToValidate="street"></asp:RequiredFieldValidator>
        </li>
        <li>
            <label>
                City:</label>
            <asp:TextBox ID="city" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="city required"
                ControlToValidate="city"></asp:RequiredFieldValidator>
        </li>
        <li>
            <label>
                State:</label>
            <asp:TextBox ID="state" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="State Required"
                ControlToValidate="state"></asp:RequiredFieldValidator>
        </li>
        <li>
            <label>
                Future Date Order:</label>
            <asp:CheckBox ID="futuredt" runat="server"></asp:CheckBox></li>
        <li>
            <label>
                Time of Delivery:</label>
            
            <input type="text" id="time" runat="server" />
         </li>
         </li>

         <li>
            <label>
                Date of Delivery:</label>
            <input type="text" id="datepicker" runat="server" />
         </li>
        <li>
            <label>
                Phone:</label>
            <asp:TextBox ID="phone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone Required"
                ControlToValidate="phone"></asp:RequiredFieldValidator>
        </li>
        <li>
            <asp:Button ID="submit" runat="server" Text="Place the Order" OnClick="submit_Click" />
        </li>
    </ul>
</asp:Content>
