<?php /* Smarty version Smarty-3.1.14, created on 2013-09-15 21:21:14
         compiled from ".\templates\main.html" */ ?>
<?php /*%%SmartyHeaderCode:40245235d77252a3a9-09762574%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3ec5cc4c9d0e21c5c92b94ed649a5416160d787a' => 
    array (
      0 => '.\\templates\\main.html',
      1 => 1378736864,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '40245235d77252a3a9-09762574',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'title' => 0,
    'BACKEND' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_5235d772685e74_09371899',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5235d772685e74_09371899')) {function content_5235d772685e74_09371899($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>
	<link rel="icon" href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
/design/favicon.ico" type="image/x-icon"/>
	<link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
/design/favicon.ico" type="image/x-icon"/>		
	<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
/design/css/styles.css">
	<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
/design/js/jquery.min.js"></script>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
/design/js/functions.js"></script>
</head>
<body>
	<table border="0" width="100%">
		<tr class="header">
			<td align="left" valign="top"><?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>
</td>
		</tr>
		<tr>
			<td align="left" valign="top"><?php echo $_smarty_tpl->getSubTemplate ("menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>
</td>
		</tr>
		<tr>
			<td align="left" valign="top"><div id="main-container"><?php echo $_smarty_tpl->tpl_vars['content']->value;?>
</div></td>
		</tr>
		<tr class="footer">
			<td align="left" valign="bottom"><?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>
</td>
		</tr>
	</table>
</body>
</html><?php }} ?>