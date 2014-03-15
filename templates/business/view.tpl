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
                        <div style="background: url('{$FRONTEND}/design/images/rating.png') no-repeat;height: 24px;">&nbsp;</div>
                    </address>
                </div>
                <div class="right" style="position: relative; float: left; width: 34.4%; padding: 5px">
                    <ul>
                        <li style="background: url('{$FRONTEND}/design/images/telephone.png') no-repeat;height: 24px;padding: 4px 30px 0"> {$business.phone}</li>
                        <li style="background: url('{$FRONTEND}/design/images/email.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a href="#"> {$business.email}</a></li>
                        <li style="background: url('{$FRONTEND}/design/images/globe.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a href="{$business.website}"> {$business.website}</a></li>
                        <li style="background: url('{$FRONTEND}/design/images/maps.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a class="fancybox" href="{$FRONTEND}/favicon.ico">View in map </a></li>
                    </ul>
                </div>
            </td>
        </tr>
    </table>
</div>
<div style="float: left; width: 100%;padding: 5px;">{$business.description}</div>

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
