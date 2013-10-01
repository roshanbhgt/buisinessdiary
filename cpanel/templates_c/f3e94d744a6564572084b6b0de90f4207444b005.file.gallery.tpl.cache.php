<?php /* Smarty version Smarty-3.1.14, created on 2013-09-23 21:45:33
         compiled from ".\templates\gallery\gallery.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2569652406925d9ff78-27272271%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f3e94d744a6564572084b6b0de90f4207444b005' => 
    array (
      0 => '.\\templates\\gallery\\gallery.tpl',
      1 => 1378664580,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2569652406925d9ff78-27272271',
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
  'unifunc' => 'content_52406925dda906_58185527',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52406925dda906_58185527')) {function content_52406925dda906_58185527($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
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