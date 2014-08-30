<div class="content" style="position:relative;width: 220px; float: left;">
    <h2>My Dashboard</h2>
    <ul>
        <li><a href="{$FRONTEND}/myaccount">My Account</a></li>
        <li><a href="{$FRONTEND}/account-info">My Information</a></li>
        <li><a href="{$FRONTEND}/mylocaton">My Address</a></li>
        <li><a href="{$FRONTEND}/myfavourite">My Favourite</a></li>
        <li><a href="{$FRONTEND}/mywishlist">My Wishlist</a></li>
        <li><a href="{$FRONTEND}/myreview">My Reviews</a></li>
    </ul>
</div>
<div class="content" style="position:relative;width: 220px; float: left;">
    <h2>Recently Viewed</h2>
    <ul>
        {foreach from=$recentlyview item=val key=i}
        <li>
            <div style="text-align:center;position: relative;float: left;width:100%;">
                {if $business.logo != ''}
                    <img src="{$BUSINESSIMAGE}/thumb/{$val.logo}" alt="{$val.title}" />
                {else}
                    <img src="{$BUSINESSIMAGE}/thumb/companies_large.jpg" alt="{$val.title}" />
                {/if}
                <a href="{$FRONTEND}/list/{$val.list_id}"><h3 style="font-weight: bold;text-align: center">{$val.title}</h3></a>
                <div style="width:100%;float:left;"><a href="{$FRONTEND}/favourite/action/mark/id/{$val.list_id}">Mark as favourite</a> | <a href="{$FRONTEND}/wishlist/action/add/id/{$val.list_id}">Add to wishlist</a></div>
            </div>
        </li>
        {/foreach}
    </ul>
</div>
<div class="content" style="position:relative;width: 220px; float: left;">
    <h2>Recently View Places</h2>
    <ul>
        <li>Place 1</li>
        <li>Place 2</li>
        <li>Place 3</li>
    </ul>
</div>