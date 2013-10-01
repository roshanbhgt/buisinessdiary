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
  'variables' => 
  array (
    'variables' => 0,
    'add' => 0,
    'captcha' => 1,
  ),
  'has_nocache_code' => true,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52405e2be3ec78_26333263',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52405e2be3ec78_26333263')) {function content_52405e2be3ec78_26333263($_smarty_tpl) {?> 
<form name="addparentcat" method="post" id="addparentcatform" enctype="multipart/form-data">
	<fieldset>
		<legend>Add parent category</legend>
		<table class="left" width="50%">
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
				<td align="left" valign="middle"><label>Banner</label></td>
				<td align="left" valign="middle"><input class="inputbox" type="file"
					name="banner" value=""></td>
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
				<td colspan="2" align="right"><button name="addparentcat" value="addparentcat">Submit</button></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><small>All * mark fields are required.</small></td>
			</tr>
		</table>
	</fieldset>
</form>
<?php }} ?>