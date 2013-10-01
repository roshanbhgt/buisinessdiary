<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 22:30:23
         compiled from ".\templates\category\editcat.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1041052470b27ae7f47-14629629%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1ab42e56d52ada5fed808057c2c3246ee6b14c1d' => 
    array (
      0 => '.\\templates\\category\\editcat.tpl',
      1 => 1380380426,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1041052470b27ae7f47-14629629',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'variables' => 0,
    'edit' => 0,
    'category' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52470b27c99926_11479498',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52470b27c99926_11479498')) {function content_52470b27c99926_11479498($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
<div class="success"><?php echo $_smarty_tpl->tpl_vars['variables']->value['success'];?>
</div>
<?php }elseif(($_smarty_tpl->tpl_vars['variables']->value['updatecaterror']!='')){?>
<div class="error"><?php echo $_smarty_tpl->tpl_vars['variables']->value['updatecaterror'];?>
</div>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['edit']->value=="editparentcat"){?>
<form name="updatecat" method="post" id="updatecatform" >
<fieldset>
  	<legend>Edit parent category</legend>
	<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['category']->value['cat_id'];?>
" />
	<table class="left" width="75%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>Title</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="title" value="<?php echo $_smarty_tpl->tpl_vars['category']->value['title'];?>
"></td>	
		</tr>
		<tr>
			<td align="left" valign="top"><label>Description</label></td>
			<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description"><?php echo $_smarty_tpl->tpl_vars['category']->value['description'];?>
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
					<option value="active" <?php if ($_smarty_tpl->tpl_vars['category']->value['status']=="active"){?> selected="selected" <?php }?>>Active</option>
					<option value="inactive" <?php if ($_smarty_tpl->tpl_vars['category']->value['status']=="inactive"){?> selected="selected" <?php }?>>Inactive</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><button name="updateparentcat" value="updateparentcat">Submit</button></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
		</tr>
	</table>
</fieldset>
</form>
<?php }elseif($_smarty_tpl->tpl_vars['edit']->value=="editsubcat"){?>
<form name="updatecat" method="post" id="updatecatform" >
<fieldset>
  	<legend>Edit subcategory</legend>
	<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['category']->value['cat_id'];?>
" />
	<table class="left" width="75%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>Title</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="title" value="<?php echo $_smarty_tpl->tpl_vars['category']->value['title'];?>
"></td>	
		</tr>
		<tr>
			<td align="left" valign="top"><label>Description</label></td>
			<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description"><?php echo $_smarty_tpl->tpl_vars['category']->value['description'];?>
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
					<option value="active" <?php if ($_smarty_tpl->tpl_vars['category']->value['status']=="active"){?> select="select" <?php }?>>Active</option>
					<option value="inactive" <?php if ($_smarty_tpl->tpl_vars['category']->value['status']=="inactive"){?> select="select" <?php }?>>Inactive</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><button name="updatesubcat" value="updatesubcat">Submit</button></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
		</tr>
	</table>
</fieldset>
</form>
<?php }?><?php }} ?>