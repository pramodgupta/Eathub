<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="shoppingcart.aspx.cs" Inherits="shoppingcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>

        <h2>Shopping Cart</h2>
        <asp:Repeater ID="cart" runat="server">
        
        <HeaderTemplate>
           
           <div style="float:left;width:200px; margin-left: 90px;">
    			<span class="price">Product</span>   	   			    			    			
    		                                 
        </div> 

        <div style="float:right;">
    			<strong  style="margin-right: 110px;" class="price"> Price </strong>
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
    			<strong  style="margin-right: 40px;" class="price">$  <%# DataBinder.Eval(Container.DataItem, "price")%></strong> <a class="red" href="testing.aspx?id="> Remove </a>
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
         <div style="float:right; margin-right: 80px;">
    			 <strong  style="margin-right: 40px;" class="price">$ <asp:Label ID="price" runat="server" Text="0" Visible="False"></asp:Label></strong> 
                
    		</div>
   <br />
   <br />
    <asp:Button ID="checkout" runat="server" Text="Checkout" 
        onclick="checkout_Click" />
   
        
        <asp:Label ID="details1" runat="server" Text="Label" Visible="False"></asp:Label>

</asp:Content>

