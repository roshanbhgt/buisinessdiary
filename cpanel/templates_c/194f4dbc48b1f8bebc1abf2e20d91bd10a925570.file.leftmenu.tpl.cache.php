<?php /* Smarty version Smarty-3.1.14, created on 2013-09-09 17:50:59
         compiled from ".\templates\country\leftmenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:30758522dbd2b2645d1-05409234%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '194f4dbc48b1f8bebc1abf2e20d91bd10a925570' => 
    array (
      0 => '.\\templates\\country\\leftmenu.tpl',
      1 => 1378707197,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '30758522dbd2b2645d1-05409234',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'BACKEND' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_522dbd2b285ff1_13396481',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_522dbd2b285ff1_13396481')) {function content_522dbd2b285ff1_13396481($_smarty_tpl) {?><ul>
	<li class="menu">
            <a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage Countries</a>
            <ul id="mymenu1" class="hide">
                <li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecountries.php?type=country&action=viewall" >Manage countries</a></li>
                <li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecountries.php?type=country&action=add" >Add new country</a></li>			
                <li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecountries.php?type=state&action=viewall" >Manage states</a></li>			
                <li class="submenu"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecountries.php?type=state&action=add" >Add new states</a></li>			
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