<?php /* Smarty version Smarty-3.1.14, created on 2013-09-23 21:45:33
         compiled from ".\templates\gallery\leftmenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2467552406925cffcd2-70057416%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '28f2456d784efb742b982c1f8d155772e8f1e253' => 
    array (
      0 => '.\\templates\\gallery\\leftmenu.tpl',
      1 => 1379774498,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2467552406925cffcd2-70057416',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52406925d69465_08345435',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52406925d69465_08345435')) {function content_52406925d69465_08345435($_smarty_tpl) {?><ul>
	<li class="menu">
		<a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage Gallery</a>
		<ul id="mymenu1" class="show">
			<li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managegallery.php?action=viewall" >Manage galleries</a></li>
			<li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managegallery.php?action=add" >Add new gallery</a></li>			
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