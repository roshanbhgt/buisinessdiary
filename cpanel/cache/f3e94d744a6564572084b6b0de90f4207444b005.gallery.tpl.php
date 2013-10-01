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
  'variables' => 
  array (
    'variables' => 0,
    'contentheading' => 0,
    'left' => 0,
    'centercontent' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52406925df2004_34571508',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52406925df2004_34571508')) {function content_52406925df2004_34571508($_smarty_tpl) {?><h2 class="content-header">Manage Gallery</h2>
<table width="100%">
	<tr>
		<td width="200" align="left" valign="top" style="padding:0 2px;"><ul>
	<li class="menu">
		<a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage Gallery</a>
		<ul id="mymenu1" class="show">
			<li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managegallery.php?action=viewall" >Manage galleries</a></li>
			<li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managegallery.php?action=add" >Add new gallery</a></li>			
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
</td>
		<td align="left" valign="top" style="padding:0 2px;"></td>
	</tr>
</table>

<?php }} ?>