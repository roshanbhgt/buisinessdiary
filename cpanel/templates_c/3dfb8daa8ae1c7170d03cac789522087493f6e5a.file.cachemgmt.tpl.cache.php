<?php /* Smarty version Smarty-3.1.14, created on 2013-09-21 19:45:37
         compiled from ".\templates\system\cachemgmt.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13727523daa095a6064-39399212%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3dfb8daa8ae1c7170d03cac789522087493f6e5a' => 
    array (
      0 => '.\\templates\\system\\cachemgmt.tpl',
      1 => 1379772931,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13727523daa095a6064-39399212',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'variables' => 0,
    'BACKEND' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_523daa09678f94_19494692',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_523daa09678f94_19494692')) {function content_523daa09678f94_19494692($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['variables']->value['success']!=''){?>
<div class="success"><?php echo $_smarty_tpl->tpl_vars['variables']->value['success'];?>
</div>
<?php }?>
<h2 class="content-header">Cache Management</h2>
<form method="post" id="cache_grid_massaction-form" action="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
cachemgmt.php">
<div style="height:25px;">
	<div align="left" style="width:200px;float:left;padding:4px 0px;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>		
	<div align="right" style="width:200px;float:right;padding:2px 0px;">		
            <label>Actions</label>
            <select class="required-entry select absolute-advice local-validation" id="cache_grid_massaction-select">
                <option value=""></option>          
                <option selected="selected" value="refresh">Refresh</option>
            </select>
            <button type="submit" title="Submit" name="cache" value="clean" >Submit</button>        
	</div>
</div>
<table width="100%" align="left" class="grid">	
	<tr>
		<td class="center"></td>
		<td>Cache Type</td>
		<td>Description</td>		
		<td>Status</td>
	</tr>
	<tr>
		<td width="30" class="center"><input type="checkbox" name="front_templ_cache" value="front_templ_cache"></td>
		<td width="200">Frontend</td>
		<td>Template</td>
		<td width="100">Enable</td>
	</tr>
	<tr>
		<td class="center"><input type="checkbox" name="front_php_cache" value="front_php_cache"></td>
		<td>Frontend</td>
		<td>Php</td>
		<td>Enable</td>
	</tr>
	<tr>
		<td class="center"><input type="checkbox" name="back_templ_cache" value="back_templ_cache"></td>
		<td>Backend</td>
		<td>Template</td>
		<td>Enable</td>
	</tr>
	<tr>
		<td class="center"><input type="checkbox" name="back_php_cache" value="back_php_cache"></td>
		<td>Backend</td>
		<td>Php</td>
		<td>Enable</td>
	</tr>
	<tr>
		<td class="center"><input type="checkbox" name="front_session" value="front_session"></td>
		<td>Frontend</td>
		<td>Session</td>
		<td>Enable</td>
	</tr>
	<tr>
		<td class="center"><input type="checkbox" name="back_session" value="back_session"></td>
		<td>Backend</td>
		<td>Session</td>
		<td>Enable</td>
	</tr>
</table>
</form><?php }} ?>