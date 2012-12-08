<%@ Page Title="" Language="C#" MasterPageFile="~/restaurant.master" AutoEventWireup="true" CodeFile="res_revenue.aspx.cs" Inherits="res_revenue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="js/FusionCharts.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2>Monthly Revenue</h2>
<div>
     <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
</asp:Content>

