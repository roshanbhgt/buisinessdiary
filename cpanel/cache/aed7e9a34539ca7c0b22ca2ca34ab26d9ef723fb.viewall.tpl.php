<?php /*%%SmartyHeaderCode:2729252470e07e6eba5-29096210%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'aed7e9a34539ca7c0b22ca2ca34ab26d9ef723fb' => 
    array (
      0 => '.\\templates\\admin\\viewall.tpl',
      1 => 1378702982,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2729252470e07e6eba5-29096210',
  'variables' => 
  array (
    'BACKEND' => 0,
    'admins' => 0,
    'admin' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52470e0818de32_28770294',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52470e0818de32_28770294')) {function content_52470e0818de32_28770294($_smarty_tpl) {?><form method="post" id="admin_grid_massaction-form" action="http://localhost/buisinessdiary/cpanel/manageadmin.php">
<div style="height:25px;">
	<div align="left" style="width:200px;float:left;padding:4px 0px;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>		
	<div align="right" style="width:280px;float:right;padding:2px 0px;">		
            <label>Actions</label>
            <select class="select" id="admin_grid_massaction-select">
                <option value=""></option>          
                <option selected="selected" value="refresh">Refresh</option>
            </select>
            <button type="submit" title="Submit" name="cache" value="clean" >Submit</button>        
	</div>
</div>
<table width="100%" align="left" class="grid">	
	<tr>
		<td class="center"></td>
		<td>Name</td>
		<td>Email</td>
		<td>Type</td>		
		<td>Status</td>
		<td></td>
	</tr>
		
	<tr>
		<td width="30" class="center"><input type="checkbox" name="admin" value="1"></td>
		<td width="150">Roshan Bhagat</td>
		<td>roshanbhgt@gmail.com</td>
		<td>administrator</td>
		<td width="100">active</td>
		<td width="100">
			<a href="http://localhost/buisinessdiary/cpanel/manageadmin.php?action=edit&id=1"><img src="http://localhost/buisinessdiary/cpanel/design/images/edit.png" alt="E" title="Edit"></a>
			<a href="http://localhost/buisinessdiary/cpanel/manageadmin.php?action=delete&id=1"><img src="http://localhost/buisinessdiary/cpanel/design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	</table>
</form><?php }} ?>