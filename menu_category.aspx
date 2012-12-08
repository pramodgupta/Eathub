<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="menu_category.aspx.cs" Inherits="menu_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2><asp:Label ID="heading" runat="server" Text=" "></asp:Label></h2>
<div class="menu_cat">
<h2>Menu</h2>

    
    <asp:Label ID="goback" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Repeater ID="menu1" runat="server">

              <HeaderTemplate>
           
           
            </HeaderTemplate>
            
            <ItemTemplate>

              <div style="width:100%; min-height: 110px;">
    			
                <asp:Image ID="Image1" runat="server" />	
    			<div style="float:left;width:82px">
    				<a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
    					<!--<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1" alt="" class="frame img_nofade" style="opacity: 1;"> -->
                         <img class="frame" src="<%# DataBinder.Eval(Container.DataItem, "itempath")%>" />
    				</a>
    			&nbsp;&nbsp;</div>
    					
    		<div style="float:left;width:300px">
    			<h5 class="cufon"><%# DataBinder.Eval(Container.DataItem, "itemname")%></h5>
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    			    			
    			<br class="clear">
    			<div class="menu_description">
                <div class="meta-left">
	    		<%# DataBinder.Eval(Container.DataItem, "itemdesc")%><br />
                 Item Type:  <%# DataBinder.Eval(Container.DataItem, "itemtype")%> 
               </div>
               <div class="meta-right">
         
            
              <a class="green" href="testing.aspx?id=<%# DataBinder.Eval(Container.DataItem, "itemid")%>"> Add to Cart </a>
               </div>

               <div class="add-to-cart">
                 
               </div>

                    
        </div>           
            		</div>
    		<div style="float:right;width:60px">
    			<strong class="price">$  <%# DataBinder.Eval(Container.DataItem, "itemprice")%></strong>
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

   </div>

</asp:Content>

