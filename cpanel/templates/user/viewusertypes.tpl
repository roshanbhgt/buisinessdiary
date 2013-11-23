<form method="post" id="admin_grid_massaction-form" action="{$BACKEND}manageadmin.php">
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
		<td>Role</td>		
		<td>Created At</td>		
		<td>Updated At</td>		
		<td></td>
	</tr>
	{foreach from=$usertypes item=usertype}	
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="usrtype" value="{$usertype.roleId}"></td>
		<td width="150" align="justify" valign="top">{$usertype.role}</td>		
		<td width="100"align="justify" valign="top">{$usertype.created_date}</td>
		<td width="100" valign="top">{$usertype.update_date}</td>		
		<td width="100">
			<a href="{$BACKEND}manageusertype.php?action=editusertype&id={$usertype.roleId}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
			<a href="{$BACKEND}manageusertype.php?action=deleteusertype&id={$usertype.roleId}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	{foreachelse}
  	<tr><td align="left" valign="middle" colspan="7">No records to display.</td></tr>	
	{/foreach}
</table>
</form>
