{literal}
<script type="text/javascript">
	 var RecaptchaOptions = {
	    theme : 'clean',
	 };
</script>
{/literal}

{If ( $variables.success != '' )}
    <div class="success">{$variables.success}</div>
{ElseIf ( $variables.adduserError != '' )}
    <div class="error">{$variables.adduserError}</div>
{/If}
<form name="adduser" method="post" id="adduserform" >
    <fieldset>
  	<legend>Admin add user</legend>
        <table class="left" width="50%">                
        <tr>
                <td align="left" valign="middle" width="200"><label>First name</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="firstname" value="{$smarty.post.firstname}"></td>	
        </tr>
        <tr>
                <td align="left" valign="middle"><label>Last name</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="lastname" value="{$smarty.post.lastname}"></td>	
        </tr>
        <tr>
                <td align="left" valign="middle"><label>Email</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="email" value="{$smarty.post.email}"></td>	
        </tr>
        <tr>
                <td align="left" valign="middle"><label>Username</label><span class="required">*</span></td>
                <td align="left"><input class="inputbox" type="text" name="username" value="{$smarty.post.username}"></td>	
        </tr>
        <tr>
                <td align="left" valign="middle"><label>Password</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="password" name="password" value="{$smarty.post.password}"></td>	
        </tr>
        <!-- <tr>
                <td colspan="2" align="center" valign="middle">{nocache}{$captcha}{/nocache}</td>
        </tr> -->
        <tr>
                <td colspan="2" align="right"><button name="adduser" value="adduser">Submit</button></td>	
        </tr>
        <tr>
                <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
        </tr>
        </table>
    </fieldset>
</form>