<?php /* Smarty version Smarty-3.1.14, created on 2013-09-09 15:25:10
         compiled from ".\templates\admin\edituser.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3340522d9afe595d99-48900704%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2e083c2a9bac84a2f1af1e0678769de25cb52e85' => 
    array (
      0 => '.\\templates\\admin\\edituser.tpl',
      1 => 1378664556,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3340522d9afe595d99-48900704',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'admin' => 0,
    'captcha' => 1,
  ),
  'has_nocache_code' => true,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_522d9afe6464d6_69862478',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_522d9afe6464d6_69862478')) {function content_522d9afe6464d6_69862478($_smarty_tpl) {?><form name="updateuser" method="post" id="updateuserform" >
<fieldset>
  	<legend>Admin user</legend>
	<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['admin']->value['adminId'];?>
" />
	<table class="left" width="50%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>First name</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="firstname" value="<?php echo $_smarty_tpl->tpl_vars['admin']->value['firstname'];?>
"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Last name</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="lastname" value="<?php echo $_smarty_tpl->tpl_vars['admin']->value['lastname'];?>
"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Email</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="email" value="<?php echo $_smarty_tpl->tpl_vars['admin']->value['email'];?>
"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Username</label><span class="required">*</span></td>
			<td align="left"><input class="inputbox" type="text" name="username" value="<?php echo $_smarty_tpl->tpl_vars['admin']->value['username'];?>
"></td>	
		</tr>
		<!-- <tr>
			<td align="left" valign="middle"><label>Password</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="password" name="password" value=""></td>	
		</tr> -->
		<tr>
			<td colspan="2" align="center" valign="middle"><?php echo '/*%%SmartyNocache:3340522d9afe595d99-48900704%%*/<?php echo $_smarty_tpl->tpl_vars[\'captcha\']->value;?>
/*/%%SmartyNocache:3340522d9afe595d99-48900704%%*/';?>
</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><button name="updateuser" value="updateuser">Submit</button></td>	
		</tr>
		<tr>
			<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
		</tr>
	</table>
</fieldset>
</form><?php }} ?>