<form method="post" id="admin_backupgrid_massaction-form" action="{$BACKEND}managebackup.php">
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
		<td>Taken By</td>
		<td>Backup path</td>
		<td>Backup Size</td>		
		<td>Created at</td>		
		<td></td>
	</tr>
	{foreach from=$dbbackup item=backup}	
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="parentcat" value="{$backup.backupid}"></td>
		<td width="150" align="justify" valign="top">{$backup.username}</td>
		<td width="150" align="justify" valign="top">{$backup.bakupfile}</td>
		<td align="justify" valign="top">{$backup.backupsize}</td>
		<td width="100"align="justify" valign="top">{$backup.backup_date}</td>			
		<td width="100">
			<a href="{$BACKEND}managepages.php?action=restore&id={$backup.backupid}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
			<a href="{$BACKEND}managepages.php?action=delete&id={$backup.backupid}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	{foreachelse}
  	<tr><td align="left" valign="middle" colspan="7">No records to display.</td></tr>	
	{/foreach}
</table>
</form>
