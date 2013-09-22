{if $variables.success != ""}
<div class="success">{$variables.success}</div>
{/If}
<h2 class="content-header">Cache Management</h2>
<form method="post" id="cache_grid_massaction-form" action="{$BACKEND}cachemgmt.php">
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
</form>