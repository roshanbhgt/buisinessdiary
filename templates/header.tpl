<div class="logo">
			<a href="{$FRONTEND}">
				<img alt="Buisiness Diary" src="http://localhost/buisinessdiary/design/images/logo.png" height="85" width="250"/>
			</a>
		</div>
        <div class="top-links">        
        	<ul>
        		<li><b style="color:#000">Welcome</b> Guest</li><li>|</li>
        		<li><a href="#">Login</a> or <a href="#">Register</a></li><li>|</li>        		
        		<li><a href="#">My Account</a></li><li>|</li>
        		<li><a href="#">My Places</a></li>
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
        	<form method="post" action="">
        		<input class="searchinput" type="text" name="postcode" value="Enter your postcode or state or city" onfocus="if(this.value=='Enter your postcode or state or city')this.value='';" onblur="if(this.value=='')this.value='Enter your postcode or state or city';" />
        		<input class="searchinput" type="text" name="keyword" value="Enter keyword looking for" onfocus="if(this.value=='Enter keyword looking for')this.value='';" onblur="if(this.value=='')this.value='Enter keyword looking for';"/>
                <button class="searchbtn button-red" type="submit" name="submit">Go</button>
            </form>
        </div>
    </div>
    <div class="nav">
    	<ul>
			<li id="menu1" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="{$FRONTEND}">Home</a>
            </li>
            <li id="menu1" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="{$FRONTEND}/page.php?identifier=about-us">About Us</a>
            </li>
            <li id="menu2" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Categories</a>            	
                <ul style="display:none;">
	                {foreach from=$catall item=cat key=i}
					<li><a href="#"><span>{$cat.title}</span></a></li>
					{/foreach}                	
	            </ul>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Services</a>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Suggest buisiness</a>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Faq</a>
            </li>
            <li id="menu3" onmouseover="expand(this,'over')" onmouseout="collapse(this,'over')">
            	<a href="#">Feedback</a>
            </li>
		</ul>