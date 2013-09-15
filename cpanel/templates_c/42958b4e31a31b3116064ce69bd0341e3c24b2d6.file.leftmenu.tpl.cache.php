<?php /* Smarty version Smarty-3.1.14, created on 2013-09-09 15:53:20
         compiled from ".\templates\admin\leftmenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10291522da198b66b65-66412577%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '42958b4e31a31b3116064ce69bd0341e3c24b2d6' => 
    array (
      0 => '.\\templates\\admin\\leftmenu.tpl',
      1 => 1378664080,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10291522da198b66b65-66412577',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_522da198b82ac4_64383651',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_522da198b82ac4_64383651')) {function content_522da198b82ac4_64383651($_smarty_tpl) {?><ul>
	<li class="menu">
		<a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage Admin</a>
		<ul id="mymenu1" class="hide">
			<li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
manageadmin.php?action=viewall" >Manage accounts</a></li>
			<li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
manageadmin.php?action=add" >Add new account</a></li>			
		</ul>
	</li>
</ul>

<script type="text/javascript">
<!--
menu_status = new Array();

function showHide(theid){
    if (document.getElementById) {
    var switch_id = document.getElementById(theid);

        if(menu_status[theid] != 'show') {
           switch_id.className = 'show';
           menu_status[theid] = 'show';
        }else{
           switch_id.className = 'hide';
           menu_status[theid] = 'hide';
        }
    }
}
//-->
</script>
<?php }} ?>