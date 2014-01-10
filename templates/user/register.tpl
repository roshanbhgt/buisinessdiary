
{literal}
<script type="text/javascript">
function login(){
	var form = $('#loginform'); // contact form
	var submit = $('#loginsubmit');	// submit button
	var alert = $('#message'); // alert div for show alert message

	// form submit event
	form.on('submit', function(e) {
		e.preventDefault(); // prevent default form submit
		// sending ajax request through jQuery
		$.ajax({
			url: 'login.php', // form action url
			type: 'POST', // form submit method get/post
			dataType: 'html', // request type html/json/xml
			data: form.serialize(), // serialize form data 
			beforeSend: function() {
				alert.fadeOut();
				submit.html('Submitting...'); // change submit button text
			},
			success: function(data) {
				alert.css('display', 'block');
				alert.css('padding', '5px');
				alert.html(data).fadeIn(); // fade in response data
				form.trigger('reset'); // reset form
				submit.html('Submit'); // reset submit button text
			},
			error: function(e) {
				console.log(e)
			}
		});
	});
}
</script>
{/literal}<div class="std">
	<div class="page-title"><h1>Create an account</h1></div>
	
	<form action="" method="post" id="registerform">
		<table border="0" width="400" id="msgform">
			<tr>
				<td align="left" colspan="2"><div id="message" style="dispaly:none;"></div></td>							
			</tr>
			<tr>
				<td align="left" valign="top"><lable>First name<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="name" value="" /></td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Last name<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="name" value="" /></td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Email<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="name" value="" /></td>
			</tr>			
			<tr>
				<td align="left" valign="top"><label>Password<em>*</em></label>&nbsp;</td>
				<td><input type="password" name="name" value=""/></td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Birthday<em>*</em></lable>&nbsp;</td>
				<td></td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Gender<em>*</em></lable>&nbsp;</td>
				<td><input type="radio" name="gender" value="m" />Male<input type="radio" name="gender" value="f" />Female</td>
			</tr>			
			<tr>
				<td align="right" colspan="2"><em>*</em> mark fields are required.&nbsp;<button class="button-blue" id="loginsubmit" name="contactsubmit" onclick="login()"><span>Login</span></button></td>
			</tr>
		</table>
	</form>
</div>