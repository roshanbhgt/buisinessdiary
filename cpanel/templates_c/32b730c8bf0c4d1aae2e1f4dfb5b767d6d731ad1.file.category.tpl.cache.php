<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 23:30:49
         compiled from ".\templates\category\category.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1049352471951e1ddb8-47509643%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '32b730c8bf0c4d1aae2e1f4dfb5b767d6d731ad1' => 
    array (
      0 => '.\\templates\\category\\category.tpl',
      1 => 1378664580,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1049352471951e1ddb8-47509643',
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
  'unifunc' => 'content_52471951eb24d2_32626212',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471951eb24d2_32626212')) {function content_52471951eb24d2_32626212($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
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