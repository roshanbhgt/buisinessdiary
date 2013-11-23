{If ( $variables.success != '' )}
    <div class="success">{$variables.success}</div>
{ElseIf ( $variables.error != '' )}
    <div class="error">{$variables.error}</div>
{/If}
<form name="addusertype" method="post" id="addusertypeform" >
    <fieldset>
  	<legend>Admin add user type</legend>
        <table class="left" width="50%">                
        <tr>
                <td align="left" valign="middle" width="200"><label>User type</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="role" value="{$smarty.post.role}"></td>	
        </tr>        
        <tr>
                <td colspan="2" align="right"><button name="addusertype" value="addusertype">Submit</button></td>	
        </tr>
        <tr>
                <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
        </tr>
        </table>
    </fieldset>
</form>