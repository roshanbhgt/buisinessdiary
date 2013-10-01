<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 23:52:23
         compiled from ".\templates\header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1551352471e5f924655-39274976%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '10e0737838b4a574ef135d0c601e7b602cfaf37a' => 
    array (
      0 => '.\\templates\\header.tpl',
      1 => 1379740739,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1551352471e5f924655-39274976',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
    'admin' => 0,
    'date' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471e5f9478d8_00218426',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471e5f9478d8_00218426')) {function content_52471e5f9478d8_00218426($_smarty_tpl) {?><table width="100%" border="0" class="header">
  <tr>
    <td width="280" valign="middle" align="center"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
" class="logo">Buisiness Diary</a></td>
    <td valign="top" align="right">
    	<ul class="topmenu">
    		<li>Loged in as <?php echo $_smarty_tpl->tpl_vars['admin']->value;?>
</li>
    		<li class="separator">|</li>
    		<li><?php echo $_smarty_tpl->tpl_vars['date']->value;?>
</li>
    		<li class="separator">|</li>
    		<li><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
/logout.php"><span class="logout">Logout</span></a></li>
    	</ul>
    </td>
  </tr>
</table>
<?php }} ?>