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
		<td>Name</td>
		<td>Email</td>
		<td>Mobile</td>
		<td>User Interface</td>
		<td>Search</td>
		<td>Information</td>
		<td>Message</td>		
		<td>Created At</td>
	</tr>
	{foreach from=$flist item=val}	
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="clistid" value="{$val.contactId}"></td>
		<td width="150" align="justify" valign="top">{$val.name|capitalize}</td>
		<td width="150" align="justify" valign="top">{$val.email}</td>
		<td width="100" valign="top">{$val.mobile}</td>
		<td width="100" valign="top">{$val.ui}</td>
		<td width="100" valign="top">{$val.search}</td>
		<td width="100" valign="top">{$val.info}</td>
		<td align="justify" valign="top">{$val.message}</td>
		<td width="100"align="justify" valign="top">{$val.created_date}</td>
	</tr>
	{foreachelse}
  	<tr><td align="left" valign="middle" colspan="7">No records to display.</td></tr>	
	{/foreach}
</table>
</form>
