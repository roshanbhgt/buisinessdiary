<?php /* Smarty version Smarty-3.1.14, created on 2013-09-23 20:58:43
         compiled from ".\templates\category\addcat.tpl" */ ?>
<?php /*%%SmartyHeaderCode:60752405e2bd87f77-89678093%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e92dab9c02e3c48c7fd4bea07e42b467cfe0767a' => 
    array (
      0 => '.\\templates\\category\\addcat.tpl',
      1 => 1379769438,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '60752405e2bd87f77-89678093',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'variables' => 0,
    'add' => 0,
    'captcha' => 1,
  ),
  'has_nocache_code' => true,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52405e2be3ec72_30546986',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52405e2be3ec72_30546986')) {function content_52405e2be3ec72_30546986($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
<div class="success"><?php echo $_smarty_tpl->tpl_vars['variables']->value['success'];?>
</div>
<?php }elseif(($_smarty_tpl->tpl_vars['variables']->value['addcaterror']!='')){?>
<div class="error"><?php echo $_smarty_tpl->tpl_vars['variables']->value['addcaterror'];?>
</div>
<?php }?> 
<?php if ($_smarty_tpl->tpl_vars['add']->value=="parentcat"){?>
<form name="addparentcat" method="post" id="addparentcatform" enctype="multipart/form-data">
	<fieldset>
		<legend>Add parent category</legend>
		<table class="left" width="50%">
			<tr>
				<td align="left" valign="middle" width="200"><label>Title</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox" type="text"
					name="title" value="<?php echo $_POST['title'];?>
"></td>
			</tr>
			<tr>
				<td align="left" valign="top"><label>Description</label></td>
				<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description"><?php echo $_POST['description'];?>
</textarea></td>
			</tr>
			<tr>
				<td align="left" valign="middle"><label>Banner</label></td>
				<td align="left" valign="middle"><input class="inputbox" type="file"
					name="banner" value="<?php echo $_POST['banner'];?>
"></td>
			</tr>
			<tr>
				<td align="left" valign="middle"><label>Status</label><span
					class="required">*</span></td>
				<td align="left" valign="middle">
					<select name="status" class="iselect-small">
						<option value="active" <?php if ($_POST['status']=="active"){?> select="select" <?php }?>>Active</option>
						<option value="inactive" <?php if ($_POST['status']=="inactive"){?> select="select" <?php }?>>Inactive</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><button name="addparentcat" value="addparentcat">Submit</button></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><small>All * mark fields are required.</small></td>
			</tr>
		</table>
	</fieldset>
</form>
<?php }elseif($_smarty_tpl->tpl_vars['add']->value=="subcat"){?>
<form name="addsubcat" method="post" id="addsubcatform">
	<fieldset>
		<legend>Add subcategory</legend>
		<table class="left" width="50%">
			<tr>
				<td align="left" valign="middle" width="200"><label>First name</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox" type="text"
					name="firstname" value="<?php echo $_POST['firstname'];?>
"></td>
			</tr>
			<tr>
				<td align="left" valign="middle"><label>Last name</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox" type="text"
					name="lastname" value="<?php echo $_POST['lastname'];?>
"></td>
			</tr>
			<tr>
				<td align="left" valign="middle"><label>Email</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox" type="text"
					name="email" value="<?php echo $_POST['email'];?>
"></td>
			</tr>
			<tr>
				<td align="left" valign="middle"><label>Username</label><span
					class="required">*</span></td>
				<td align="left"><input class="inputbox" type="text" name="username"
					value="<?php echo $_POST['username'];?>
"></td>
			</tr>
			<tr>
				<td align="left" valign="middle"><label>Password</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox"
					type="password" name="password" value="<?php echo $_POST['password'];?>
"></td>
			</tr>
			<!-- <tr>
                <td colspan="2" align="center" valign="middle"><?php echo '/*%%SmartyNocache:60752405e2bd87f77-89678093%%*/<?php echo $_smarty_tpl->tpl_vars[\'captcha\']->value;?>
/*/%%SmartyNocache:60752405e2bd87f77-89678093%%*/';?>
</td>
        </tr> -->
			<tr>
				<td colspan="2" align="right"><button name="adduser" value="adduser">Submit</button></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><small>All * mark fields are required.</small></td>
			</tr>
		</table>
	</fieldset>
</form> 
<?php }?>
<?php }} ?>