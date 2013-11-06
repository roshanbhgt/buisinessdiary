<div style="width:90%; float:left;">Query from <strong>{$cinfo.name|capitalize}</strong></div><div style="width:10%; float:right;"><a href="{$BACKEND}managewebforms.php?action=listClist">Back</a></div>
<table width="100%" align="left" >	
	<tr>
		<td width="150">Name</td>
		<td align="justify" valign="top">{$cinfo.name|capitalize}</td>
	</tr>
	<tr>	
		<td>Email</td>
		<td align="justify" valign="top">{$cinfo.email}</td>
	</tr>
	<tr>	
		<td>Mobile</td>
		<td valign="top">{$cinfo.mobile}</td>
	</tr>
	<tr>	
		<td>Message</td>
		<td align="justify" valign="top">{$cinfo.message|truncate:200:'...'}</td>
	</tr>		
	<tr>
		<td>Created At</td>
		<td align="justify" valign="top">{$cinfo.created_date}</td>
	</tr>	
</table>

