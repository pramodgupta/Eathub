<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true"
    CodeFile="restaurant_single.aspx.cs" Inherits="restaurant_single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        h3
        {
            font-weight: bold;
        }
    </style>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>

<link rel="stylesheet" href="fancybox/source/jquery.fancybox.css?v=2.1.3" type="text/css" media="screen" />
<script type="text/javascript" src="fancybox/source/jquery.fancybox.pack.js?v=2.1.3"></script>

<link rel="stylesheet" href="fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.5"></script>

<link rel="stylesheet" href="fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>


<script type="text/javascript">
    $(".details").fancybox({
        maxWidth: 800,
        maxHeight: 600,
        fitToView: false,
        width: '70%',
        height: '70%',
        autoSize: false,
        closeClick: false,
        openEffect: 'elastic',
        closeEffect: 'elastic'
    });

    $(".email").fancybox({
        maxWidth: 750,
        maxHeight: 600,
        fitToView: false,
        width: '60%',
        height: '60%',
        autoSize: false,
        closeClick: false,
        openEffect: 'elastic',
        closeEffect: 'elastic'
    });

</script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="post_img" style="width: 500px; height: 260px">
        <a href="#" title="Multiple homepages styles with homepage content manager.">
            <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Razzle-Dazzle-Berry-Cheesecake.jpg&amp;h=240&amp;w=490&amp;zc=1"
                alt="" class="frame img_nofade" width="490" height="240">
        </a>
    </div>
    <div class="post_header">
        <div class="post_header_h3">
            <h3 class="cufon">
                <asp:Label ID="name" runat="server" Text="name"></asp:Label>
            </h3>
            <div style="float: left; width: 50%;">
                <asp:Label ID="street" runat="server" Text="street"></asp:Label><br />
                <asp:Label ID="city" runat="server" Text="city"></asp:Label><br />
                <asp:Label ID="zipcode" runat="server" Text="zipcode"></asp:Label><br />
                <label>
                    Phone:
                </label>
                <asp:Label ID="contact" runat="server" Text="contact"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              <!-- <a class="details" data-fancybox-type='iframe' href="http://maps.google.com/?output=embed&amp;f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=London+Eye,+County+Hall,+Westminster+Bridge+Road,+London,+United+Kingdom&amp;hl=lv&amp;ll=51.504155,-0.117749&amp;spn=0.00571,0.016512&amp;sll=56.879635,24.603189&amp;sspn=10.280244,33.815918&amp;vpsrc=6&amp;hq=London+Eye&amp;radius=15000&amp;t=h&amp;z=17"> <img src="images/google-map.png" /></a> -->
                <asp:Label ID="gimg" runat="server" Text="Label"></asp:Label>
            </div>
            <div style="float: right; width: 50%text-align: right;">
                <label>
                    Min Amount:
                </label>
                <strong class="price">$
                    <asp:Label ID="minamount" runat="server" Text="minamount"></asp:Label></strong><br />
                <label>
                    Restaurant Type:
                </label>
                <asp:Label ID="category1" runat="server" Text="type"></asp:Label><br />
                <label>
                    Timings:
                </label>
                <asp:Label ID="timings" runat="server" Text="timings"></asp:Label>
                <br />
                <asp:Button ID="tablebooking" runat="server" Text="Book a Table" 
                    onclick="tablebooking_Click" />
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
    <div class="clear">
    </div>
    <hr />
    <h4>
        Menu Categories</h4>
    <br />
    <asp:Repeater runat="server" ID="category">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div style="width: 100%;" class="res_menus">
                <asp:Image ID="Image1" runat="server" />
                <div style="float: left; width: 82px">
                    <a rel="gallery" href="http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg">
                        <!--<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/timthumb.php?src=http://themes.themegoods.com/pluto_wp/wp-content/uploads/2011/09/Farfalle-With-Salmon.jpg&amp;h=60&amp;w=60&amp;zc=1"
                            alt="" class="frame img_nofade" style="opacity: 1;">-->
                        <img class="frame" style="width:60px;height:60px;" src="<%# DataBinder.Eval(Container.DataItem, "cat_img")%>" />
                    </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                <div style="float: left; width: 300px">
                    <h5 class="cufon">
                        <a href="menu_category.aspx?email=<%# DataBinder.Eval(Container.DataItem, "id")%>&cat=<%# DataBinder.Eval(Container.DataItem, "cat_name")%>">
                            <%# DataBinder.Eval(Container.DataItem, "cat_name")%></a></h5>
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png"
                        style="float: left; margin-right: 2px" alt="">
                    <br class="clear">
                    <div class="menu_description">
                        <div class="meta-left">
                            <label>
                                Type:</label>
                            <%# DataBinder.Eval(Container.DataItem, "cat_type")%>
                        </div>
                    </div>
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
    <asp:Label ID="error" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Repeater ID="commentsec" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="comment <%# DataBinder.Eval(Container.DataItem, "abc")%>">
                <div class="left">
                    <img alt="" src="http://1.gravatar.com/avatar/db6f032dce962144efc9b625779461a1?s=50&amp;d=%3Cpath_to_url%3E&amp;r=G"
                        class="avatar avatar-50 photo" height="50" width="50">
                </div>
                <div class="comment_arrow">
                </div>
                <div class="right">
                    <strong style="float: left; margin-top: 1px">
                        <%# DataBinder.Eval(Container.DataItem, "author")%>
                    </strong>
                    <br class="clear">
                    <p>
                        <%# Eval("comment") %>
                    </p>
                    <p class="comment-reply-link">
                        <a class="comment-reply-link" href="/pluto_wp/?p=1491&amp;replytocom=22#respond"
                            onclick="return addComment.moveForm(&quot;comment-22&quot;, &quot;22&quot;, &quot;respond&quot;, &quot;1491&quot;)">
                            (Reply)</a></p>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <br />
    <br />

    <br />
    <h3 style="margin-top: 20px;">Comment:</h3>
    <span class="error"><asp:Label ID="comment_error" runat="server" Text="error" Visible="False"></asp:Label></span>
    <ul>
     <li>
    <label>Name:</label><asp:TextBox ID="commentname" runat="server"></asp:TextBox></li>
    <li><label>Email: </label><asp:TextBox ID="commentemail" runat="server"></asp:TextBox></li>
     <li style="height: 100px; "><label>Comment:</label><textarea style="width: 295px; height: 100px;right: 20px; position:absolute;" id="commentmsg" 
                runat="server"/> </textarea></li>
    <li>
        <asp:Button ID="comment_bt" runat="server" Text="Comment" 
            onclick="comment_bt_Click" /></li>
       </ul>
</asp:Content>
