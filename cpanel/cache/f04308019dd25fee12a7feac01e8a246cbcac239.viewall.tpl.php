<?php /*%%SmartyHeaderCode:2035246ef12aa1f44-13952670%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f04308019dd25fee12a7feac01e8a246cbcac239' => 
    array (
      0 => '.\\templates\\category\\viewall.tpl',
      1 => 1379833483,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2035246ef12aa1f44-13952670',
  'variables' => 
  array (
    'view' => 0,
    'BACKEND' => 0,
    'catall' => 0,
    'cat' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_5246ef12d40452_71033380',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5246ef12d40452_71033380')) {function content_5246ef12d40452_71033380($_smarty_tpl) {?><form method="post" id="admin_grid_massaction-form" action="http://localhost/buisinessdiary/cpanel/manageadmin.php">
<div style="height:25px;">
	<div align="left" style="width:200px;float:left;padding:4px 0px;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>		
	<div align="right" style="width:180px;float:right;padding:2px 0px;">		
            <label>Actions</label>
            <select class="select" id="admin_grid_massaction-select">
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
		
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="parentcat" value="2"></td>
		<td width="150" align="justify" valign="top">Test 1</td>
		<td align="justify" valign="top"><br></td>
		<td width="100"align="justify" valign="top">2013-09-22 12:53:01</td>
		<td width="100" valign="top">2013-09-28 20:28:27</td>
		<td width="50" valign="top">Active</td>
		<td width="100">
			<a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=editparentcat&id=2"><img src="http://localhost/buisinessdiary/cpanel/design/images/edit.png" alt="E" title="Edit"></a>
			<a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=deleteparentcat&id=2"><img src="http://localhost/buisinessdiary/cpanel/design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
		
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="parentcat" value="3"></td>
		<td width="150" align="justify" valign="top">Test 2</td>
		<td align="justify" valign="top"></td>
		<td width="100"align="justify" valign="top">2013-09-22 12:53:19</td>
		<td width="100" valign="top">2013-09-22 12:57:03</td>
		<td width="50" valign="top">Active</td>
		<td width="100">
			<a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=editparentcat&id=3"><img src="http://localhost/buisinessdiary/cpanel/design/images/edit.png" alt="E" title="Edit"></a>
			<a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=deleteparentcat&id=3"><img src="http://localhost/buisinessdiary/cpanel/design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
		
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="parentcat" value="4"></td>
		<td width="150" align="justify" valign="top">Test 3</td>
		<td align="justify" valign="top"></td>
		<td width="100"align="justify" valign="top">2013-09-22 12:53:38</td>
		<td width="100" valign="top">2013-09-23 20:59:06</td>
		<td width="50" valign="top">Active</td>
		<td width="100">
			<a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=editparentcat&id=4"><img src="http://localhost/buisinessdiary/cpanel/design/images/edit.png" alt="E" title="Edit"></a>
			<a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=deleteparentcat&id=4"><img src="http://localhost/buisinessdiary/cpanel/design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
		
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="parentcat" value="5"></td>
		<td width="150" align="justify" valign="top">Test 4</td>
		<td align="justify" valign="top"></td>
		<td width="100"align="justify" valign="top">2013-09-22 12:54:01</td>
		<td width="100" valign="top">2013-09-22 12:57:40</td>
		<td width="50" valign="top">Active</td>
		<td width="100">
			<a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=editparentcat&id=5"><img src="http://localhost/buisinessdiary/cpanel/design/images/edit.png" alt="E" title="Edit"></a>
			<a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=deleteparentcat&id=5"><img src="http://localhost/buisinessdiary/cpanel/design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
		
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="parentcat" value="6"></td>
		<td width="150" align="justify" valign="top">Test 5</td>
		<td align="justify" valign="top"></td>
		<td width="100"align="justify" valign="top">2013-09-22 12:54:34</td>
		<td width="100" valign="top">2013-09-22 12:58:09</td>
		<td width="50" valign="top">Active</td>
		<td width="100">
			<a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=editparentcat&id=6"><img src="http://localhost/buisinessdiary/cpanel/design/images/edit.png" alt="E" title="Edit"></a>
			<a href="http://localhost/buisinessdiary/cpanel/managecat.php?action=deleteparentcat&id=6"><img src="http://localhost/buisinessdiary/cpanel/design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	</table>
</form>
<?php }} ?>