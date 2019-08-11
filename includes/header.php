<head>
<link href='//fonts.googleapis.com/css?family=Quattrocento+Sans' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<!--slider-->


<link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>

<div class="btm_border">
<div class="h_bg">
<div class="wrap">
	<div class="header">
		<div>
			<h2><a href="index.php" style="font-size: 35px;text-align: left;color: #5565BF;font-weight: 400;margin-bottom: 20px;">Online Library Management System</a></h2>
		</div>
		<!--
		<div class="social-icons">
			<ul>
			     <li><a class="facebook" href="#" target="_blank"> </a></li>
			     <li><a class="twitter" href="#" target="_blank"></a></li>
			     <li><a class="googleplus" href="#" target="_blank"></a></li>
			     <li><a class="pinterest" href="#" target="_blank"></a></li>
			     <li><a class="dribbble" href="#" target="_blank"></a></li>
			     <li><a class="vimeo" href="#" target="_blank"></a></li>
		   </ul>
		</div>	-->
		<div class="clear"></div>
	</div>
		
	<div class='h_btm'>
		<div class='cssmenu'>
			<ul>
			    <li><a href='index.php'><span>Home</span></a></li>
				<li><a href='books.php'><span><b>Books</b></span></a></li>
			    <li><a href='front/about.php'><span>About</span></a></li>
			    <li><a href='front/contact.php'><span>Contact</span></a></li>
			 	
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href='dashboard.php'><span>Dashboard</span></a></li>
				<li><a href='login.php'><span>User Login</span></a></li>
				<li><a href='signup.php'><span>Signup</span></a></li>
				<li><a href='adminlogin.php'><span>Admin</span></a></li>
				<div class="clear"></div>
			 </ul>
	</div>
	<!--
	<div class="search">
    	<form>
    		<input type="text" value="">
    		<input type="submit" value="">
    	</form>
	</div>-->
	<div class="clear"></div>
	
</div>
</div>
</div>
</div>
</head>





<div class="btm_border">
<div class="h_bg">

<div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
           
<?php if($_SESSION['login'])
{
?> 
            <div class="right-div">
                <a href="logout.php" class="btn btn-danger pull-right">LOG ME OUT</a>
            </div>
            <?php }?>
        </div>
    </div>
    <!-- LOGO HEADER END-->
<?php if($_SESSION['login'])
{
?>    
<section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="dashboard.php" class="menu-top-active">DASHBOARD</a></li>
							
							<li><a href="issue-book.php" class="menu-top-active">RESERVE</a></li>
                          
							<li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Account <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="my-profile.php">My Profile</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="change-password.php">Change Password</a></li>
                                </ul>
                            </li>
                            <li><a href="issued-books.php">Issued Books</a></li>
                          

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <?php } else { ?>
        <section class="menu-section">
        
    </section>

    <?php } ?>