<?php /* Smarty version Smarty-3.1.14, created on 2013-09-09 11:37:41
         compiled from ".\templates\admin\vewall.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8783522d65ad5d14a6-65383368%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f6ccc3dc21a4172d94dd2e05f579638e0e8d3b77' => 
    array (
      0 => '.\\templates\\admin\\vewall.tpl',
      1 => 1378702980,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8783522d65ad5d14a6-65383368',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
    'admins' => 0,
    'admin' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_522d65ad6d8b64_53009878',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_522d65ad6d8b64_53009878')) {function content_522d65ad6d8b64_53009878($_smarty_tpl) {?><form method="post" id="admin_grid_massaction-form" action="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
manageadmin.php">
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
	<?php  $_smarty_tpl->tpl_vars['admin'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['admin']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['admins']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['admin']->key => $_smarty_tpl->tpl_vars['admin']->value){
$_smarty_tpl->tpl_vars['admin']->_loop = true;
?>	
	<tr>
		<td width="30" class="center"><input type="checkbox" name="admin" value="<?php echo $_smarty_tpl->tpl_vars['admin']->value['adminId'];?>
"></td>
		<td width="150"><?php echo $_smarty_tpl->tpl_vars['admin']->value['firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['admin']->value['lastname'];?>
</td>
		<td><?php echo $_smarty_tpl->tpl_vars['admin']->value['email'];?>
</td>
		<td><?php echo $_smarty_tpl->tpl_vars['admin']->value['usertype'];?>
</td>
		<td width="100"><?php echo $_smarty_tpl->tpl_vars['admin']->value['status'];?>
</td>
		<td width="100">
			<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
manageadmin.php?action=edit&id=<?php echo $_smarty_tpl->tpl_vars['admin']->value['adminId'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/edit.png" alt="E" title="Edit"></a>
			<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
manageadmin.php?action=delete&id=<?php echo $_smarty_tpl->tpl_vars['admin']->value['adminId'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	<?php }
if (!$_smarty_tpl->tpl_vars['admin']->_loop) {
?>
  	<tr colspan="5"><td align="left" valign="middle">No records to display.</td></tr>	
	<?php } ?>
</table>
</form><?php }} ?>