<?php /* Smarty version Smarty-3.1.14, created on 2013-09-22 12:58:33
         compiled from ".\templates\gallery\viewall.tpl" */ ?>
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
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
    'gallery' => 0,
    'gal' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_523e9c21811436_78055219',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_523e9c21811436_78055219')) {function content_523e9c21811436_78055219($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_truncate')) include 'C:\\xampp\\htdocs\\buisinessdiary\\libs\\Smarty\\plugins\\modifier.truncate.php';
if (!is_callable('smarty_modifier_capitalize')) include 'C:\\xampp\\htdocs\\buisinessdiary\\libs\\Smarty\\plugins\\modifier.capitalize.php';
?><form method="post" id="admin_grid_massaction-form" action="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managegallery.php">
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
	<?php  $_smarty_tpl->tpl_vars['gal'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['gal']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['gallery']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['gal']->key => $_smarty_tpl->tpl_vars['gal']->value){
$_smarty_tpl->tpl_vars['gal']->_loop = true;
?>	
	<tr>
		<td width="30" class="center"><input type="checkbox" name="admin" value="<?php echo $_smarty_tpl->tpl_vars['gal']->value['gallery_id'];?>
"></td>
		<td width="150"><?php echo $_smarty_tpl->tpl_vars['gal']->value['gallery_title'];?>
</td>
		<td><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['gal']->value['gallery_description'],200,'...');?>
</td>
		<td><?php echo $_smarty_tpl->tpl_vars['gal']->value['created_date'];?>
</td>
		<td width="100"><?php echo smarty_modifier_capitalize($_smarty_tpl->tpl_vars['gal']->value['status']);?>
</td>
		<td width="100">
			<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managegallery.php?action=edit&id=<?php echo $_smarty_tpl->tpl_vars['gal']->value['gallery_id'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/edit.png" alt="E" title="Edit"></a>
			<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managegallery.php?action=delete&id=<?php echo $_smarty_tpl->tpl_vars['gal']->value['gallery_id'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	<?php }
if (!$_smarty_tpl->tpl_vars['gal']->_loop) {
?>
  	<tr><td colspan="6" align="left" valign="middle">No records to display.</td></tr>	
	<?php } ?>
</table>
</form><?php }} ?>