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
                        <li><a href="?type={$smarty.get.type}&action={$smarty.get.action}&page={$smarty.get.page-1}"><</a></li>
                    {/if}
                    {for $page=$smarty.get.page to $pages max = 5}
                        <li><a href="?type={$smarty.get.type}&action={$smarty.get.action}&page={$page}">{$page}</a></li>
                    {/for}
                    {if $smarty.get.page != '' && $smarty.get.page < $pages}
                        <li><a href="?type={$smarty.get.type}&action={$smarty.get.action}&page={$smarty.get.page+1}">></a></li>
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
		<td>First Name</td>
		<td>Last Name</td>
		<td>Email</td>
		<td>User Type</td>
		<td>Gender</td>
		<td>Postcode</td>		
		<td>Created At</td>		
		<td>Updated At</td>		
		<td>Last login</td>
		<td>Status</td>
		<td></td>
	</tr>
	{foreach from=$users item=user}	
	<tr>
		<td width="30" class="center" valign="top"><input type="checkbox" name="usrtype" value="{$user.userId}"></td>
		<td width="150" align="justify" valign="top">{$user.firstname}</td>		
		<td width="150" align="justify" valign="top">{$user.lastname}</td>
		<td width="150" align="justify" valign="top">{$user.email}</td>
		<td width="150" align="justify" valign="top">{$user.role}</td>
		<td width="150" align="justify" valign="top">{if $user.gender == 'm'} Male {else} Female {/if}</td>
		<td width="150" align="justify" valign="top">{$user.postcode}</td>
		<td width="100"align="justify" valign="top">{$user.created_date}</td>
		<td width="100" valign="top">{$user.updated_date}</td>
		<td width="150" align="justify" valign="top">{$user.last_login_date}</td>
		<td width="150" align="justify" valign="top">{if $user.status == 1}Active{else}Inactive{/if}</td>
				
		<td width="100">
			<a href="{$BACKEND}manageuser.php?action=edituser&id={$user.userId}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
			<a href="{$BACKEND}manageuser.php?action=deleteuser&id={$user.userId}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
		</td>
		
		
		
	</tr>
	{foreachelse}
  	<tr><td align="left" valign="middle" colspan="7">No records to display.</td></tr>	
	{/foreach}
</table>
</form>
