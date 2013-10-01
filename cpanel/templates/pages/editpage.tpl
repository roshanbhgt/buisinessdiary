{If ( $variables.success != '' )}
<div class="success">{$variables.success}</div>
{ElseIf ( $variables.updatepageerror != '' )}
<div class="error">{$variables.updatepageerror}</div>
{/If}
<form name="updatepage" method="post" id="updatepageform" >
<fieldset>
  	<legend>Edit page</legend>
	<input type="hidden" name="id" value="{$page.pageId}" />
	<table class="left" width="75%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>Title</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="title" value="{$page.title}"></td>	
		</tr>
		<tr>
			<td align="left" valign="top"><label>Description</label></td>
			<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description">{$page.description}</textarea></td>	
		</tr>		
		<tr>
			<td align="left" valign="middle"><label>Status</label><span
				class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="status" class="iselect-small">
					<option value="active" {If $page.status == "active"} selected="selected" {/If}>Active</option>
					<option value="inactive" {If $page.status == "inactive"} selected="selected" {/If}>Inactive</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><button name="updatepage" value="updatepage">Submit</button></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
		</tr>
	</table>
</fieldset>
</form>