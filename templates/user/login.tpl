
{literal}
<script type="text/javascript">
function login(){
	var form = $('#loginform'); // contact form
	var submit = $('#loginsubmit');	// submit button
	var alert = $('#loginmessage'); // alert div for show alert message

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
				var response = $.parseJSON(data);
				if (response.success) {
					window.location.href = response.url;
				} else {
					alert.css('display', 'block');
					alert.css('padding', '5px');
					alert.html(response.message).fadeIn(); // fade in response data
					form.trigger('reset'); // reset form
					submit.html('Login'); // reset submit button text
				}
			},
			error: function(e) {
				console.log(e)
			}
		});
	});
}
</script>
{/literal}<div class="std">
	<div class="page-title"><h1>Registered user</h1></div>
	<p>Having an account on business diary, login in with form below...</p>
	<form action="" method="post" id="loginform">
		<table border="0" id="msgform">
			<tr>
				<td align="left" colspan="2"><div id="loginmessage" style="dispaly:none;"></div></td>							
			</tr>
			<tr>
				<td align="left" valign="top" width="120px;"><lable>Email<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="email" value="" class="input-text" /></td>
			</tr>
			<tr>
				<td align="left" valign="top"><label>Password<em>*</em></label>&nbsp;</td>
				<td><input type="password" name="password" value="" class="input-text"/></td>
			</tr>			
			<tr>
				<td align="right" colspan="2"><a href="{$FRONTEND}/forgetpass">Forget password?</a> | <em>*</em> mark fields are required.&nbsp;<button class="button-blue" id="loginsubmit" name="loginsubmit" onclick="login()"><span>Login</span></button></td>
			</tr>
		</table>
	</form>
</div>