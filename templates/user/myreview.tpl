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
    		<th>Status</th>
    		<th>Created At</th>
    		<th></th>
    	</tr>
    	{foreach from=$reviews item=rev key=i}
    	<tr>
    		<td>{$i+1}</td>
    		<td>{$rev.title}</td>
    		<td>{$rev.rating}</td>
    		<td>{$rev.reviews}</td>
    		<td>{if $rev.status == 0}Inactive{else}Active{/if}</td>
    		<td>{$rev.created_date}</td>
    		<td></td>
    	</tr>
    	{foreachelse}
    	<tr><td colspan="7"></td></tr>
    	{/foreach}
    </table>
</div>