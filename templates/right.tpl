<div class="ads-promotion content">
		<h2>Hurry, Promote your buisiness</h2>
		<p>Get more buisiness online by promoting and advertising with us.
		</br></br>For quick quote <a href="http://localhost/buisinessdiary/quikquote">clik here</a> or call <b style="color:#990134;">+91 844 657 6606</b>.</p>
	</div>
	<div class="quik-add-listing content">
		<h2>Quick listing</h2>
		<p>Quikly show your buisiness online. Fill the form below give us some information regarding your buisiness.</p>
		<form id="quiklistform" action="" method="post" >
    		<table>
                <tr>
                    <td align="left" colspan="2"><div id="message" style="dispaly:none;"></div></td>
                </tr>
                <tr>
                    <td align="left" valign="top" width="135px">Category<em>*</em></td>
                    <td>
                        <select name="category" class="select-large">
                            <option value="">--- Select from options ---</option>
                            {foreach from=$catall item=cat key=i}
                                <option value="{$cat.cat_id}">{$cat.title}</option>
                            {/foreach}
                        </select>
                    </td>
                </tr>
	    		<tr><td align="left" valign="top" width="135px">Company<em>*</em></td><td><input type="text" name="company" value=""/></td></tr>
                <tr><td align="left" valign="top" width="135px">Email<em>*</em></td><td><input type="text" name="email" value=""/></td></tr>
	    		<tr><td align="left" valign="top">Description<em>*</em></td><td><textarea name="description"> </textarea></td></tr>
	    		<tr><td align="left" valign="top">Address<em>*</em></td><td><textarea name="address"> </textarea></td></tr>
	    		<tr>
	    			<td align="left" valign="top">City<em>*</em></td>
	    			<td>
	    				<select name="city" class="select-large">
							<option value="">--- Select from options ---</option>
							{foreach from=$city item=val}
							<option value="{$val.regionId}" {If $smarty.post.city == $val.regionId} selected="selected" {/If}>{$val.region}</option>
							{/foreach}
						</select>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td align="left" valign="top">State<em>*</em></td>
	    			<td>
	    				<select name="state" class="select-large" onchange="city($this)">
							<option value="">--- Select from options ---</option>
							{foreach from=$state item=val}
							<option value="{$val.stateId}" {If $smarty.post.state == $val.stateId} selected="selected" {/If}>{$val.title}</option>
							{/foreach}
						</select>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td align="left" valign="top">Country<em>*</em></td>
	    			<td>
	    				<select name="country" class="select-large" onchange="statecity($this)">
							<option value="">--- Select from options ---</option>
							{foreach from=$country item=val}
							<option value="{$val.countryId}" {If $smarty.post.country == $val.countryId} selected="selected" {/If}>{$val.title}</option>
							{/foreach}
						</select>
	    			</td>
	    		</tr>
	    		<tr><td align="left" valign="top">Postcode<em>*</em></td><td><input type="text" name="postcode" value=""/></td></tr>
	    		<tr><td align="left" valign="top">Telephone<em>*</em></td><td><input type="text" name="telephone" value=""/></td></tr>
	    		<tr><td align="left" valign="top">Fax</td><td><input type="text" name="fax" value=""/></td></tr>
                <tr><td align="left" valign="top">Website</td><td><input type="text" name="website" value=""/></td></tr>
	    		<tr><td align="right" valign="top" colspan="2"><em>*</em> mark fields are required.&nbsp;<button class="button-blue" id="quiklistsubmit" onclick="submitquiklist()"><span>Submit</span></button></td></tr>
    		</table>		    		 
		</form>
	</div>
	<div class="newsletter content">
		<h2>Newsletter Signup</h2>	    		
		<p>Sign up for newsletter to get information about latest news and offer.</p>
		<div id="success" style="display:none"></div>
		<form id="newsletterform" action="" method="post">
			<table>	    				
				<tr><td align="left" valign="top" width="135px">Name<em>*</em></td><td><input type="text" name="name" value="Enter first name" onfocus="if(this.value=='Enter first name')this.value='';" onblur="if(this.value=='')this.value='Enter first name';" /></td></tr>
				<tr><td align="left" valign="top">Email<em>*</em></td><td><input type="text" name="email" value="Enter your email" onfocus="if(this.value=='Enter your email')this.value='';" onblur="if(this.value=='')this.value='Enter your email';" /></td></tr>
				<tr><td align="right" valign="top" colspan="2"><em>*</em> mark fields are required.&nbsp;<button class="button-blue" name="submit" type="submit" id="newsletter" onclick="submitnewsletter()"><span>Submit</span></button></td></tr>
			</table>
		</form> 
	</div>
	<div class="facebook-like-box content">
		<h2>Find us on Facebook</h2>
		<div id="fb-root"></div>
		{literal}
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=106386496121584";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>
		{/literal}
		<div class="fb-like-box" data-href="https://www.facebook.com/businessdiaryin" data-width="295" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="false" data-show-border="flase"></div>
	</div>	