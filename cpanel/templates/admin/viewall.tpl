<form method="post" id="admin_grid_massaction-form" action="{$BACKEND}manageadmin.php">
<div style="height:25px;">
	<div align="left" style="width:200px;float:left;padding:4px 0px;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>		
	<div align="right" style="width:280px;float:right;padding:2px 0px;">		
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
		<td>Name</td>
		<td>Email</td>
		<td>Type</td>		
		<td>Status</td>
		<td></td>
	</tr>
	{foreach from=$admins item=admin}	
	<tr>
		<td width="30" class="center"><input type="checkbox" name="admin" value="{$admin.adminId}"></td>
		<td width="150">{$admin.firstname} {$admin.lastname}</td>
		<td>{$admin.email}</td>
		<td>{$admin.usertype}</td>
		<td width="100">{$admin.status}</td>
		<td width="100">
			<a href="{$BACKEND}manageadmin.php?action=edit&id={$admin.adminId}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
			<a href="{$BACKEND}manageadmin.php?action=delete&id={$admin.adminId}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	{foreachelse}
  	<tr colspan="5"><td align="left" valign="middle">No records to display.</td></tr>	
	{/foreach}
</table>
</form>