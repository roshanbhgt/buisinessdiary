<?php /*%%SmartyHeaderCode:65239dd6c615728-93903215%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fa857a1bf1e393e8ecd889da59a526a17c3c0bfb' => 
    array (
      0 => '.\\templates\\two-coloumn-left.html',
      1 => 1380219367,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '65239dd6c615728-93903215',
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_5246ead78b5d82_61057436',
  'has_nocache_code' => false,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5246ead78b5d82_61057436')) {function content_5246ead78b5d82_61057436($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Buisiness Diary - Search, find anything in the heart of the city</title>
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
<link href="design/css/styles.css" rel="stylesheet" type="text/css" />
<link href="design/css/slider.css" rel="stylesheet" type="text/css" />  
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://localhost/buisinessdiary/design/js/jquery.slides.min.js"></script>
<script type="text/javascript">
	$(function() {
      $('#slides').slidesjs({
        width: 940,
        height: 350,
        play: {
          active: true,
          auto: true,
          interval: 4000,
          swap: true
        }
      });
    });
	
	function collapse(id,classname){	
		$(id).removeClass(classname);
			$('.wrapper .nav ul li ul').css('display', 'none');
	}
	function expand(id,classname){
		$(id).addClass(classname);
		$('.wrapper .nav ul li.over ul').css('display', 'block');
	}
</script>
</head>
<body>
  <div class="wrapper">	
    <div class="header">
        <div class="logo">
			<img alt="Buisiness Diary" src="http://localhost/buisinessdiary/design/images/logo.png" height="85" width="250"/>
		</div>
        <div class="top-links">        
        	<ul>
        		<li>Welcome Guest</li><li>|</li>
        		<li>Login</li><li>|</li>
        		<li>Register</li><li>|</li>
        		<li>My Account</li><li>|</li>
        		<li>My Places</li>
        	</ul>
        </div>
        <div class="lang-whether"></div>
        <div class="searchbox">
        	<form method="post" action="">
        		<input class="searchinput" type="text" name="q" value="" />
                <button class="searchbtn" type="submit" name="submit">Go</button>
            </form>
        </div>
    </div>
    <div class="nav">
    	<ul>
			<li id="menu1" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Home</a>
            </li>
            <li id="menu1" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">About Us</a>
            </li>
            <li id="menu2" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Categories</a>
                <ul style="display:none">
                	<li><a href="#"><span>Category 1</span></a></li>
                    <li><a href="#"><span>Category 2</span></a></li>
                    <li><a href="#"><span>Category 3</span></a></li>
                    <li><a href="#"><span>Category 4</span></a></li>
                    <li><a href="#"><span>Category 5</span></a></li>
                    <li><a href="#"><span>Category 6</span></a></li>
                </ul>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Services</a>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Suggest buisiness</a>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Faq</a>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Feedback</a>
            </li>
		</ul>	
`	</div>
    <div class="main-content">        
    <div class="inner-left">
        <div class="slider">			
			<div id="slides">
			  <img src="design/images/example-slide-1.jpg" alt="Photo by: Missy S Link: http://www.flickr.com/photos/listenmissy/5087404401/">
			  <img src="design/images/example-slide-2.jpg" alt="Photo by: Daniel Parks Link: http://www.flickr.com/photos/parksdh/5227623068/">
			  <img src="design/images/example-slide-3.jpg" alt="Photo by: Mike Ranweiler Link: http://www.flickr.com/photos/27874907@N04/4833059991/">
			  <img src="design/images/example-slide-4.jpg" alt="Photo by: Stuart SeegerLink: http://www.flickr.com/photos/stuseeger/97577796/">
			</div>  
		</div>
		<h2>Business diary india - Search find anything</h2>
		<p>
			Lorem Ipsum is simply dummy text of the printing and typesetting industry.
		 	<br/>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a 
		 	galley of type and scrambled it to make a type specimen book. 
		 	<br/>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
		 	<br/>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
        <div class="home-category">
        	<h4>Buisiness Categories</h4>
        	<ul>
        		<li>Test 1</li>
        		<li>Test 2</li>
        		<li>Test 3</li>
        		<li>Test 4</li>
        	</ul>
        </div>    	
    </div>
    <div cl class="inner-right">Promotions</div>
    </div>
    <div class="footer">
        <div class="twt-feed">Twitter feeds</div>
        <div class="follow-btn">Follow Buttons</div>        
    </div>
  </div>
  <div class="copyright">Copyright &copy; 2013 Buisiness Diary. All rights reserved.</div>  
</body>
</html>
<?php }} ?>