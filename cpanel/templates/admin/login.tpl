{literal}
<script type="text/javascript">
	 var RecaptchaOptions = {
	    theme : 'clean',
	 };
</script>
{/literal} 

<form name="login" method="post" id="loginform" >
<table class="center">
<tr>
	<td colspan="2"><h2>Login to admin panel</h2></td>
</tr>
<tr>
	<td colspan="2">
		{If ( $variables.success != '' )}
			<div class="success">{$variables.success}</div>
		{ElseIf ( $variables.loginError != '' )}
			<div class="error">{$variables.loginError}</div>
		{Else}
			&nbsp;
		{/If}
	</td>
</tr>
<tr>
	<td><label>Username</label><span class="required">*</span> <input type="text" name="username" value="{$smarty.post.username}"></td>
	<td><label>Password</label><span class="required">*</span> <input type="password" name="password" value=""></td>
</tr>
<tr>
	<td colspan="2">{nocache}{$captcha}{/nocache}</td>
</tr>
<tr>
	<td colspan="2" align="right"><a href="forgetpassword.php">Forget password?</a> | <button name="login" value="login">Login</button></td>	
</tr>
<tr>
	<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
</tr>
</table>
</form>