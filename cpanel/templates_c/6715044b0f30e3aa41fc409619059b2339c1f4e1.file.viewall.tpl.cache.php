<?php /* Smarty version Smarty-3.1.14, created on 2013-09-09 17:44:00
         compiled from ".\templates\country\viewall.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16435522dbb880ff982-17231336%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6715044b0f30e3aa41fc409619059b2339c1f4e1' => 
    array (
      0 => '.\\templates\\country\\viewall.tpl',
      1 => 1378723247,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16435522dbb880ff982-17231336',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
    'countryies' => 0,
    'country' => 0,
    'admins' => 0,
    'admin' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_522dbb8823a195_85611869',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_522dbb8823a195_85611869')) {function content_522dbb8823a195_85611869($_smarty_tpl) {?><form method="post" id="country_grid_massaction-form" action="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecountries.php">
<div style="height:25px;">
    <div align="left" style="width:200px;float:left;padding:4px 0px;">
        <a href="javascript:void(0);" onclick="check(this)">Select All</a> 
        | 
        <a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
    </div>		
    <div align="right" style="width:185px;float:right;padding:2px 0px;">		
        <label>Actions</label>
        <select class="select" id="country_grid_massaction-select">
            <option value=""></option>          
            <option selected="selected" value="refresh">Refresh</option>
        </select>
        <button type="submit" title="Submit" name="cache" value="clean" >Submit</button>        
    </div>
</div>
<?php if ($_GET['type']=='country'){?>
<table width="100%" align="left" class="grid">	
    <tr>
        <td class="center"></td>
        <td>Country Name</td>		
        <td></td>
    </tr>
    <?php  $_smarty_tpl->tpl_vars['country'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['country']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['countryies']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['country']->key => $_smarty_tpl->tpl_vars['country']->value){
$_smarty_tpl->tpl_vars['country']->_loop = true;
?>	
    <tr>
        <td width="5%" class="center"><input type="checkbox" name="admin" value="<?php echo $_smarty_tpl->tpl_vars['country']->value['countryId'];?>
"></td>
        <td width="80%"><?php echo $_smarty_tpl->tpl_vars['country']->value['title'];?>
</td>		
        <td width="15%">
                <a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecountries.php?type=country&action=edit&id=<?php echo $_smarty_tpl->tpl_vars['country']->value['countryId'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/edit.png" alt="E" title="Edit"></a>
                <a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecountries.php?type=country&action=delete&id=<?php echo $_smarty_tpl->tpl_vars['country']->value['countryId'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/delete.png" alt="D" title="Delete"></a>
        </td>
    </tr>
    <?php }
if (!$_smarty_tpl->tpl_vars['country']->_loop) {
?>
    <tr>
        <td align="left" valign="middle" colspan="3">No records to display.</td>
    </tr>	
    <?php } ?>
</table>
<?php }elseif($_GET['type']=="state"){?>
<table width="100%" align="left" class="grid">	
    <tr>
        <td class="center"></td>
        <td>State Name</td>		
        <td></td>
    </tr>
    <?php  $_smarty_tpl->tpl_vars['admin'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['admin']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['admins']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['admin']->key => $_smarty_tpl->tpl_vars['admin']->value){
$_smarty_tpl->tpl_vars['admin']->_loop = true;
?>	
    <tr>
        <td width="10" class="center"><input type="checkbox" name="admin" value="<?php echo $_smarty_tpl->tpl_vars['admin']->value['adminId'];?>
"></td>
        <td width="150"><?php echo $_smarty_tpl->tpl_vars['admin']->value['firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['admin']->value['lastname'];?>
</td>		
        <td width="100">
                <a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecountries.php?type=state&action=edit&id=<?php echo $_smarty_tpl->tpl_vars['admin']->value['adminId'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/edit.png" alt="E" title="Edit"></a>
                <a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecountries.php?type=state&action=delete&id=<?php echo $_smarty_tpl->tpl_vars['admin']->value['adminId'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
design/images/delete.png" alt="D" title="Delete"></a>
        </td>
    </tr>
    <?php }
if (!$_smarty_tpl->tpl_vars['admin']->_loop) {
?>
    <tr>
        <td align="left" valign="middle" colspan="3">No records to display.</td>
    </tr>	
    <?php } ?>
</table>    
<?php }?>    
</form>
<?php }} ?>