<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 23:48:44
         compiled from ".\templates\pages\editpage.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1434152471d841811a8-87296637%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6f6cd1b7d2a5c7f43f32b75ed8f958e8380d0ce3' => 
    array (
      0 => '.\\templates\\pages\\editpage.tpl',
      1 => 1380391096,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1434152471d841811a8-87296637',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'variables' => 0,
    'page' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471d8422cfd5_30211893',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471d8422cfd5_30211893')) {function content_52471d8422cfd5_30211893($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
<div class="success"><?php echo $_smarty_tpl->tpl_vars['variables']->value['success'];?>
</div>
<?php }elseif(($_smarty_tpl->tpl_vars['variables']->value['updatepageerror']!='')){?>
<div class="error"><?php echo $_smarty_tpl->tpl_vars['variables']->value['updatepageerror'];?>
</div>
<?php }?>
<form name="updatepage" method="post" id="updatepageform" >
<fieldset>
  	<legend>Edit page</legend>
	<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['page']->value['pageId'];?>
" />
	<table class="left" width="75%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>Title</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="title" value="<?php echo $_smarty_tpl->tpl_vars['page']->value['title'];?>
"></td>	
		</tr>
		<tr>
			<td align="left" valign="top"><label>Description</label></td>
			<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description"><?php echo $_smarty_tpl->tpl_vars['page']->value['description'];?>
</textarea></td>	
		</tr>		
		<tr>
			<td align="left" valign="middle"><label>Status</label><span
				class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="status" class="iselect-small">
					<option value="active" <?php if ($_smarty_tpl->tpl_vars['page']->value['status']=="active"){?> selected="selected" <?php }?>>Active</option>
					<option value="inactive" <?php if ($_smarty_tpl->tpl_vars['page']->value['status']=="inactive"){?> selected="selected" <?php }?>>Inactive</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><button name="updatepage" value="updatepage">Submit</button></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
		</tr>
	</table>
</fieldset>
</form><?php }} ?>