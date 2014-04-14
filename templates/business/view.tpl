<div class="std">
	<div class="page-title"><h1>{$business.title}</h1></div>
</div>
<div class="blist">
    <table width="100%" border="0">
        <tr>
            <td>
                <div class="left" style="position: relative; float: left; width: 62%;padding: 5px 5px 0;">
                    <img src="{$FRONTEND}/design/images/pride-logo.jpg" width="150" height="150" style="float: left;"/>
                    <address style="float: left; width: 60%;padding: 5px;">
                        {$business.address1},<br>
                        {$business.address2},<br>
                        {$business.region}, {$business.stte}, {$business.cntry} - {$business.postcode}                        
                    </address>
                    {if $reviews|count != 0 }
                    	<div style="background: url('{$FRONTEND}/design/images/rating.png') no-repeat;height: 24px;position: relative;float: left;width:{$rating}px">&nbsp;</div><div id="reviewsbox"><a href="javascript:void()" onclick="tabclick(2)">{$reviews|count} reviews</a></div>
                    {else}
                    	<div id="reviewsbox"><a href="javascript:void()" onclick="tabclick(2)">Wright an review</a></div>
                    {/if}
                </div>
                <div class="right" style="position: relative; float: left; width: 34.4%; padding: 5px">
                    <ul>
                        <li style="background: url('{$FRONTEND}/design/images/telephone.png') no-repeat;height: 24px;padding: 4px 30px 0"> {$business.phone}</li>
                        <li style="background: url('{$FRONTEND}/design/images/email.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a href="#"> {$business.email}</a></li>
                        <li style="background: url('{$FRONTEND}/design/images/globe.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a href="{$business.website}"> {$business.website}</a></li>
                        <li style="background: url('{$FRONTEND}/design/images/maps.png') no-repeat;height: 24px;padding: 4px 30px 0">
                        	<a class="map" href="javascript:void(0);" onclick="tabclick(5)">View in map</a>
                        </li>
                    </ul>
                </div>
            </td>
        </tr>
    </table>
</div>
<div class="tabs">
	<ul>
		<li id="click1" onclick="tabclick(1)">Description</li>
		<li id="click2" onclick="tabclick(2)">Reviews</li>
		<li id="click3" onclick="tabclick(3)">Photo's</li>
		<li id="click4" onclick="tabclick(4)">Location</li>
		<li id="click5" onclick="tabclick(5)">Map</li>
	</ul>
	<div id="tab1" class="content">{$business.description}</div>
	<div id="tab2" class="content">
		{if $session.userid == ''}
			<p>Please login to post your reviews. <a href="{$FRONTEND}/login-register">Click here</a> to Login or Register.</p>
		{else}
			{include file='business/reviews.tpl'}
		{/if}
		{include file='business/reviewlist.tpl'}
	</div>
	<div id="tab3" class="content">There are no photo's to be dispalyed here.</div>
	<div id="tab4" class="content">This business has no location.</div>
	<div id="tab4" class="content">This business has no location.</div>
	<div id="tab5" class="content">
	    <iframe width="500" height="300"  frameborder="0" style="border:0;margin: 10px 90px;"
		  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDa1_uWjcZhdUI6ZX4bpZO4v7idVIBv3Dk
		    &q=Space+Needle,Seattle+WA">
		</iframe>
	</div>
</div>
{literal}
    <script type="text/javascript">
        $(document).ready(function() {        	
            $('#tab1').css('display', 'block');
            $('#click1').css('background', '#024EBC');            
        });

		function tabclick(id){
			for (var i=1;i<=5;i++) {
				if (i == id) {
					$('#tab'+id).css('display', 'block');
		            $('#click'+id).css('background', '#024EBC');
				} else {
					$('#tab'+i).css('display', 'none');
		            $('#click'+i).css('background', '#4B83D0');
				}						
			}
		}        
    </script>
{/literal}




