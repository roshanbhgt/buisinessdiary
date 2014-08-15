<div class="std">
	<div class="page-title"><h1>{$cat.title}</h1></div>
	<p>{$cat.description}</p>
</div>
<div class="subcat">&nbsp;</div>
<div class="blist">
    <table width="100%" border="0">
		{foreach from=$businesslist item=list key=i}
        <tr>
            <td style="border: 1px solid #71a7cc">
                <a href="{$FRONTEND}/list/{$list.list_id}"><h3 style="font-weight: bold;width: 99%;color:#FFFFF0;background-color: #007ED1; padding: 5px 5px 5px 3px;">{$list.title}</h3></a>
                <div class="left" style="position: relative; float: left; width: 62%;padding: 5px 5px 0;">
                    {if $list.logo != ''}
						<img src="{$BUSINESSIMAGE}/thumb/{$list.logo}" alt="{$list.title}" style="float: left;"/>
					{else}
						<img src="{$BUSINESSIMAGE}/thumb/companies_large.jpg" alt="{$list.title}" style="float: left;"/>
					{/if}
                    <address style="float: left; width: 73%;padding: 5px;">
                        {$list.address1},<br>
                        {$list.address2},<br>
                        {$list.region}, {$list.stte}, {$list.cntry} - {$list.postcode}
                        <div style="background: url('{$FRONTEND}/design/images/rating.png') no-repeat;height: 24px;">&nbsp;</div>
                        <div><a href="{$FRONTEND}/favourite/action/mark/id/{$list.list_id}">Mark as favourite</a> | <a href="{$FRONTEND}/wishlist/action/add/id/{$list.list_id}">Add to wishlist</a></div>
                    </address>
                    <div style="float: left; width: 100%;padding: 5px;">{$list.description}<a href="{$FRONTEND}/list/{$list.list_id}">more</a></div>
                </div>
                <div class="right" style="position: relative; float: left; width: 34.4%; padding: 5px">
                    <ul>
                        <li style="background: url('{$FRONTEND}/design/images/telephone.png') no-repeat;height: 24px;padding: 4px 30px 0"> {$list.phone}</li>
                        <li style="background: url('{$FRONTEND}/design/images/email.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a href="#"> {$list.email}</a></li>
                        <li style="background: url('{$FRONTEND}/design/images/globe.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a href="{$list.website}"> {$list.website}</a></li>
                        <li style="background: url('{$FRONTEND}/design/images/maps.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a class="fancybox" href="http://localhost/buisinessdiary/favicon.ico">View in map </a></li>
                    </ul>
                </div>
            </td>
        </tr>
		{/foreach}
    </table>
</div>

{literal}
    <script type="text/javascript">
        $(document).ready(function() {
            $(".fancybox").fancybox({
                transitionIn    : 'elastic',
                transitionOut   : 'elastic',
                easingIn        : 'easeInSine',
                easingOut       : 'easeOutSine',
                speedIn         : 400,
                speedOut        : 200,
                titlePosition   : 'inside',
                titleFormat     : 'document.write("Map");',
                cyclic          : true,
                type            : "iframe",
                width           : 640, // or whatever
                height          : 320
            });
        });
    </script>
{/literal}
