<?php /*%%SmartyHeaderCode:315245240697659f8a5-12335020%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6715044b0f30e3aa41fc409619059b2339c1f4e1' => 
    array (
      0 => '.\\templates\\country\\viewall.tpl',
      1 => 1378723248,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '315245240697659f8a5-12335020',
  'variables' => 
  array (
    'BACKEND' => 0,
    'countryies' => 0,
    'country' => 0,
    'admins' => 0,
    'admin' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_524069767f9231_07869440',
  'cache_lifetime' => 30,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524069767f9231_07869440')) {function content_524069767f9231_07869440($_smarty_tpl) {?><form method="post" id="country_grid_massaction-form" action="http://localhost/buisinessdiary/cpanel/managecountries.php">
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
<?php }} ?>