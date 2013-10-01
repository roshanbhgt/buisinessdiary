<?php /*%%SmartyHeaderCode:30485523dbd84a33174-70264827%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '18b69697a2d020e6cf08a104b09a8e7b1bfbecfb' => 
    array (
      0 => '.\\templates\\gallery\\addgallery.tpl',
      1 => 1379777654,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '30485523dbd84a33174-70264827',
  'variables' => 
  array (
    'variables' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_523dbd84bf83e2_89782410',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_523dbd84bf83e2_89782410')) {function content_523dbd84bf83e2_89782410($_smarty_tpl) {?><form name="adduser" method="post" id="adduserform" >
    <fieldset>
  	<legend>Add gallery</legend>
        <table class="left" width="50%">                
        <tr>
                <td align="left" valign="middle" width="200"><label>Title</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox" type="text"
					name="title" value=""></td>	
        </tr>
        <tr>
            <tr>
				<td align="left" valign="top"><label>Description</label></td>
				<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description"></textarea></td>
			</tr>	
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
             <td colspan="2" align="right"><button name="addgallery" value="addgallery">Submit</button></td>	
        </tr>
        <tr>
             <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
        </tr>
        </table>
    </fieldset>
</form><?php }} ?>