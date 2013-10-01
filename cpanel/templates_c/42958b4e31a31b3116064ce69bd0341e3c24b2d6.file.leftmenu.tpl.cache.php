<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 22:37:07
         compiled from ".\templates\admin\leftmenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:918152470cbb5e3247-34311081%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '42958b4e31a31b3116064ce69bd0341e3c24b2d6' => 
    array (
      0 => '.\\templates\\admin\\leftmenu.tpl',
      1 => 1379742115,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '918152470cbb5e3247-34311081',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52470cbb602657_45456074',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52470cbb602657_45456074')) {function content_52470cbb602657_45456074($_smarty_tpl) {?><ul>
	<li class="menu">
		<a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage Admin</a>
		<ul id="mymenu1" class="show">
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