<form name="forgetpassform" method="post" id="forgetpassform" >
<table class="center">
<tr>
	<td colspan="2"><h2>Forget password?</h2></td>
</tr>
<tr>
	<td colspan="2">
		<br/>
		{If ( $variables.success != '' )}
			<div class="success">{$variables.success}</div>
		{ElseIf ( $variables.forgetPassError != '' )}
			<div class="error">{$variables.forgetPassError}</div>
		{/If}
		<br/>
	</td>
</tr>
<tr>
	<td align="left" colspan="2"><label>Username</label> : <input type="text" name="username" value=""></td>	
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
<tr>
	<td align="right" colspan="2"><button name="fpassword" value="fpassword">Get Password</button></td>	
</tr>
</table>
</form>