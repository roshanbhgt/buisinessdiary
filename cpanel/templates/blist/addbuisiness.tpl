{If ( $variables.success != '' )}
<div class="success">{$variables.success}</div>
{ElseIf ( $variables.addcaterror != '' )}
<div class="error">{$variables.addcaterror}</div>
{/If} 
{If $add == "parentcat"}
<form name="addparentcat" method="post" id="addparentcatform" enctype="multipart/form-data">
	<fieldset>
		<legend>Add parent category</legend>
		<table class="left" width="75%">
			<tr>
				<td align="left" valign="middle" width="200"><label>Title</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox" type="text"
					name="title" value="{$smarty.post.title}"></td>
			</tr>
			<tr>
				<td align="left" valign="top"><label>Description</label></td>
				<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description">{$smarty.post.description}</textarea></td>
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
						<option value="active" {If $smarty.post.status == "active"} select="select" {/If}>Active</option>
						<option value="inactive" {If $smarty.post.status == "inactive"} select="select" {/If}>Inactive</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><button name="addparentcat" value="addparentcat">Submit</button></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><small>All * mark fields are required.</small></td>
			</tr>
		</table>
	</fieldset>
</form>
{ElseIf $add == "subcat"}
<form name="addsubcat" method="post" id="addsubcatform" enctype="multipart/form-data">
	<fieldset>
		<legend>Add subcategory</legend>
		<table class="left" width="75%">
			<tr>
				<td align="left" valign="middle" width="200"><label>Title</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox" type="text"
					name="title" value="{$smarty.post.title}"></td>
			</tr>
			<tr>
				<td align="left" valign="middle" width="200"><label>Parent category</label><span
					class="required">*</span></td>
				<td align="left" valign="middle">
					<select name="parentcat" class="iselect-small">
						<option value="" >--- Select from options ---</option>
						{foreach from=$parentCat item=cat}						
						<option value="{$cat.cat_id}" {If $smarty.post.parentcat == "inactive"} select="select" {/If}>{$cat.title}</option>
						{/foreach}
					</select>
				</td>
			</tr>
			<tr>
				<td align="left" valign="top"><label>Description</label></td>
				<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description">{$smarty.post.description}</textarea></td>
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
						<option value="active" {If $smarty.post.status == "active"} select="select" {/If}>Active</option>
						<option value="inactive" {If $smarty.post.status == "inactive"} select="select" {/If}>Inactive</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><button name="addsubcat" value="addsubcat">Submit</button></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><small>All * mark fields are required.</small></td>
			</tr>
		</table>
	</fieldset>
</form> 
{/If}
