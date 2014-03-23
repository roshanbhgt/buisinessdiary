{If ( $variables.success != '' )}
    <div class="success">{$variables.success}</div>
{ElseIf ( $variables.error != '' )}
    <div class="error">{$variables.error}</div>
{/If}
<form name="addnewsemail" method="post" id="addnewsemailform" >
    <fieldset>
		<legend>Add email newsletter</legend>
        <table class="left" width="50%">                
            <tr>
                <td align="left" valign="middle" width="200"><label>Name</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="name" value="{$smarty.post.name}"></td>	
            </tr>
			<tr>
                <td align="left" valign="middle" width="200"><label>Email</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="email" value="{$smarty.post.email}"></td>	
            </tr>
			<tr>
				<td align="left" valign="middle"><label>Status</label><span
					class="required">*</span></td>
				<td align="left" valign="middle">
					<select name="status" class="iselect-small">
						<option value="1" {If $smarty.post.status == "1"} selected="selected" {/If}>Active</option>
						<option value="0" {If $smarty.post.status == "0"} selected="selected" {/If}>Inactive</option>
					</select>
				</td>
			</tr>
            <tr>
                <td colspan="2" align="right"><button name="addnewsemail" value="addnewsemail">Submit</button></td>	
            </tr>
            <tr>
                <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
            </tr>
        </table>
    </fieldset>
</form>
