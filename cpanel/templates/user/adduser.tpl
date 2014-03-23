{If ( $variables.success != '' )}
    <div class="success">{$variables.success}</div>
{ElseIf ( $variables.error != '' )}
    <div class="error">{$variables.error}</div>
{/If}
<form name="adduser" method="post" id="adduserform" >
    <fieldset>
  	<legend>Add new user</legend>
        <table class="left" width="50%">                
		<tr>
			<td align="left" valign="middle" width="200"><label>First name</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="firstname" value="{$smarty.post.firstname}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Last name</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="lastname" value="{$smarty.post.lastname}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Email</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="email" value="{$smarty.post.email}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Gender</label><span class="required">*</span></td>
			<td align="left" valign="middle">
				<ul style="list-style-type:none;">
					<li style="float:left;padding:0 5px"><input type="radio" name="gender" value="m" style="width:20px" {if $smarty.post.gender == 'm'} checked="checked" {/if} />Male</li>
					<li style="float:left;padding:0 5px"><input type="radio" name="gender" value="f" style="width:20px" {if $smarty.post.gender == 'f'} checked="checked" {/if} />Female</li>
				</ul>
			</td>	
		</tr>
        <tr>
			<td align="left" valign="middle"><label>City</label><span class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="city" class="iselect-small">
					<option value="" >Please select from options</option>
					{foreach from=$city item=val}
					<option value="{$val.regionId}" {If $smarty.post.city == $val.regionId} selected="selected" {/If}>{$val.region}</option>
					{/foreach}
				</select>
			</td>
		</tr>
		<tr>
			<td align="left" valign="middle"><label>State</label><span
				class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="state" class="iselect-small" onchange="city($this)">
					<option value="" >Please select from options</option>
					{foreach from=$state item=val}
					<option value="{$val.stateId}" {If $smarty.post.state == $val.stateId} selected="selected" {/If}>{$val.title}</option>
					{/foreach}
				</select>
			</td>
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Country</label><span
				class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="country" class="iselect-small" onchange="statecity($this)">
					<option value="" >Please select from options</option>
					{foreach from=$country item=val}
					<option value="{$val.countryId}" {If $smarty.post.country == $val.countryId} selected="selected" {/If}>{$val.title}</option>
					{/foreach}
				</select>
			</td>
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Postcode</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="postcode" value="{$smarty.post.postcode}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Password</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="password" name="password" value="{$smarty.post.password}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Confirm Password</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="password" name="confpassword" value=""></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Status</label><span class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="status" class="iselect-small">
					<option value=""> Please select from options </option>
					<option value="1" {if $smarty.post.status == 1} selected="selected" {/if} >Active</option>
					<option value="0" {if $smarty.post.status == 0} selected="selected" {/if} >Inactive</option>
				</select>
			</td>
		</tr>
        <tr>
                <td colspan="2" align="right"><button name="adduser" value="adduser">Submit</button></td>	
        </tr>
        <tr>
                <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
        </tr>
        </table>
    </fieldset>
</form>