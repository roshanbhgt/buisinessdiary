<div class="std">
	<div class="page-title"><h1>Feedback & Suggestions</h1></div>
	<p>Thank you for visiting the business diary.</p>
	<p>&nbsp;</p>
	<p>We are looking forward to imporove users experience and more relevant information for your search keywords. 
	To get this done we need your co-opertion and suggestion.</p>
	<p>&nbsp;</p>
	<p>So please fill the form below, so that we can work on your valuable suggestions and feedbacks or you can mail us at <a href="mailto:feedback@businessdiary.co.in">feedback@businessdiary.co.in</a></p>   
	<p>&nbsp;</p>
	{if $variable.message != ''}
		<div id="message">{$variable.message}</div>
	{/if}
	<form action="{$FRONTEND}/feedback.php" method="post" id="feedbackform">
		<table border="0" width="650">
			<tr>
				<td align="left" valign="top"><lable>Question</td>
				<td align="center" valign="top">Totally Agree</td>
				<td align="center" valign="top">Agree</td>
				<td align="center" valign="top">Indifferent</td>
				<td align="center" valign="top">Disagree</td>
				<td align="center" valign="top">Totally Disagree</td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>I like the overall design of website.<em>*</em></lable>&nbsp;</td>
				<td align="center" valign="middle"><input type="radio" name="ui" value="5" /></td>
				<td align="center" valign="middle"><input type="radio" name="ui" value="4" /></td>
				<td align="center" valign="middle"><input type="radio" name="ui" value="3" /></td>
				<td align="center" valign="middle"><input type="radio" name="ui" value="2" /></td>
				<td align="center" valign="middle"><input type="radio" name="ui" value="1" /></td>				
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Search on this website provides good result.<em>*</em></lable>&nbsp;</td>
				<td align="center" valign="middle"><input type="radio" name="search" value="5" /></td>
				<td align="center" valign="middle"><input type="radio" name="search" value="4" /></td>
				<td align="center" valign="middle"><input type="radio" name="search" value="3" /></td>
				<td align="center" valign="middle"><input type="radio" name="search" value="2" /></td>
				<td align="center" valign="middle"><input type="radio" name="search" value="1" /></td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Information on this site is relevant to my needs.<em>*</em></lable>&nbsp;</td>
				<td align="center" valign="middle"><input type="radio" name="info" value="5" /></td>
				<td align="center" valign="middle"><input type="radio" name="info" value="4" /></td>
				<td align="center" valign="middle"><input type="radio" name="info" value="3" /></td>
				<td align="center" valign="middle"><input type="radio" name="info" value="2" /></td>
				<td align="center" valign="middle"><input type="radio" name="info" value="1" /></td>
			</tr>
		</table>	
		<table border="0" width="400" id="msgform">	
			<tr>
				<td align="left" valign="top"><lable>Name<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="name" value="" class="input-text"/></td>
			</tr>
			<tr>
				<td align="left" valign="top"><label>Phone</label>&nbsp;</td>
				<td><input type="text" name="mobile" value="" class="input-text"/></td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Email<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="email" value="" class="input-text"/></td>
			</tr>
			<tr>
				<td align="left" valign="top"><label>Message<em>*</em></label>&nbsp;</td>
				<td><textarea name="message" row="5" col="50"></textarea></td>
			</tr>
			<tr>
				<td align="right" colspan="2"><em>*</em> mark fields are required.&nbsp;<button class="button-blue" id="feedbacksubmit" name="feedbacksubmit" ><span>Submit</span></button></td>
			</tr>
		</table>
	</form>
</div>		
