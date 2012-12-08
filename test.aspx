<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Eat Hub</title>
	
	
	
	
	<link href='http://fonts.googleapis.com/css?family=Gloria+Hallelujah' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Rosario' rel='stylesheet' type='text/css'>
	
	<link rel="shortcut icon" href="img/favicon.ico">
	<link href="css/styles.css" type="text/css" media="all" rel="stylesheet" />
	<link href="css/skitter.styles.css" type="text/css" media="all" rel="stylesheet" />
	<link href="css/highlight.black.css" type="text/css" media="all" rel="stylesheet" />
	<link href="css/sexy-bookmarks-style.css" type="text/css" media="all" rel="stylesheet" />
	<link href="style.css" type="text/css" media="all" rel="stylesheet" />
	<script src="js/jquery-1.6.3.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.animate-colors-min.js"></script>
	
	<script src="js/jquery.skitter.min.js"></script>
	<script src="js/highlight.js"></script>
	<script src="js/sexy-bookmarks-public.js"></script>
	
	<script>
	    $(document).ready(function () {

	        var options = {};

	        if (document.location.search) {
	            var array = document.location.search.split('=');
	            var param = array[0].replace('?', '');
	            var value = array[1];

	            if (param == 'animation') {
	                options.animation = value;
	            }
	            else if (param == 'type_navigation') {
	                if (value == 'dots_preview') {
	                    $('.border_box').css({ 'marginBottom': '40px' });
	                    options['dots'] = true;
	                    options['preview'] = true;
	                }
	                else {
	                    options[value] = true;
	                    if (value == 'dots') $('.border_box').css({ 'marginBottom': '40px' });
	                }
	            }
	        }

	        $('.box_skitter_large').skitter(options);

	        // Highlight
	        $('pre.code').highlight({ source: 1, zebra: 1, indent: 'space', list: 'ol' });

	    });
	</script>

  
</head>
<body>
<form id="form1" runat="server">
    <div id="page">
	<div id="header">
     <div id="logo">
            <img src="images/logo.png"
        </div>
            
 <div class="search">
 <asp:TextBox ID="search" runat="server">Location, Cusine , Restaurant Name</asp:TextBox>
            <asp:Button ID="search_bt" runat="server" />

        </div>
        
     <div id="top-menu">
        
        <ul id="menu">
            <li><a href="home.aspx">Home</a></li>
            <li><a href="">About </a></li>
            <li><a href="">Menu</a></li>
            <li><a href="">Restaurant Finder</a></li>
            <li><a href="">Contact Us</a></li>

        </ul>
         <div class="clear"></div>
      </div>
   <div class="clear"></div>
            

    </div>
	</div>
	
	<div id="content">
		<div class="border_box">
			<div class="box_skitter box_skitter_large">
				<ul>
					<li><a href="#cube"><img src="img/001.jpg" class="cube" /></a><div class="label_text"><p>cube</p></div></li>
					<li><a href="#cubeRandom"><img src="img/002.jpg" class="cubeRandom" /></a><div class="label_text"><p>cubeRandom</p></div></li>
					<li><a href="#block"><img src="img/003.jpg" class="block" /></a><div class="label_text"><p>block</p></div></li>
					<li><a href="#cubeStop"><img src="img/004.jpg" class="cubeStop" /></a><div class="label_text"><p>cubeStop</p></div></li>
					<li><a href="#cubeHide"><img src="img/005.jpg" class="cubeHide" /></a><div class="label_text"><p>cubeHide</p></div></li>
					<li><a href="#cubeSize"><img src="img/006.jpg" class="cubeSize" /></a><div class="label_text"><p>cubeSize</p></div></li>
					<li><a href="#horizontal"><img src="img/007.jpg" class="horizontal" /></a><div class="label_text"><p>horizontal</p></div></li>
					<li><a href="#showBars"><img src="img/008.jpg" class="showBars" /></a><div class="label_text"><p>showBars</p></div></li>
					
				</ul>
			</div>
		</div>
		
		
		
		<div style="clear:both"></div>
		
		
		
	</div>
	
    <div id="main_content">
            <div id="home-buttons">
                <div class="login-button">
                <ul class="home-button">
                <li>
                <a href="restaurant_registration.aspx"><img src="images/rest.png" />
                 Restaurant Signup </a>
                </li>
                <li><a href="user_registration.aspx"><img src="images/customer.png" />User Signup</a></li>
                <li><a href="login.aspx"><img src="images/login.png" /> Login </a></li>
                <li><img src="images/search.png" />Search </a></li>
                </ul>
                <div class="clear"></div>
              </div>
            </div>
            
    </div>
	<div id="footer">
    footer
    </div>
	

</form>
</body>
</html>
