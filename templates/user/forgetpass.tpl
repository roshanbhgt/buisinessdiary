
{literal}
<script type="text/javascript">
function forgetpass(){
	var form = $('#forgetpassform'); // contact form
	var submit = $('#forgetpasssubmit');	// submit button
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
	<div class="page-title"><h1>Forgot Your Password?</h1></div>
	<p>Please enter your email address below. You will receive a link to reset your password.</p>
	<form action="" method="post" id="forgetpassform">
		<table border="0" id="msgform">
			<tr>
				<td align="left" colspan="2"><div id="message" style="dispaly:none;"></div></td>							
			</tr>
			<tr>
				<td align="left" valign="top" width="120px;"><lable>Email<em>*</em></lable>&nbsp;</td>
				<td><input type="text" name="email" value="" class="input-text" /></td>
			</tr>		
			<tr>
				<td align="right" colspan="2"><em>*</em> mark fields are required.&nbsp;<a href="{$FRONTEND}/forgetpass.php"><button class="button-blue" id="forgetpasssubmit" name="forgetpasssubmit" onclick="forgetpass()"><span>Submit</span></button></td>
			</tr>
		</table>
	</form>
</div>