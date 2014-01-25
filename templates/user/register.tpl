
{literal}
<script type="text/javascript">
function register(){
	var form = $('#registerform'); // contact form
	var submit = $('#registersubmit');	// submit button
	var alert = $('#registermessage'); // alert div for show alert message

	// form submit event
	form.on('submit', function(e) {
		e.preventDefault(); // prevent default form submit
		// sending ajax request through jQuery
		$.ajax({
			url: 'register.php', // form action url
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
				submit.html('Create an Account'); // reset submit button text
			},
			error: function(e) {
				console.log(e)
			}
		});
	});
}
</script>
{/literal}<div class="std">
	<div class="page-title"><h1>New user</h1></div>
	<p>By creating an account with us, you will be able to save place, rate and review businesses in your account and more.</p>	
	<form action="" method="post" id="registerform">
		<table border="0" id="msgform">
			<tr>
				<td align="left" colspan="2"><div id="registermessage" style="dispaly:none;"></div></td>							
			</tr>
			<tr>
				<td align="left" valign="top" width="120px;"><lable>First name<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="firstname" value="" /></td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Last name<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="lastname" value="" /></td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Gender<em>*</em></lable>&nbsp;</td>
				<td>
					<ul style="list-style-type:none;">
						<li style="float:left;padding:0 5px"><input type="radio" name="gender" value="m" style="width:20px"/>Male</li>
						<li style="float:left;padding:0 5px"><input type="radio" name="gender" value="f" style="width:20px"/>Female</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Postcode<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="postcode" value=""/></td>
			</tr>
			<tr>
				<td align="left" valign="top"><lable>Email<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="email" value="" /></td>
			</tr>			
			<tr>
				<td align="left" valign="top"><label>Password<em>*</em></label>&nbsp;</td>
				<td><input type="password" name="password" value=""/></td>
			</tr>
			<tr>
				<td align="left" valign="top"><label>Confirm Password<em>*</em></label>&nbsp;</td>
				<td><input type="password" name="confpass" value=""/></td>
			</tr>					
			<tr>
				<td align="right" colspan="2"><em>*</em> mark fields are required.&nbsp;<button class="button-blue" id="registersubmit" name="registersubmit" onclick="register()"><span>Create an Account</span></button></td>
			</tr>
		</table>
	</form>
</div>