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
  'variables' => 
  array (
    'variables' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_524717675c8d13_41971723',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524717675c8d13_41971723')) {function content_524717675c8d13_41971723($_smarty_tpl) {?><form name="addpage" method="post" id="addpage" enctype="multipart/form-data">
	<fieldset>
		<legend>Add parent category</legend>
		<table class="left" width="75%">
			<tr>
				<td align="left" valign="middle" width="200"><label>Title</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox" type="text"
					name="title" value=""></td>
			</tr>
			<tr>
				<td align="left" valign="top"><label>Description</label></td>
				<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description"></textarea></td>
			</tr>			
			<tr>
				<td align="left" valign="middle"><label>Status</label><span
					class="required">*</span></td>
				<td align="left" valign="middle">
					<select name="status" class="iselect-small">
						<option value="active" >Active</option>
						<option value="inactive" >Inactive</option>
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