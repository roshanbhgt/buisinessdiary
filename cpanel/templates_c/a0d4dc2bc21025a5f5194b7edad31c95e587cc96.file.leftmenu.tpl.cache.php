<?php /* Smarty version Smarty-3.1.14, created on 2013-09-28 23:51:56
         compiled from ".\templates\pages\leftmenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:880152471e44424da5-19292038%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a0d4dc2bc21025a5f5194b7edad31c95e587cc96' => 
    array (
      0 => '.\\templates\\pages\\leftmenu.tpl',
      1 => 1380388376,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '880152471e44424da5-19292038',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471e4443c4a9_51261126',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471e4443c4a9_51261126')) {function content_52471e4443c4a9_51261126($_smarty_tpl) {?><ul>
	<li class="menu">
		<a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage Pages</a>
		<ul id="mymenu1" class="show">
			<li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managepages.php?action=viewall">Manage Pages</a></li>			
			<li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managepages.php?action=addpage">Add new page</a></li>			  	
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