{if $variables.success != ''}
<div class="success">{$variables.success}</div>
{else}
<div class="error">{$variables.error}</div>
{/if}

<div class="std">
    <div class="page-title"><h1>My Reviews</h1></div>
    <p>List of the reviews posted by mine</p>
    <p>&nbsp;</p>
    <table width="100%" class="reviews">
    	<tr>
    		<th>Sr. No.</th>
    		<th>Business Title</th>
    		<th>Rating</th>
    		<th>Review</th>
    		<th>Posted On</th>
            <th>Status</th>
    		<th>Action</th>
    	</tr>
    	{foreach from=$reviews item=rev key=i}
    	<tr>
    		<td>{$i+1}</td>
    		<td>{$rev.title}</td>
    		<td>{$rev.rating}</td>
    		<td>{$rev.reviews}</td>
            <td>{$rev.created_date}</td>
    		<td>{if $rev.status == 0}Pending Approval{else}Approved{/if}</td>
    		<td><a href="{$FRONTEND}/review/remove/{$rev.review_id}"><img src="{$FRONTEND}/design/images/delete.png" alt="remove" title="Remove" /></a></td>
    	</tr>
    	{foreachelse}
    	<tr><td colspan="7"></td></tr>
    	{/foreach}
    </table>
</div>