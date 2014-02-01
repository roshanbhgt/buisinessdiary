{If $view == "viewparent" }
<form method="post" id="admin_grid_massaction-form" action="{$BACKEND}manageadmin.php">
<div style="height:25px;">
    <div align="left" style="float: left; padding: 4px 0px; width: 17%;">
		<a href="javascript:void(0);" onclick="check(this)">Select All</a> 
		| 
		<a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
	</div>
	{if $pages != '' }
	<div style="float: left; width: 60%;">		 		
		<div class="pagination">
			<ul>
				{if $smarty.get.page != '' && $smarty.get.page != 1}
					<li><a href="?action={$smarty.get.action}&page={$smarty.get.page-1}"><</a></li>
				{/if}		
				{for $page=$smarty.get.page to $pages max = 5}
		    		<li><a href="?action={$smarty.get.action}&page={$page}">{$page}</a></li>
				{/for}
				{if $smarty.get.page != '' && $smarty.get.page < $pages}
					<li><a href="?action={$smarty.get.action}&page={$smarty.get.page+1}">></a></li>
				{/if}
			</ul>
		</div>
	</div>
	{/if}		
	<div align="right" style="float: right; padding: 2px 0px; width: 22%;">		
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
        <td>Identifier</td>
		<td>Banner</td>
		<td>Description</td>
		<td>Created At</td>		
		<td>Updated At</td>
		<td>Status</td>
		<td></td>
	</tr>
	{foreach from=$catall item=cat key=i}	
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="parentcat" value="{$cat.cat_id}"></td>
		<td width="150" align="justify" valign="top">{$cat.title}</td>
        <td width="150" align="justify" valign="top">{$cat.identifier}</td>
		<td width="50" align="justify" valign="top">{if $cat.banner != ''}<a href="{$CATEGORYIMAGE}/small/{$cat.banner}" data-lightbox="image-{$i}" style="padding: 0 !important;" ><img src="{$CATEGORYIMAGE}/thumb/{$cat.banner}" alt="" width="50"/></a>{/if}</td>
		<td align="justify" valign="top">{$cat.description|truncate:200:'...'}</td>
		<td width="100"align="justify" valign="top">{$cat.created_date}</td>
		<td width="100" valign="top">{$cat.update_date}</td>
		<td width="50" valign="top">{$cat.status|capitalize}</td>
		<td width="100">
			<a href="{$BACKEND}managecat.php?action=editparentcat&id={$cat.cat_id}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
			<a href="{$BACKEND}managecat.php?action=deleteparentcat&id={$cat.cat_id}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	{foreachelse}
  	<tr><td align="left" valign="middle" colspan="7">No records to display.</td></tr>	
	{/foreach}
</table>
</form>
{ElseIf $view == "viewsub"}
<form method="post" id="admin_grid_massaction-form" action="{$BACKEND}manageadmin.php">
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
		<td>Parent Category</td>
		<td>Banner</td>
		<td>Description</td>
		<td>Created At</td>		
		<td>Updated At</td>
		<td>Status</td>
		<td></td>
	</tr>
	{foreach from=$catall item=cat key=i}	
	<tr>
		<td width="30" class="center"><input type="checkbox" name="admin" value="{$cat.cat_id}"></td>
		<td width="150">{$cat.title}</td>
		<td>{foreach from=$parentCat item=pcat}{if $pcat.cat_id == $cat.parentcat_id}{$pcat.title}{/if}{/foreach}</td>
		<td width="50" align="justify" valign="top">{if $cat.banner != ''}<a href="{$CATEGORYIMAGE}/small/{$cat.banner}" data-lightbox="image-{$i}" style="padding: 0 !important;" ><img src="{$CATEGORYIMAGE}/thumb/{$cat.banner}" alt="" width="50"/></a>{/if}</td>
		<td>{$cat.description}</td>
		<td>{$cat.created_date}</td>
		<td>{$cat.update_date}</td>
		<td width="100">{$cat.status|capitalize}</td>
		<td width="100">
			<a href="{$BACKEND}managecat.php?action=editsubcat&id={$cat.cat_id}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
			<a href="{$BACKEND}managecat.php?action=deletesubcat&id={$cat.cat_id}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
		</td>
	</tr>
	{foreachelse}
  	<tr><td align="left" valign="middle" colspan="8">No records to display.</td></tr>	
	{/foreach}
</table>
</form>
{/IF}