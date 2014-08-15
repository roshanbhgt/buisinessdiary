{if $variables.success != ''}
    <div class="success">{$variables.success}</div>
{elseif $variables.error != ''}
    <div class="error">{$variables.error}</div>
{/if}

<div class="std">
    <div class="page-title"><h1>My Wishlist</h1></div>
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
        {foreach from=$wishlists item=wishlist key=i}
            <tr>
                <td>{$i+1}</td>
                <td>{$wishlist.title}</td>
                <td>{$wishlist.description}</td>
                <td>{$wishlist.added_date}</td>
                <td>{if $wishlist.status == 1}Active{else}Inactive{/if}</td>
                <td><a href="{$FRONTEND}/wishlist/action/remove/id/{$wishlist.id}"><img src="{$FRONTEND}/design/images/delete.png" alt="remove" title="Remove" /></a></td>
            </tr>
            {foreachelse}
            <tr><td colspan="6"></td></tr>
        {/foreach}
    </table>
</div>

