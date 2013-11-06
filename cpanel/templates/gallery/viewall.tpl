<form method="post" id="admin_grid_massaction-form" action="{$BACKEND}managegallery.php">
<div style="height:25px;">
	<div align="left" style="width:200px;float:left;padding:4px 0px;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>		
	<div align="right" style="width:239px;float:right;padding:2px 0px;">		
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
		<td>Created Date</td>
		<td>Updated Date</td>
		<td>Status</td>
		<td></td>
	</tr>
	{foreach from=$gallery item=gal}	
	<tr>
		<td width="30" class="center"><input type="checkbox" name="admin" value="{$gal.gallery_id}"></td>
		<td width="150">{$gal.gallery_title}</td>
		<td>{$gal.gallery_description|truncate:200:'...'}</td>
		<td>{$gal.created_date}</td>
		<td>{$gal.updated_date}</td>
		<td width="100">{$gal.status|capitalize}</td>
		<td width="100">
			<a href="{$BACKEND}managegallery.php?action=viewgal&id={$gal.galleryId}"><img src="{$BACKEND}design/images/gallery_icon.png" alt="G" title="View Gal"></a>
			<a href="{$BACKEND}managegallery.php?action=edit&id={$gal.galleryId}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
			<a href="{$BACKEND}managegallery.php?action=delete&id={$gal.galleryId}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	{foreachelse}
  	<tr><td colspan="6" align="left" valign="middle">No records to display.</td></tr>	
	{/foreach}
</table>
</form>