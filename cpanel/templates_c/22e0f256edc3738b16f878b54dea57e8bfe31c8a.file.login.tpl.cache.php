<?php /* Smarty version Smarty-3.1.14, created on 2013-09-15 21:21:36
         compiled from ".\templates\admin\login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:204615235d788ac4e93-00213195%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
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
  'nocache_hash' => '204615235d788ac4e93-00213195',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'variables' => 0,
    'captcha' => 1,
  ),
  'has_nocache_code' => true,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_5235d788cebb98_94568107',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5235d788cebb98_94568107')) {function content_5235d788cebb98_94568107($_smarty_tpl) {?>
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
		<?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
			<div class="success"><?php echo $_smarty_tpl->tpl_vars['variables']->value['success'];?>
</div>
		<?php }elseif(($_smarty_tpl->tpl_vars['variables']->value['loginError']!='')){?>
			<div class="error"><?php echo $_smarty_tpl->tpl_vars['variables']->value['loginError'];?>
</div>
		<?php }else{ ?>
			&nbsp;
		<?php }?>
	</td>
</tr>
<tr>
	<td><label>Username</label><span class="required">*</span> <input type="text" name="username" value="<?php echo $_POST['username'];?>
"></td>
	<td><label>Password</label><span class="required">*</span> <input type="password" name="password" value=""></td>
</tr>
<tr>
	<td colspan="2"><?php echo '/*%%SmartyNocache:204615235d788ac4e93-00213195%%*/<?php echo $_smarty_tpl->tpl_vars[\'captcha\']->value;?>
/*/%%SmartyNocache:204615235d788ac4e93-00213195%%*/';?>
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