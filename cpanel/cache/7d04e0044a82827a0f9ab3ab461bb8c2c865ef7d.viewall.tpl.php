<?php /*%%SmartyHeaderCode:1684052471e4423c8b3-00675005%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7d04e0044a82827a0f9ab3ab461bb8c2c865ef7d' => 
    array (
      0 => '.\\templates\\pages\\viewall.tpl',
      1 => 1380392510,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1684052471e4423c8b3-00675005',
  'variables' => 
  array (
    'BACKEND' => 0,
    'pages' => 0,
    'page' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471e443fdc98_50678787',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471e443fdc98_50678787')) {function content_52471e443fdc98_50678787($_smarty_tpl) {?><form method="post" id="admin_grid_massaction-form" action="http://localhost/buisinessdiary/cpanel/manageadmin.php">
<div style="height:25px;">
	<div align="left" style="width:200px;float:left;padding:4px 0px;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>		
	<div align="right" style="width:240px;float:right;padding:2px 0px;">		
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
		<td>Created At</td>		
		<td>Updated At</td>
		<td>Status</td>
		<td></td>
	</tr>
	  	<tr><td align="left" valign="middle" colspan="7">No records to display.</td></tr>	
	</table>
</form>
<?php }} ?>