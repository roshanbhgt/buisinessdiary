<?php /* Smarty version Smarty-3.1.14, created on 2013-09-23 21:46:54
         compiled from ".\templates\country\country.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16450524069768cc168-33834234%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ab8c361caac810578c96badc4fff5edb4dcda909' => 
    array (
      0 => '.\\templates\\country\\country.tpl',
      1 => 1378702810,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16450524069768cc168-33834234',
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
  'unifunc' => 'content_52406976954d06_58847744',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52406976954d06_58847744')) {function content_52406976954d06_58847744($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
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