<?php /*%%SmartyHeaderCode:2356452471e7fcc5796-24243468%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '22e0f256edc3738b16f878b54dea57e8bfe31c8a' => 
    array (
      0 => '.\\templates\\admin\\login.tpl',
      1 => 1378028940,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2356452471e7fcc5796-24243468',
  'variables' => 
  array (
    'variables' => 0,
    'captcha' => 1,
  ),
  'has_nocache_code' => true,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471e7fe8a9f6_84111512',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471e7fe8a9f6_84111512')) {function content_52471e7fe8a9f6_84111512($_smarty_tpl) {?><script type="text/javascript">
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
	<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['captcha']->value;?>
</td>
</tr>
<tr>
	<td colspan="2" align="right"><a href="forgetpassword.php">Forget password?</a> | <button name="login" value="login">Login</button></td>	
</tr>
<tr>
	<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
</tr>
</table>
</form><?php }} ?>