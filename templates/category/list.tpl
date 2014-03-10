<div class="std">
	<div class="page-title"><h1>{$cat.title}</h1></div>
	<p>{$cat.description}</p>
</div>
<div class="subcat">&nbsp;</div>
<div class="blist">
    <table width="100%" border="0">
        <tr>
            <td style="border: 1px solid #71a7cc">
                <a href="#"><h3 style="font-weight: bold;width: 99%;color:#FFFFF0;background-color: #007ED1; padding: 5px 5px 5px 3px;">The Pride Hotel</h3></a>
                <div class="left" style="position: relative; float: left; width: 62%;padding: 5px 5px 0;">
                    <img src="http://localhost/buisinessdiary/design/images/pride-logo.jpg" width="85" height="85" style="float: left;"/>
                    <address style="float: left; width: 77%;padding: 5px;">
                        Plot No 5,<br>
                        Indira Nagar, Behind T B Ward Hospital,<br>
                        Nagpur - 440003
                        <div style="background: url('http://localhost/buisinessdiary/design/images/rating.png') no-repeat;height: 24px;">&nbsp;</div>
                    </address>
                    <div style="float: left; width: 100%;padding: 5px;">Restaurants with bar, beautiful landscape swimming tool...<a href="#">more</a></div>
                </div>
                <div class="right" style="position: relative; float: left; width: 34.4%; padding: 5px">
                    <ul>
                        <li style="background: url('http://localhost/buisinessdiary/design/images/telephone.png') no-repeat;height: 24px;padding: 4px 30px 0"> 0712 - 2742728</li>
                        <li style="background: url('http://localhost/buisinessdiary/design/images/email.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a href="#">help@thepridehotels.com</a></li>
                        <li style="background: url('http://localhost/buisinessdiary/design/images/globe.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a href="#">www.thepridehotels.com</a></li>
                        <li style="background: url('http://localhost/buisinessdiary/design/images/maps.png') no-repeat;height: 24px;padding: 4px 30px 0"> <a class="fancybox" href="http://localhost/buisinessdiary/favicon.ico">View in map </a></li>
                    </ul>
                </div>
            </td>
        </tr>
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
