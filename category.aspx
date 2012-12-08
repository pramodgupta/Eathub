<%@ Page Title="" Language="C#" MasterPageFile="~/restaurant.master" AutoEventWireup="true"
    CodeFile="category.aspx.cs" Inherits="category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <!--  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        -->
        <div id="rep">
            <h2>
                Categories</h2>
            <a href="category_add.aspx" class="red">Add New</a>
            <br />
            <asp:Repeater ID="c11" runat="server">
                <HeaderTemplate>
                    <br />
                    <ul id="cat-table">
                        <li>
                            <div class="cat price" style="margin-left: 80px;">
                                Category Name
                            </div>
                            <div class="cat price" style ="width: 45%;">
                                Category Type
                            </div>
                            <div class="clear">
                            </div>
                            <hr />
                        </li>
                </HeaderTemplate>
                <ItemTemplate>
                    <li class="item">
                    <div style="float:left;width:82px">
    				<a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
    					<!--<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1" alt="" class="frame img_nofade" style="opacity: 1;">-->
                        <img class="frame" style="width:60px; height: 60px;" src="<%# DataBinder.Eval(Container.DataItem,  "categoryimg")%>" />
    				</a>
    			</div>
                        <div class="cat">
                            <%# DataBinder.Eval(Container.DataItem,  "categoryname")%>
                        </div>
                        <div class="cat" style ="width: 45%;">
                            <%# DataBinder.Eval(Container.DataItem,  "categorytype")%>
                        </div>
                        <div class="clear">
                        </div>
                    </li>
                    <hr />
                </ItemTemplate>
                <SeparatorTemplate>
                    
                    <div class="seperator">
                    </div>
                </SeparatorTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
