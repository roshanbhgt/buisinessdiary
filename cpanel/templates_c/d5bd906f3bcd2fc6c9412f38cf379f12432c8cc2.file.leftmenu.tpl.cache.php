<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 23:30:49
         compiled from ".\templates\category\leftmenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:443652471951c1a338-55460746%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd5bd906f3bcd2fc6c9412f38cf379f12432c8cc2' => 
    array (
      0 => '.\\templates\\category\\leftmenu.tpl',
      1 => 1379750145,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '443652471951c1a338-55460746',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471951d00af4_87940722',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471951d00af4_87940722')) {function content_52471951d00af4_87940722($_smarty_tpl) {?><ul>
	<li class="menu">
		<a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage categories</a>
		<ul id="mymenu1" class="show">
			<li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecat.php?action=viewparent">Manage Parent Categories</a></li>			
			<li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecat.php?action=addparent">Add Parent Category</a></li>
			<li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecat.php?action=viewsub">Manage Sub Categories</a></li>		
  			<li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecat.php?action=addsubcat">Add Sub Category</a></li>  	
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