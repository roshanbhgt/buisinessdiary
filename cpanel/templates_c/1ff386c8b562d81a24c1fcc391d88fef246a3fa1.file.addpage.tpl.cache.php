<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 23:22:39
         compiled from ".\templates\pages\addpage.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13318524717673a5e99-47477902%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1ff386c8b562d81a24c1fcc391d88fef246a3fa1' => 
    array (
      0 => '.\\templates\\pages\\addpage.tpl',
      1 => 1380389492,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13318524717673a5e99-47477902',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'variables' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471767592216_38557328',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471767592216_38557328')) {function content_52471767592216_38557328($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
<div class="success"><?php echo $_smarty_tpl->tpl_vars['variables']->value['success'];?>
</div>
<?php }elseif(($_smarty_tpl->tpl_vars['variables']->value['addcaterror']!='')){?>
<div class="error"><?php echo $_smarty_tpl->tpl_vars['variables']->value['addpageerror'];?>
</div>
<?php }?>
<form name="addpage" method="post" id="addpage" enctype="multipart/form-data">
	<fieldset>
		<legend>Add parent category</legend>
		<table class="left" width="75%">
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
				<td colspan="2" align="right"><button name="addpage" value="addpage">Submit</button></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><small>All * mark fields are required.</small></td>
			</tr>
		</table>
	</fieldset>
</form><?php }} ?>