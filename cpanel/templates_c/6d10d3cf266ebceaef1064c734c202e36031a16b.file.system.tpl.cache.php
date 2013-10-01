<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 22:37:07
         compiled from ".\templates\system\system.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1928252470cbb687371-71584115%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6d10d3cf266ebceaef1064c734c202e36031a16b' => 
    array (
      0 => '.\\templates\\system\\system.tpl',
      1 => 1378664580,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1928252470cbb687371-71584115',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'variables' => 0,
    'contentheading' => 0,
    'left' => 0,
    'centercontent' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52470cbb6f4987_97947477',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52470cbb6f4987_97947477')) {function content_52470cbb6f4987_97947477($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
	<div class="success"><?php echo $_smarty_tpl->tpl_vars['variables']->value['success'];?>
</div>
<?php }elseif(($_smarty_tpl->tpl_vars['variables']->value['error']!='')){?>
	<div class="error"><?php echo $_smarty_tpl->tpl_vars['variables']->value['error'];?>
</div>
<?php }?>
<h2 class="content-header"><?php echo $_smarty_tpl->tpl_vars['contentheading']->value;?>
</h2>
<table width="100%">
	<tr>
		<td width="200" align="left" valign="top" style="padding:0 2px;"><?php echo $_smarty_tpl->tpl_vars['left']->value;?>
</td>
		<td align="left" valign="top" style="padding:0 2px;"><?php echo $_smarty_tpl->tpl_vars['centercontent']->value;?>
</td>
	</tr>
</table>

<?php }} ?>