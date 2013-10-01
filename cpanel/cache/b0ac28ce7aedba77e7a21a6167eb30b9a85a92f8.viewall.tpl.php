<?php /*%%SmartyHeaderCode:14248523e9c216b1ae1-99968264%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b0ac28ce7aedba77e7a21a6167eb30b9a85a92f8' => 
    array (
      0 => '.\\templates\\gallery\\viewall.tpl',
      1 => 1379778466,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14248523e9c216b1ae1-99968264',
  'variables' => 
  array (
    'BACKEND' => 0,
    'gallery' => 0,
    'gal' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_523e9c2183c3c0_70527756',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_523e9c2183c3c0_70527756')) {function content_523e9c2183c3c0_70527756($_smarty_tpl) {?><form method="post" id="admin_grid_massaction-form" action="http://localhost/buisinessdiary/cpanel/managegallery.php">
<div style="height:25px;">
	<div align="left" style="width:200px;float:left;padding:4px 0px;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>		
	<div align="right" style="width:239px;float:right;padding:2px 0px;">		
            <label>Actions</label>
            <select class="iselect-small" id="admin_grid_massaction-select">
                <option value=""></option>          
                <option selected="selected" value="refresh">Refresh</option>
            </select>
            <button type="submit" title="Submit" name="cache" value="clean" >Submit</button>        
	</div>
</div>
<table width="100%" align="left" class="grid">	
	<tr>
		<td class="center"></td>
		<td>Title</td>
		<td>Description</td>				
		<td>Created Date</td>
		<td>Status</td>
		<td></td>
	</tr>
		
	<tr>
		<td width="30" class="center"><input type="checkbox" name="admin" value="1"></td>
		<td width="150">Nagpur Gallery</td>
		<td>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of...</td>
		<td>2013-09-21 21:09:59</td>
		<td width="100">Active</td>
		<td width="100">
			<a href="http://localhost/buisinessdiary/cpanel/managegallery.php?action=edit&id=1"><img src="http://localhost/buisinessdiary/cpanel/design/images/edit.png" alt="E" title="Edit"></a>
			<a href="http://localhost/buisinessdiary/cpanel/managegallery.php?action=delete&id=1"><img src="http://localhost/buisinessdiary/cpanel/design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	</table>
</form><?php }} ?>