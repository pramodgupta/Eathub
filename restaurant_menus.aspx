
<%@ Page Title="" Language="C#" MasterPageFile="~/restaurant.master" AutoEventWireup="true" CodeFile="restaurant_menus.aspx.cs" Inherits="menus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    
     <div id = "menupage">
   
        <asp:Repeater ID="menu" runat="server">
            <HeaderTemplate>
            <h2>Menu</h2>
           
           <a href="menu_add.aspx" class="green">Add New Item</a>
           <br />
           <br />
           <br />

            </HeaderTemplate>
            
            <ItemTemplate>

              <div style="width:100%; min-height: 90px;">
    			
                <asp:Image ID="Image1" runat="server" />	
    			<div style="float:left;width:82px">
    				<a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
    					<!--<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1" alt="" class="frame img_nofade" style="opacity: 1;">-->
                         <img class="frame img_nofade" style="width: 60px; height: 60px;" src="<%# DataBinder.Eval(Container.DataItem, "itempath")%>" />
    				</a>
                    <div class="clear"></div>
    			</div>
    					
    		<div style="float:left;width:300px">
    			<a href="menu_edit.aspx?id=<%# DataBinder.Eval(Container.DataItem, "itemid")%>"><h5 class="cufon"><%# DataBinder.Eval(Container.DataItem, "itemname")%></h5></a>
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    			    			
    			<br class="clear">
    			<div class="menu_description">
                <div class="meta-left">
	    		<%# DataBinder.Eval(Container.DataItem, "itemdesc")%>
               </div>
               <div class="meta-right">
              Item Type:  <%# DataBinder.Eval(Container.DataItem, "itemtype")%> <br />
              Item Category: <%# DataBinder.Eval(Container.DataItem, "itemcategory")%>
               </div>
                    
        </div>           
            		</div>
    		<div style="float:right;width:50px">
    			<strong class="price">$  <%# DataBinder.Eval(Container.DataItem, "itemprice")%></strong>
    		</div>
             <div class="clear"></div>
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
    </div>

    </div>
  
  </asp:Content>