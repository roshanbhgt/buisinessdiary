<?php /* Smarty version Smarty-3.1.14, created on 2013-09-19 20:26:17
         compiled from ".\templates\two-coloumn-left.html" */ ?>
<?php /*%%SmartyHeaderCode:65239dd6c615728-93903215%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fa857a1bf1e393e8ecd889da59a526a17c3c0bfb' => 
    array (
      0 => '.\\templates\\two-coloumn-left.html',
      1 => 1379615172,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '65239dd6c615728-93903215',
  'function' => 
  array (
  ),
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_5239dd6c6d4dd1_92331850',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5239dd6c6d4dd1_92331850')) {function content_5239dd6c6d4dd1_92331850($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Two Coloumn Left</title>
<link href="http://localhost/buisinessdiary/design/css/styles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://jquery-twitter-api.googlecode.com/files/jquery-twitter-plugin.js"></script>
<script type="text/javascript">
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
        <div class="top-links">Top Links</div>    
        <div class="slogan">Slogan</div>
        <div class="searchbox">Search</div>
    </div>
    <div class="nav">
    	<ul>
			<li id="menu1" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Menu1</a>
            </li>
            <li id="menu2" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Menu2</a>
                <ul style="display:none">
                	<li><a href="#"><span>Submenu 1</span></a></li>
                    <li><a href="#"><span>Submenu 2</span></a></li>
                    <li><a href="#"><span>Submenu 3</span></a></li>
                </ul>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Menu3</a>
            </li>
		</ul>
    </div>
    <div class="main-content">    
    <div class="inner-left">
        <div class="slider">Slider</div>
        <div>Details</div>    	
    </div>
    <div cl class="inner-right">Promotions</div>
    </div>
    <div class="footer">
        <div class="twt-feed">Twitter feeds</div>
        <div class="follow-btn">Follow Buttons</div>
        <div class="copyright">Copyrights</div>
    </div>
  </div>  
</body>
</html>
<?php }} ?>