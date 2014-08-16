{literal}
<script type="text/javascript">
function submitquery(){
	var form = $('#contactform'); // contact form
	var submit = $('#contactsubmit');	// submit button
	var alert = $('#message'); // alert div for show alert message

	// form submit event
	form.on('submit', function(e) {
		e.preventDefault(); // prevent default form submit
		// sending ajax request through jQuery
		$.ajax({
			url: 'contactus.php', // form action url
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
{/literal}
<div class="std">
	<div class="page-title"><h1>Contact Us</h1></div>
	<p>You may contact us in following ways</p>
	<p>&nbsp;</p>
	<p><strong>Phone</strong>: +91 844 657 6606</p>
	<p>&nbsp;</p>

<p><strong>Email</strong>: help@businessdiary.co.in</p>
<p>&nbsp;</p>
<p><strong>Mail</strong>: H/N 118A, Indira Nagar<br>Behind T. B. Ward Hospital<br>Nagpur, Maharashtra, India - 440003</p>
<p>&nbsp;</p>

	<p align="left">We would like to resolve any queries you might have. To contact us please fill form below.</p>
	<form action="" method="post" id="contactform">
		<table border="0" width="400" id="msgform">
			<tr>
				<td align="left" colspan="2"><div id="message" style="dispaly:none;"></div></td>							
			</tr>
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
				<td align="right" colspan="2"><em>*</em> mark fields are required.&nbsp;<button class="button-blue" id="contactsubmit" name="contactsubmit" onclick="submitquery()"><span>Submit</span></button></td>
			</tr>
		</table>
	</form>
</div>		
