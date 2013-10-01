<?php /*%%SmartyHeaderCode:2496652471e4447acb2-18961021%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a259abe26bdfe43528cac30e83493e3838ae1b2f' => 
    array (
      0 => '.\\templates\\pages\\pages.tpl',
      1 => 1378664580,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2496652471e4447acb2-18961021',
  'variables' => 
  array (
    'variables' => 0,
    'contentheading' => 0,
    'left' => 0,
    'centercontent' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52471e4450b556_39505980',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52471e4450b556_39505980')) {function content_52471e4450b556_39505980($_smarty_tpl) {?><h2 class="content-header">Manage Pages</h2>
<table width="100%">
	<tr>
		<td width="200" align="left" valign="top" style="padding:0 2px;"><ul>
	<li class="menu">
		<a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage Pages</a>
		<ul id="mymenu1" class="show">
			<li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managepages.php?action=viewall">Manage Pages</a></li>			
			<li class="submenu"><a href="http://localhost/buisinessdiary/cpanel/managepages.php?action=addpage">Add new page</a></li>			  	
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
		<td align="left" valign="top" style="padding:0 2px;"><form method="post" id="admin_grid_massaction-form" action="http://localhost/buisinessdiary/cpanel/manageadmin.php">
<div style="height:25px;">
	<div align="left" style="width:200px;float:left;padding:4px 0px;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>		
	<div align="right" style="width:240px;float:right;padding:2px 0px;">		
            <label>Actions</label>
            <select class="iselect-small" id="admin_grid_massaction-select">
                <option value=""></option>          
                <option selected="selected" value="refresh">Refresh</option>
            </select>
            <button type="submit" title="Submit" name="cache" value="clean" >Submit</button>        
	</div>
</div>
<table width="100%" align="left" class="grid">	
	<tr>
		<td class="center"></td>
		<td>Title</td>
		<td>Description</td>
		<td>Created At</td>		
		<td>Updated At</td>
		<td>Status</td>
		<td></td>
	</tr>
	  	<tr><td align="left" valign="middle" colspan="7">No records to display.</td></tr>	
	</table>
</form>
</td>
	</tr>
</table>

<?php }} ?>