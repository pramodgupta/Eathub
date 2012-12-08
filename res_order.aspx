<%@ Page Title="" Language="C#" MasterPageFile="~/restaurant.master" AutoEventWireup="true" CodeFile="res_order.aspx.cs" Inherits="res_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Repeater ID ="details" runat="server">
 <HeaderTemplate>
           
            <ul>
            <li>
            <div class="price"  id="res_det" style ="float: left; width: 250px;">
            <strong>User Name</strong>
             </div>

             <div  class="price" id="order_date" style ="float: left; width: 150px;">
             <strong>Order Date</strong>
             </div>
              <div class="price" id="order_price" style ="float: left; width: 100px;">
             <strong>Price</strong>
             </div>
            
            </li>
           <br />
           <br />
            </HeaderTemplate>
            
            <ItemTemplate>

            
            <a href="res_order_single.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>" > <li class="clear">
             <div id="res_det" style ="float: left; width: 250px;">
            <h5 class="cufon" style="font-size: 18px;" > <%# DataBinder.Eval(Container.DataItem, "user_id")%></h5>
             </div>

             <div  id="order_date" style ="float: left; width: 150px;">
             <%# DataBinder.Eval(Container.DataItem, "date")%>
             </div>
              <div class="price" id="order_price" style ="float: left; width: 100px;">
             $ <%# DataBinder.Eval(Container.DataItem, "price")%>
             </div>
             
             </li></a>
             
            		<hr />		

   
           
            </ItemTemplate>

            <SeparatorTemplate>
                  
            </SeparatorTemplate>

            <FooterTemplate>
              </ul> 
            </FooterTemplate>

     
     


</asp:Repeater>


</asp:Content>

