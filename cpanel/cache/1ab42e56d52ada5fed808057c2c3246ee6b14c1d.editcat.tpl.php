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
  'variables' => 
  array (
    'variables' => 0,
    'edit' => 0,
    'category' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52470b27cc48b8_82567978',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52470b27cc48b8_82567978')) {function content_52470b27cc48b8_82567978($_smarty_tpl) {?><form name="updatecat" method="post" id="updatecatform" >
<fieldset>
  	<legend>Edit parent category</legend>
	<input type="hidden" name="id" value="2" />
	<table class="left" width="75%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>Title</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="title" value="Test 1"></td>	
		</tr>
		<tr>
			<td align="left" valign="top"><label>Description</label></td>
			<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description"><br></textarea></td>	
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
					<option value="active"  selected="selected" >Active</option>
					<option value="inactive" >Inactive</option>
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
<?php }} ?>