<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="table_booking1.aspx.cs" Inherits="table_booking1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
    <h2>Book a table</h2>
    <ul style="list-style:none;">
    <li>
    <label>
    Name:

    </label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
    </li>

    <li>
    <label>
    Phone Number:
    </label>
        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
    </li>
    <li>
    <label>
    Time:
    </label><input type="text" id="time" />
    </li>

    <li>
        <asp:Button ID="submit"  runat="server" Text="Book a Table" 
            onclick="submit_Click" />
    </li>
    </ul>

    </div>

</asp:Content>

