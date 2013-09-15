{If ($variables.success != '')}
	<div class="success">{$variables.success}</div>
{ElseIf ($variables.error != '')}
	<div class="error">{$variables.error}</div>
{/If}
<h2 class="content-header">{$contentheading}</h2>
<table width="100%">
	<tr>
		<td width="200" align="left" valign="top" style="padding:0 2px;">{$left}</td>
		<td align="left" valign="top" style="padding:0 2px;">{$centercontent}</td>
	</tr>
</table>

