<?php /*%%SmartyHeaderCode:2157652406920dd58a5-10372288%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2e083c2a9bac84a2f1af1e0678769de25cb52e85' => 
    array (
      0 => '.\\templates\\admin\\edituser.tpl',
      1 => 1378664558,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2157652406920dd58a5-10372288',
  'variables' => 
  array (
    'admin' => 0,
    'captcha' => 1,
  ),
  'has_nocache_code' => true,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52406920f11f61_09705055',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52406920f11f61_09705055')) {function content_52406920f11f61_09705055($_smarty_tpl) {?><form name="updateuser" method="post" id="updateuserform" >
<fieldset>
  	<legend>Admin user</legend>
	<input type="hidden" name="id" value="1" />
	<table class="left" width="50%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>First name</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="firstname" value="Roshan"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Last name</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="lastname" value="Bhagat"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Email</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="email" value="roshanbhgt@gmail.com"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Username</label><span class="required">*</span></td>
			<td align="left"><input class="inputbox" type="text" name="username" value="admin"></td>	
		</tr>
		<!-- <tr>
			<td align="left" valign="middle"><label>Password</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="password" name="password" value=""></td>	
		</tr> -->
		<tr>
			<td colspan="2" align="center" valign="middle"><?php echo $_smarty_tpl->tpl_vars['captcha']->value;?>
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