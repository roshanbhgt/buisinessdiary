<?php /*%%SmartyHeaderCode:1049352471951e1ddb8-47509643%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '32b730c8bf0c4d1aae2e1f4dfb5b767d6d731ad1' => 
    array (
      0 => '.\\templates\\category\\category.tpl',
      1 => 1378664580,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1049352471951e1ddb8-47509643',
  'variables' => 
  array (
    'variables' => 0,
    'contentheading' => 0,
    'left' => 0,
    'centercontent' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471951edd463_24740762',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471951edd463_24740762')) {function content_52471951edd463_24740762($_smarty_tpl) {?><h2 class="content-header">Manage Categories</h2>
<table width="100%">
	<tr>
		<td width="200" align="left" valign="top" style="padding:0 2px;"><ul>
	<li class="menu">
		<a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage categories</a>
		<ul id="mymenu1" class="show">
			<li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=viewparent">Manage Parent Categories</a></li>			
			<li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=addparent">Add Parent Category</a></li>
			<li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=viewsub">Manage Sub Categories</a></li>		
  			<li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=addsubcat">Add Sub Category</a></li>  	
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