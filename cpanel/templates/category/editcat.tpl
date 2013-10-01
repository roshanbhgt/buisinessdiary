{If ( $variables.success != '' )}
<div class="success">{$variables.success}</div>
{ElseIf ( $variables.updatecaterror != '' )}
<div class="error">{$variables.updatecaterror}</div>
{/If}
{If $edit == "editparentcat"}
<form name="updatecat" method="post" id="updatecatform" >
<fieldset>
  	<legend>Edit parent category</legend>
	<input type="hidden" name="id" value="{$category.cat_id}" />
	<table class="left" width="75%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>Title</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="title" value="{$category.title}"></td>	
		</tr>
		<tr>
			<td align="left" valign="top"><label>Description</label></td>
			<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description">{$category.description}</textarea></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Banner</label></td>
			<td align="left" valign="middle"><input class="inputbox" type="file"
				name="banner" value="{$smarty.post.banner}"></td>
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Status</label><span
				class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="status" class="iselect-small">
					<option value="active" {If $category.status == "active"} selected="selected" {/If}>Active</option>
					<option value="inactive" {If $category.status == "inactive"} selected="selected" {/If}>Inactive</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><button name="updateparentcat" value="updateparentcat">Submit</button></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
		</tr>
	</table>
</fieldset>
</form>
{ElseIf $edit == "editsubcat"}
<form name="updatecat" method="post" id="updatecatform" >
<fieldset>
  	<legend>Edit subcategory</legend>
	<input type="hidden" name="id" value="{$category.cat_id}" />
	<table class="left" width="75%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>Title</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="title" value="{$category.title}"></td>	
		</tr>
		<tr>
			<td align="left" valign="top"><label>Description</label></td>
			<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description">{$category.description}</textarea></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Banner</label></td>
			<td align="left" valign="middle"><input class="inputbox" type="file"
				name="banner" value="{$smarty.post.banner}"></td>
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Status</label><span
				class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="status" class="iselect-small">
					<option value="active" {If $category.status == "active"} select="select" {/If}>Active</option>
					<option value="inactive" {If $category.status == "inactive"} select="select" {/If}>Inactive</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><button name="updatesubcat" value="updatesubcat">Submit</button></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
		</tr>
	</table>
</fieldset>
</form>
{/If}