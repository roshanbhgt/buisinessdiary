<form method="post" id="country_grid_massaction-form" action="{$BACKEND}managenewsletter.php">
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
        <select class="iselect-small" id="country_grid_massaction-select">
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
        <td>Status</td>
        <td>Created At</td>
        <td></td>
    </tr>
    {foreach from=$newsletteremails item=emails}
    <tr>
        <td width="5%" class="center"><input type="checkbox" name="admin" value="{$emails.subscriberId}"></td>
        <td>{$emails.name}</td>
        <td>{$emails.email}</td>
        <td>{if $emails.status == 1}Active{else}Inactive{/if}</td>
        <td>{$emails.created_date}</td>
        <td width="15%">
                <a href="{$BACKEND}managenewsletter.php?action=edit&id={$emails.subscriberId}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
                <a href="{$BACKEND}managenewsletter.php?action=delete&id={$emails.subscriberId}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
        </td>
    </tr>
    {foreachelse}
    <tr>
        <td align="left" valign="middle" colspan="6">No records to display.</td>
    </tr>	
    {/foreach}
</table>
</form>
