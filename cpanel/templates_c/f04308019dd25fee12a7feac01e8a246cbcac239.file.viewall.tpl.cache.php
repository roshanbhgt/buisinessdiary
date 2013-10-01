<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 20:30:34
         compiled from ".\templates\category\viewall.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2035246ef12aa1f44-13952670%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f04308019dd25fee12a7feac01e8a246cbcac239' => 
    array (
      0 => '.\\templates\\category\\viewall.tpl',
      1 => 1379833483,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2035246ef12aa1f44-13952670',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'view' => 0,
    'BACKEND' => 0,
    'catall' => 0,
    'cat' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_5246ef12d03559_99050789',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5246ef12d03559_99050789')) {function content_5246ef12d03559_99050789($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_truncate')) include 'C:\\xampp\\htdocs\\buisinessdiary\\libs\\Smarty\\plugins\\modifier.truncate.php';
if (!is_callable('smarty_modifier_capitalize')) include 'C:\\xampp\\htdocs\\buisinessdiary\\libs\\Smarty\\plugins\\modifier.capitalize.php';
?><?php if ($_smarty_tpl->tpl_vars['view']->value=="viewparent"){?>
<form method="post" id="admin_grid_massaction-form" action="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
manageadmin.php">
<div style="height:25px;">
	<div align="left" style="width:200px;float:left;padding:4px 0px;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>		
	<div align="right" style="width:180px;float:right;padding:2px 0px;">		
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
		<td>Title</td>
		<td>Description</td>
		<td>Created At</td>		
		<td>Updated At</td>
		<td>Status</td>
		<td></td>
	</tr>
	<?php  $_smarty_tpl->tpl_vars['cat'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['cat']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['catall']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['cat']->key => $_smarty_tpl->tpl_vars['cat']->value){
$_smarty_tpl->tpl_vars['cat']->_loop = true;
?>	
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="parentcat" value="<?php echo $_smarty_tpl->tpl_vars['cat']->value['cat_id'];?>
"></td>
		<td width="150" align="justify" valign="top"><?php echo $_smarty_tpl->tpl_vars['cat']->value['title'];?>
</td>
		<td align="justify" valign="top"><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['cat']->value['description'],200,'...');?>
</td>
		<td width="100"align="justify" valign="top"><?php echo $_smarty_tpl->tpl_vars['cat']->value['created_date'];?>
</td>
		<td width="100" valign="top"><?php echo $_smarty_tpl->tpl_vars['cat']->value['update_date'];?>
</td>
		<td width="50" valign="top"><?php echo smarty_modifier_capitalize($_smarty_tpl->tpl_vars['cat']->value['status']);?>
</td>
		<td width="100">
			<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecat.php?action=editparentcat&id=<?php echo $_smarty_tpl->tpl_vars['cat']->value['cat_id'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/edit.png" alt="E" title="Edit"></a>
			<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecat.php?action=deleteparentcat&id=<?php echo $_smarty_tpl->tpl_vars['cat']->value['cat_id'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	<?php }
if (!$_smarty_tpl->tpl_vars['cat']->_loop) {
?>
  	<tr><td align="left" valign="middle" colspan="7">No records to display.</td></tr>	
	<?php } ?>
</table>
</form>
<?php }elseif($_smarty_tpl->tpl_vars['view']->value=="viewsub"){?>
<form method="post" id="admin_grid_massaction-form" action="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
manageadmin.php">
<div style="height:25px;">
	<div align="left" style="width:200px;float:left;padding:4px 0px;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>		
	<div align="right" style="width:180px;float:right;padding:2px 0px;">		
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
		<td>Title</td>
		<td>Parent Category</td>
		<td>Description</td>
		<td>Created At</td>		
		<td>Updated At</td>
		<td>Status</td>
		<td></td>
	</tr>
	<?php  $_smarty_tpl->tpl_vars['cat'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['cat']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['catall']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['cat']->key => $_smarty_tpl->tpl_vars['cat']->value){
$_smarty_tpl->tpl_vars['cat']->_loop = true;
?>	
	<tr>
		<td width="30" class="center"><input type="checkbox" name="admin" value="<?php echo $_smarty_tpl->tpl_vars['cat']->value['adminId'];?>
"></td>
		<td width="150"><?php echo $_smarty_tpl->tpl_vars['cat']->value['firstname'];?>
</td>
		<td><?php echo $_smarty_tpl->tpl_vars['cat']->value['email'];?>
</td>
		<td><?php echo $_smarty_tpl->tpl_vars['cat']->value['usertype'];?>
</td>
		<td width="100"><?php echo smarty_modifier_capitalize($_smarty_tpl->tpl_vars['cat']->value['status']);?>
</td>
		<td width="100">
			<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecat.php?action=editsubcat&id=<?php echo $_smarty_tpl->tpl_vars['cat']->value['adminId'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/edit.png" alt="E" title="Edit"></a>
			<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecat.php?action=deletesubcat&id=<?php echo $_smarty_tpl->tpl_vars['cat']->value['adminId'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	<?php }
if (!$_smarty_tpl->tpl_vars['cat']->_loop) {
?>
  	<tr><td align="left" valign="middle" colspan="8">No records to display.</td></tr>	
	<?php } ?>
</table>
</form>
<?php }?><?php }} ?>