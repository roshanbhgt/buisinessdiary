<form name="updateuser" method="post" id="updateuserform" >
<fieldset>
  	<legend>Admin user</legend>
	<input type="hidden" name="id" value="{$admin.adminId}" />
	<table class="left" width="50%">		
		<tr>
			<td align="left" valign="middle" width="200"><label>First name</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="firstname" value="{$admin.firstname}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Last name</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="lastname" value="{$admin.lastname}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Email</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="text" name="email" value="{$admin.email}"></td>	
		</tr>
		<tr>
			<td align="left" valign="middle"><label>Username</label><span class="required">*</span></td>
			<td align="left"><input class="inputbox" type="text" name="username" value="{$admin.username}"></td>	
		</tr>
		<!-- <tr>
			<td align="left" valign="middle"><label>Password</label><span class="required">*</span></td>
			<td align="left" valign="middle"><input class="inputbox" type="password" name="password" value=""></td>	
		</tr> -->
		<tr>
			<td colspan="2" align="center" valign="middle">{nocache}{$captcha}{/nocache}</td>
		</tr>
		<tr>
			<td colspan="2" align="right"><button name="updateuser" value="updateuser">Submit</button></td>	
		</tr>
		<tr>
			<td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
		</tr>
	</table>
</fieldset>
</form>