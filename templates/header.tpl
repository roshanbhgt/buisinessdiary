        <div class="logo">
			<a href="{$FRONTEND}">
				<img alt="Buisiness Diary" src="http://localhost/buisinessdiary/design/images/logo.png" height="85" width="250"/>
			</a>
		</div>
        <div class="top-links">        
        	<ul>
        		<li>Welcome {if $session.userid == ''}Guest{else}{$session.firstname}{/if}</li><li>|</li>        		        		
        		<li><a href="{$FRONTEND}/myaccount">My Account</a></li><li>|</li>
        		<li><a href="{$FRONTEND}/myplaces">My Places</a></li><li>|</li>
        		<li>{if $session.userid == ''}<a href="{$FRONTEND}/login-register">Login</a>{else}<a href="{$FRONTEND}/logout">Logout</a>{/if}</li>
        	</ul>
        </div>
        <div class="lang-whether">
        	<div id="wxWrap">
			    <span id="wxIntro">
			        Nagpur, Maharashtra, India 
			    </span>
			    <span id="wxIcon2"></span>
			    <span id="wxTemp"></span>
			</div>        	
        </div>
        <div class="searchbox">
        	<form method="post" action="{$FRONTEND}/search">
        		<input class="searchinput" type="text" name="p" value="{if $smarty.post.p == ''}Enter your postcode or state or city{else}{$smarty.post.p}{/if}" onfocus="if(this.value=='Enter your postcode or state or city')this.value='';" onblur="if(this.value=='')this.value='Enter your postcode or state or city';" />
        		<input class="searchinput" type="text" name="q" value="{if $smarty.post.q == ''}Enter keyword looking for{else}{$smarty.post.q}{/if}" onfocus="if(this.value=='Enter keyword looking for')this.value='';" onblur="if(this.value=='')this.value='Enter keyword looking for';"/>
                <button class="searchbtn button-red" type="submit">Go</button>
            </form>
        </div>
    </div>
    <div class="nav">
    	<ul>
			<li id="menu1" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="{$FRONTEND}">Home</a>
            </li>
            <li id="menu1" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="{$FRONTEND}/page/about-us">About Us</a>
            </li>
            <li id="menu2" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Categories</a>            	
                <ul style="display:none;">
	                {foreach from=$catall item=cat key=i}
					<li><a href="{$FRONTEND}/category/{$cat.identifier}"><span>{$cat.title}</span></a></li>
					{/foreach}                	
	            </ul>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="{$FRONTEND}/page/services">Services</a>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="{$FRONTEND}/suggestbusiness">Suggest buisiness</a>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="{$FRONTEND}/page/faq">Faq</a>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="{$FRONTEND}/feedback">Feedback</a>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="{$FRONTEND}/contactus">Contact Us</a>
            </li>
		</ul>
        <!-- AddThis Button BEGIN -->
        <div class="addthis-css addthis_toolbox addthis_default_style addthis_32x32_style" >
            <a class="addthis_button_preferred_1"></a>
            <a class="addthis_button_preferred_2"></a>
            <a class="addthis_button_preferred_3"></a>
            <a class="addthis_button_compact"></a>
            <a class="addthis_counter addthis_bubble_style"></a>
        </div>
        {literal}
        <script type="text/javascript">
	        var addthis_config = addthis_config||{};
	        addthis_config.data_track_addressbar = false;
	        addthis_config.data_track_clickback = false;
        </script>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52ec9ce86d2ea839"></script>
        {/literal}
        <!-- AddThis Button END -->
