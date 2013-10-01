<?php /*%%SmartyHeaderCode:48052471e5f803513-74256303%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3ec5cc4c9d0e21c5c92b94ed649a5416160d787a' => 
    array (
      0 => '.\\templates\\main.html',
      1 => 1380387406,
      2 => 'file',
    ),
    '10e0737838b4a574ef135d0c601e7b602cfaf37a' => 
    array (
      0 => '.\\templates\\header.tpl',
      1 => 1379740739,
      2 => 'file',
    ),
    '85192c6e9f55456bef8cf932502504a0684ee09b' => 
    array (
      0 => '.\\templates\\menu.tpl',
      1 => 1380388355,
      2 => 'file',
    ),
    '1be7ff7fdee636597edd726ee98dfef4bfd55d1f' => 
    array (
      0 => '.\\templates\\footer.tpl',
      1 => 1378575460,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '48052471e5f803513-74256303',
  'variables' => 
  array (
    'title' => 0,
    'BACKEND' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471e5fb08cc3_22574737',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471e5fb08cc3_22574737')) {function content_52471e5fb08cc3_22574737($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Buisiness Diary - Welcome to the admin</title>
	<link rel="icon" href="http://localhost/buisinessdiary/cpanel//design/favicon.ico" type="image/x-icon"/>
	<link rel="shortcut icon" href="http://localhost/buisinessdiary/cpanel//design/favicon.ico" type="image/x-icon"/>		
	<link rel="stylesheet" type="text/css" href="http://localhost/buisinessdiary/cpanel//design/css/styles.css">	
	<script type="text/javascript" src="http://localhost/buisinessdiary/cpanel//design/js/jquery.min.js"></script>
	<script type="text/javascript" src="http://localhost/buisinessdiary/cpanel//design/js/functions.js"></script>
	<script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
	<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
</head>
<body>
	<table border="0" width="100%">
		<tr class="header">
			<td align="left" valign="top"><table width="100%" border="0" class="header">
  <tr>
    <td width="280" valign="middle" align="center"><a href="http://localhost/buisinessdiary/cpanel/" class="logo">Buisiness Diary</a></td>
    <td valign="top" align="right">
    	<ul class="topmenu">
    		<li>Loged in as admin</li>
    		<li class="separator">|</li>
    		<li>September 28, 2013, 11:52 pm</li>
    		<li class="separator">|</li>
    		<li><a href="http://localhost/buisinessdiary/cpanel//logout.php"><span class="logout">Logout</span></a></li>
    	</ul>
    </td>
  </tr>
</table>
</td>
		</tr>
		<tr>
			<td align="left" valign="top"><table width="100%" border="0">
	<tr>
  		<td colspan="2" align="left" valign="top" class="navbar">
  			<ul id ="navmenu" class="navmenu level0" >
  				<li  class="active"  ><a href="http://localhost/buisinessdiary/cpanel/">Dashbord</a></li>  				
  				<li  >
  					<a href="http://localhost/buisinessdiary/cpanel/managecat.php">Categories</a>
  					<ul>
  						<li><a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=addparent">Add Parent Category</a></li>
  						<li><a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=addsubcat">Add Sub Category</a></li>
  						<li><a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=viewparent">Manage Parent Categories</a></li>
  						<li class="last"><a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=viewsub">Manage Sub Categories</a></li>
  					</ul>
  				</li>  				
  				<li  >
  					<a href="http://localhost/buisinessdiary/cpanel/">Buisiness Listing</a>
  					<ul>
  						<li><a href="http://localhost/buisinessdiary/cpanel/">Add buisiness</a></li>
  						<li class="last"><a href="http://localhost/buisinessdiary/cpanel/">Manage Buisiness</a></li>
  					</ul>
  				</li>  				
  				<li  >
  					<a href="http://localhost/buisinessdiary/cpanel/managegallery.php">Gallery</a>
  					<ul>
  						<li><a href="http://localhost/buisinessdiary/cpanel/managegallery.php?action=add">Add gallery</a></li>
  						<li class="last"><a href="http://localhost/buisinessdiary/cpanel/managegallery.php?action=view">Manage galleries</a></li>
  					</ul>
  				</li>  				
  				<li  >
  					<a href="http://localhost/buisinessdiary/cpanel/">Users</a>
  					<ul>
  						<li><a href="http://localhost/buisinessdiary/cpanel/">Add user</a></li>
  						<li class="last"><a href="http://localhost/buisinessdiary/cpanel/">Manage User</a></li>
  					</ul>
  				</li>  				
  				<li  >
  					<a href="http://localhost/buisinessdiary/cpanel/managepages.php">Pages</a>
  					<ul>
  						<li><a href="http://localhost/buisinessdiary/cpanel/managepages.php?action=addpage">Add page</a></li>
  						<li class="last"><a href="http://localhost/buisinessdiary/cpanel/managepages.php?action=viewall">Manage page</a></li>
  					</ul>
  				</li>  				
  				<li  >
  					<a href="http://localhost/buisinessdiary/cpanel/">Webforms</a>
  					<ul>
  						<li class="last"><a href="http://localhost/buisinessdiary/cpanel/">Manage webforms</a></li>
  					</ul>
  				</li>  				
  				<li  >
  					<a href="http://localhost/buisinessdiary/cpanel/">System</a>
  					<ul>
  						<li><a href="http://localhost/buisinessdiary/cpanel/manageadmin.php?action=edit&id=1">Manage Admin</a></li>
  						<li><a href="http://localhost/buisinessdiary/cpanel/managecountries.php?type=country">Manage Country</a></li>  						
  						<li class="last"><a href="http://localhost/buisinessdiary/cpanel/cachemgmt.php">Manage Cache</a></li>
  					</ul>
  				</li>
  		</ul>
  		</td>
	</tr>
</table>


<script type="text/javascript">
$(function(){
    $('#navmenu').find('> li').hover(function(){
        $(this).find('ul')
        .addClass('over')
        .stop(true, true).slideToggle('fast');
    });
});
</script>



</td>
		</tr>
		<tr>
			<td align="left" valign="top"><div id="main-container"></div></td>
		</tr>
		<tr class="footer">
			<td align="left" valign="bottom"><table width="100%" border="0">
  <tr>
    <td colspan="2" align="center">
    	<hr/>
		<div class="center"><small>&copy;2013 Business Diary. All rights reserved.</small></div>
    </td>
  </tr>
</table>

</td>
		</tr>
	</table>
</body>
</html><?php }} ?>