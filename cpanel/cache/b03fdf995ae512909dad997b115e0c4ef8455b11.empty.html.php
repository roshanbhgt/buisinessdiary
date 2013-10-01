<?php /*%%SmartyHeaderCode:238952471e7fec1507-70116226%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b03fdf995ae512909dad997b115e0c4ef8455b11' => 
    array (
      0 => '.\\templates\\empty.html',
      1 => 1377971030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '238952471e7fec1507-70116226',
  'variables' => 
  array (
    'title' => 0,
    'contents' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471e8001b531_93956673',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471e8001b531_93956673')) {function content_52471e8001b531_93956673($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Login to admin</title>
		<link rel="icon" href="http://localhost/industrialdiary/cpanel/design/favicon.ico" type="image/x-icon"/>
		<link rel="shortcut icon" href="http://localhost/industrialdiary/cpanel/design/favicon.ico" type="image/x-icon"/>		
		<link rel="stylesheet" type="text/css" href="http://localhost/industrialdiary/cpanel/design/css/styles.css">		
		<script type="text/javascript" src="http://localhost/industrialdiary/cpanel/design/js/myfile.js" ></script>
	</head>
<body>
	<script type="text/javascript">
	 var RecaptchaOptions = {
	    theme : 'clean',
	 };
</script>
 

<form name="login" method="post" id="loginform" >
<table class="center">
<tr>
	<td colspan="2"><h2>Login to admin panel</h2></td>
</tr>
<tr>
	<td colspan="2">
					&nbsp;
			</td>
</tr>
<tr>
	<td><label>Username</label><span class="required">*</span> <input type="text" name="username" value=""></td>
	<td><label>Password</label><span class="required">*</span> <input type="password" name="password" value=""></td>
</tr>
<tr>
	<td colspan="2"><script type="text/javascript" src="http://www.google.com/recaptcha/api/challenge?k=6LdTMuYSAAAAANfuXQDkdpNRHVqa11dTMPrQQdxt"></script>

	<noscript>
  		<iframe src="http://www.google.com/recaptcha/api/noscript?k=6LdTMuYSAAAAANfuXQDkdpNRHVqa11dTMPrQQdxt" height="300" width="500" frameborder="0"></iframe><br/>
  		<textarea name="recaptcha_challenge_field" rows="3" cols="40"></textarea>
  		<input type="hidden" name="recaptcha_response_field" value="manual_challenge"/>
	</noscript></td>
</tr>
<tr>
	<td colspan="2" align="right"><a href="forgetpassword.php">Forget password?</a> | <button name="login" value="login">Login</button></td>	
</tr>
<tr>
	<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
</tr>
</table>
</form>
	<hr/>
	<div class="center"><small>&copy;2013 Business Diary. All rights reserved.</small></div>
</body>
</html><?php }} ?>