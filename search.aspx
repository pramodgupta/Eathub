
<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="searchbox">
    
          <h2> <asp:Label ID="dis" runat="server" Text="Label"></asp:Label></h2>
           <br />
    
           
    
           <asp:Repeater ID="searchrepeat" runat="server" 
               onitemcommand="searchrepeat_ItemCommand">
            <HeaderTemplate><br /><br />
            
            </HeaderTemplate>
            
            <ItemTemplate>

            <div style="width:100%; height: 70px;">
    			
                <asp:Image ID="Image1" runat="server" />	
    			<div style="float:left;width:82px">
    				<a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
    					<!--<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1" alt="" class="frame img_nofade" style="opacity: 1;">-->
                        <img class="frame" style="width: 60px; height: 60px;" src="<%# DataBinder.Eval(Container.DataItem, "logopath")%>" />
    				</a>
    			</div>
    					
    		<div style="float:left;width:300px">
    			<h5 class="cufon"><a href="restaurant_single.aspx?email=<%# DataBinder.Eval(Container.DataItem, "email")%>"><%# DataBinder.Eval(Container.DataItem, "restaurant_name")%></a></h5>
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    			    			
    			<br class="clear">
    			<div class="menu_description">
                <div class="meta-left">
	    		<%# DataBinder.Eval(Container.DataItem, "street")%>	,  <%# DataBinder.Eval(Container.DataItem, "city")%><br />
               <label>Contact:</label> <%# DataBinder.Eval(Container.DataItem, "contact_no")%>
               </div>
               <div class="meta-right">
              Category:   <%# DataBinder.Eval(Container.DataItem, "restaurant_category")%>	<br />
               Delivery Timings:    <%# DataBinder.Eval(Container.DataItem, "deliverytimings")%>	
               
               </div>
                    
        </div>           
            		</div>
    		<div style="float:right;width:50px">
    			<strong class="price">$ <%# DataBinder.Eval(Container.DataItem, "minamount")%></strong>
    		</div>
 </div>
 <br class="clear">
 <br>
 <hr>

           
                
             
            </ItemTemplate>

            <SeparatorTemplate>
                  <br />
                 <div class="seperator"></div>
            </SeparatorTemplate>

            <FooterTemplate>
           
            </FooterTemplate>

        </asp:Repeater>
      
    
    </div>
</asp:Content>
