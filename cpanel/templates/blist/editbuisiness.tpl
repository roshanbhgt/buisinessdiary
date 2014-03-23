{If ( $variables.success != '' )}
<div class="success">{$variables.success}</div>
{ElseIf ( $variables.error != '' )}
<div class="error">{$variables.error}</div>
{/If}
<form name="updatebusiness" method="post" id="updatebusiness" enctype="multipart/form-data">
<fieldset>
  	<legend>Edit {$business.title}</legend>
	<input type="hidden" name="id" value="{$business.list_id}" />
	<table class="left" width="100%">
		<tr>
			<td align="left" valign="middle" width="200"><label>Category</label><span class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="cat" class="iselect-small">
					<option value="" >Please select from options</option>
					{foreach from=$category item=val}
					<option value="{$val.cat_id}" {If $business.cat_id == $val.cat_id} selected="selected" {/If}>{$val.title}</option>
					{/foreach}
				</select>
			</td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Owner</label></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="owner_name" value="{$business.owner_name}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Title</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="title" value="{$business.title}"></td>	
		</tr>
		<tr>
			<td align="left" valign="top"><label>Description</label></td>
			<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description">{$business.description}</textarea></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Logo</label></td>
			<td align="left" valign="middle"><input class="inputbox" type="file"
				name="logo" value="{$smarty.post.logo}"></td>
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Address1</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="address1" value="{$business.address1}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Address2</label></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="address2" value="{$business.address2}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>City</label><span class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="city" class="iselect-small">
					<option value="" >Please select from options</option>
					{foreach from=$city item=val}
					<option value="{$val.regionId}" {If $business.city == $val.regionId} selected="selected" {/If}>{$val.region}</option>
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
					<option value="{$val.stateId}" {If $business.state == $val.stateId} selected="selected" {/If}>{$val.title}</option>
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
					<option value="{$val.countryId}" {If $business.country == $val.countryId} selected="selected" {/If}>{$val.title}</option>
					{/foreach}
				</select>
			</td>
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Postcode</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="postcode" value="{$business.postcode}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Phone</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="phone" value="{$business.phone}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Mobile</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="mobile" value="{$business.mobile}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Fax</label></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="fax" value="{$business.fax}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle" width="200"><label>Website</label></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="website" value="{$business.website}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Status</label><span
				class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="status" class="iselect-small">
					<option value="1" {If $buisiness.status == "1"} selected="selected" {/If}>Active</option>
					<option value="0" {If $buisiness.status == "0"} selected="selected" {/If}>Inactive</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><button name="updatebusiness" value="updatebusiness">Submit</button></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
		</tr>
	</table>
</fieldset>
</form>
