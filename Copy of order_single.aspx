<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Copy of order_single.aspx.cs" Inherits="order_single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Repeater ID="details" runat="server"></asp:Repeater>

  <p>
        <br />
        <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>

        <h2>Order Details</h2>
        <asp:Repeater ID="cart" runat="server">
        
        <HeaderTemplate>
           
          <div style="float:left;width:250px">
    			<span class="price cufon">Product </span>   			    			    			
    		                                 
        </div> 

      <div style="float:right;">
    			<strong  style="margin-right: 40px;" class="price">Price</strong> 
    		</div>
        <div class="clear"></div>
        <br />
        <hr />
            </HeaderTemplate>
            
            <ItemTemplate>

              <div style="width:100%;">
    			
                <asp:Image ID="Image1" runat="server" />	
    			<div style="float:left;width:82px">
    				<a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
    					<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1" alt="" class="frame img_nofade" style="opacity: 1;">
                        
    				</a>
    			&nbsp;&nbsp;&nbsp;&nbsp;</div>
    					
    		<div style="float:left;width:250px">
    			<span class="cufon"><%# DataBinder.Eval(Container.DataItem, "item_name")%></span>
    			    				   			    			    			
    			<br class="clear">
    			<div class="menu_description">
                <div class="meta-left">
	    	
               </div>
               <div class="meta-right">
                    
             
               </div>

                                  
        </div>           
            		</div>
    		<div style="float:right;">
    			<strong  style="margin-right: 40px;" class="price">$  <%# DataBinder.Eval(Container.DataItem, "price")%></strong> 
    		</div>
 </div>
 <br class="clear">
 <br>
 <hr>

            
            </ItemTemplate>

            <SeparatorTemplate>
                  
            </SeparatorTemplate>

            <FooterTemplate>
            
           

            </FooterTemplate>
        </asp:Repeater>
        
        <label>Sub Total:</label>
         <div style="float:right; ">
    			 <strong  style="margin-right: 40px;" class="price">$ <asp:Label ID="price1" runat="server" Text="0" Visible="true"></asp:Label></strong> 
    		</div>
            <br />
            <br />
<!--
       <strong>Shipping Address:</strong>
        <ul>
           <li><label>Street:</label><asp:Label ID="street1" runat="server" Text="Label"></asp:Label></li>
           <li><label>City:</label><asp:Label ID="city1" runat="server" Text="Label"></asp:Label></li>
           <li><label>State:</label><asp:Label ID="state1" runat="server" Text="Label"></asp:Label></li>
           <li><label>Phone: </label><asp:Label ID="phone1" runat="server" Text="Label"></asp:Label></li>
        </ul>
        -->
   
     
       
</asp:Content>

