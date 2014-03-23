{If ( $variables.success != '' )}
    <div class="success">{$variables.success}</div>
{ElseIf ( $variables.error != '' )}
    <div class="error">{$variables.error}</div>
{/If}
<form name="editnewsemail" method="post" id="editnewsemailform" >
    <fieldset>
        <input type="hidden" name="id" value="{$newsemail.subscriberId}" />
		<legend>Edit newsletter</legend>
        <table class="left" width="50%">                
            <tr>
                <td align="left" valign="middle" width="200"><label>Name</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="name" value="{$newsemail.name}"></td>	
            </tr>
			<tr>
                <td align="left" valign="middle" width="200"><label>Email</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="email" value="{$newsemail.email}"></td>	
            </tr>
			<tr>
				<td align="left" valign="middle"><label>Status</label><span
					class="required">*</span></td>
				<td align="left" valign="middle">
					<select name="status" class="iselect-small">
						<option value="1" {If $newsemail.status == "1"} selected="selected" {/If}>Active</option>
						<option value="0" {If $newsemail.status == "0"} selected="selected" {/If}>Inactive</option>
					</select>
				</td>
			</tr>
            <tr>
                <td colspan="2" align="right"><button name="updatenewsemail" value="updatenewsemail">Submit</button></td>	
            </tr>
            <tr>
                <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
            </tr>
        </table>
    </fieldset>
</form>
