<%@ Page Language="C#" AutoEventWireup="true" CodeFile="table_bokking.aspx.cs" MasterPageFile="~/user.master" Inherits="table_bokking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script src="http://fgelinas.com/code/timepicker/jquery.ui.timepicker.js?v=0.3.1"></script>
    <link rel="Stylesheet" href="http://fgelinas.com/code/timepicker/jquery.ui.timepicker.css?v=0.3.1" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/style3.css" />
   <script>
       $(function () {
          
           $("#time").timepicker();
       });
    </script>




</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
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
        <asp:Button ID="submit" class="green" runat="server" Text="Book a Table" 
            onclick="submit_Click" />
    </li>
    </ul>

    </div>
    </form>
</body>
</html>
