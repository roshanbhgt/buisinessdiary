<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 23:51:56
         compiled from ".\templates\pages\viewall.tpl" */ ?>
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
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
    'pages' => 0,
    'page' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471e443c3302_37938558',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471e443c3302_37938558')) {function content_52471e443c3302_37938558($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_truncate')) include 'C:\\xampp\\htdocs\\buisinessdiary\\libs\\Smarty\\plugins\\modifier.truncate.php';
if (!is_callable('smarty_modifier_capitalize')) include 'C:\\xampp\\htdocs\\buisinessdiary\\libs\\Smarty\\plugins\\modifier.capitalize.php';
?><form method="post" id="admin_grid_massaction-form" action="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
manageadmin.php">
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
	<?php  $_smarty_tpl->tpl_vars['page'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['page']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['pages']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['page']->key => $_smarty_tpl->tpl_vars['page']->value){
$_smarty_tpl->tpl_vars['page']->_loop = true;
?>	
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="parentcat" value="<?php echo $_smarty_tpl->tpl_vars['page']->value['cat_id'];?>
"></td>
		<td width="150" align="justify" valign="top"><?php echo $_smarty_tpl->tpl_vars['page']->value['title'];?>
</td>
		<td align="justify" valign="top"><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['page']->value['description'],200,'...');?>
</td>
		<td width="100"align="justify" valign="top"><?php echo $_smarty_tpl->tpl_vars['page']->value['created_date'];?>
</td>
		<td width="100" valign="top"><?php echo $_smarty_tpl->tpl_vars['page']->value['update_date'];?>
</td>
		<td width="50" valign="top"><?php echo smarty_modifier_capitalize($_smarty_tpl->tpl_vars['page']->value['status']);?>
</td>
		<td width="100">
			<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managepages.php?action=editpage&id=<?php echo $_smarty_tpl->tpl_vars['page']->value['pageId'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/edit.png" alt="E" title="Edit"></a>
			<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managepages.php?action=deletepage&id=<?php echo $_smarty_tpl->tpl_vars['page']->value['pageId'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	<?php }
if (!$_smarty_tpl->tpl_vars['page']->_loop) {
?>
  	<tr><td align="left" valign="middle" colspan="7">No records to display.</td></tr>	
	<?php } ?>
</table>
</form>
<?php }} ?>