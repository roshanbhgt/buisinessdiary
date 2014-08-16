{if $variables.success != ''}
<div class="success">{$variables.success}</div>
{elseif $variables.error != ''}
<div class="error">{$variables.error}</div>
{/if}

<div class="std">
    <div class="page-title"><h1>My Favourite</h1></div>
    <p>&nbsp;</p>
    <table width="100%" class="reviews">
    	<tr>
    		<th>Sr. No.</th>
    		<th>Business Title</th>
    		<th>Description</th>
    		<th>Added Date</th>
            <th>Status</th>
    		<th>Action</th>
    	</tr>
    	{foreach from=$favourites item=favourite key=i}
    	<tr>
    		<td>{$i+1}</td>
    		<td>{$favourite.title}</td>
    		<td>{$favourite.description}</td>
            <td>{$favourite.added_date}</td>
    		<td>{if $favourite.status == 1}Active{else}Inactive{/if}</td>
    		<td><a href="{$FRONTEND}/favourite/action/unmark/id/{$favourite.id}"><img src="{$FRONTEND}/design/images/delete.png" alt="remove" title="Remove" /></a></td>
    	</tr>
    	{foreachelse}
    	<tr><td colspan="6"></td></tr>
    	{/foreach}
    </table>
</div>