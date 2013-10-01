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
  'variables' => 
  array (
    'variables' => 0,
    'page' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471d842540d3_99502333',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471d842540d3_99502333')) {function content_52471d842540d3_99502333($_smarty_tpl) {?><form name="updatepage" method="post" id="updatepageform" >
<fieldset>
  	<legend>Edit page</legend>
	<input type="hidden" name="id" value="1" />
	<table class="left" width="75%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>Title</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="title" value="Test"></td>	
		</tr>
		<tr>
			<td align="left" valign="top"><label>Description</label></td>
			<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and <br>
typesetting industry. Lorem Ipsum has been the industry's standard dummyxt ever <br>since the 1500s, when an unknown printer took a galley of <br>type and scrambled it to make a type specimen book. It has survived not <br>only five centuries, but also the leap into electronic typesetting, <br>remaining essentially unchanged. It was popularised in the 1960s with <br>the release of Letraset sheets containing Lorem Ipsum passages, and more<br>recently with desktop publishing software like Aldus PageMaker <br>including versions of <font color="#CCFFCC">Lorem Ipsum</font>.</textarea></td>	
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
			<td colspan="2" align="right"><button name="updatepage" value="updatepage">Submit</button></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
		</tr>
	</table>
</fieldset>
</form><?php }} ?>