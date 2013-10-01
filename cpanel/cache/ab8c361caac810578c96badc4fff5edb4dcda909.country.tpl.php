<?php /*%%SmartyHeaderCode:16450524069768cc168-33834234%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ab8c361caac810578c96badc4fff5edb4dcda909' => 
    array (
      0 => '.\\templates\\country\\country.tpl',
      1 => 1378702810,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16450524069768cc168-33834234',
  'variables' => 
  array (
    'variables' => 0,
    'contentheading' => 0,
    'left' => 0,
    'centercontent' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52406976993519_92608110',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52406976993519_92608110')) {function content_52406976993519_92608110($_smarty_tpl) {?><h2 class="content-header">Manage countries</h2>
<table width="100%">
	<tr>
		<td width="200" align="left" valign="top" style="padding:0 2px;"><ul>
	<li class="menu">
            <a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage Countries</a>
            <ul id="mymenu1" class="hide">
                <li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managecountries.php?type=country&action=viewall" >Manage countries</a></li>
                <li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managecountries.php?type=country&action=add" >Add new country</a></li>			
                <li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managecountries.php?type=state&action=viewall" >Manage states</a></li>			
                <li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managecountries.php?type=state&action=add" >Add new states</a></li>			
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
		<td align="left" valign="top" style="padding:0 2px;"><form method="post" id="country_grid_massaction-form" action="http://localhost/buisinessdiary/cpanel/managecountries.php">
<div style="height:25px;">
    <div align="left" style="width:200px;float:left;padding:4px 0px;">
        <a href="javascript:void(0);" onclick="check(this)">Select All</a> 
        | 
        <a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
    </div>		
    <div align="right" style="width:185px;float:right;padding:2px 0px;">		
        <label>Actions</label>
        <select class="select" id="country_grid_massaction-select">
            <option value=""></option>          
            <option selected="selected" value="refresh">Refresh</option>
        </select>
        <button type="submit" title="Submit" name="cache" value="clean" >Submit</button>        
    </div>
</div>
<table width="100%" align="left" class="grid">	
    <tr>
        <td class="center"></td>
        <td>Country Name</td>		
        <td></td>
    </tr>
    	
    <tr>
        <td width="5%" class="center"><input type="checkbox" name="admin" value="1"></td>
        <td width="80%">India</td>		
        <td width="15%">
                <a href="http://localhost/buisinessdiary/cpanel/managecountries.php?type=country&action=edit&id=1"><img src="http://localhost/buisinessdiary/cpanel/design/images/edit.png" alt="E" title="Edit"></a>
                <a href="http://localhost/buisinessdiary/cpanel/managecountries.php?type=country&action=delete&id=1"><img src="http://localhost/buisinessdiary/cpanel/design/images/delete.png" alt="D" title="Delete"></a>
        </td>
    </tr>
    </table>
    
</form>
</td>
	</tr>
</table>

<?php }} ?>