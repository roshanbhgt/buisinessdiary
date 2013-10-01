{If ( $variables.success != '' )}
    <div class="success">{$variables.success}</div>
{ElseIf ( $variables.adduserError != '' )}
    <div class="error">{$variables.adduserError}</div>
{/If}
<form name="adduser" method="post" id="adduserform" >
    <fieldset>
  	<legend>Add gallery</legend>
        <table class="left" width="50%">                
        <tr>
                <td align="left" valign="middle" width="200"><label>Title</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox" type="text"
					name="title" value="{$smarty.post.title}"></td>	
        </tr>
        <tr>
            <tr>
				<td align="left" valign="top"><label>Description</label></td>
				<td align="left" valign="middle"><textarea class="inputtextarea" 
					name="description">{$smarty.post.description}</textarea></td>
			</tr>	
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
             <td colspan="2" align="right"><button name="addgallery" value="addgallery">Submit</button></td>	
        </tr>
        <tr>
             <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
        </tr>
        </table>
    </fieldset>
</form>