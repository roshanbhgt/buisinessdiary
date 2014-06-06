{literal}
<script type="text/javascript">
function submitquery(){
	var form = $('#reviewform'); // contact form
	var submit = $('#reviewsubmit');	// submit button
	var alert = $('#message'); // alert div for show alert message

	// form submit event
	form.on('submit', function(e) {
		e.preventDefault(); // prevent default form submit
		// sending ajax request through jQuery
		$.ajax({
			url: 'http://localhost/buisinessdiary/submitreview.php', // form action url
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
	<div class="page-title"><h1>Post your reviews</h1></div>
	<p>You can also submit you review via mail to <a href="mailto:reviews@businessdiary.co.in">reviews@businessdiary.co.in</a>.</p>
	<p>&nbsp;</p>
	<form action="" method="post" id="reviewform">
		<input type="hidden" name="userid" value="{$session.userid}" />
		<input type="hidden" name="busid" value="{$business.list_id}" />
		<table border="0"  id="msgform">
			<tr>
				<td align="left" colspan="2"><div id="message" style="dispaly:none;"></div></td>							
			</tr>
			<tr>
				<td align="left" valign="top" width="155px"><lable>Rate the business<em>*</em></lable>&nbsp;</td>
				<td>
					<ul class="rating-star">
						<li class="rating-1"><input type="radio" name="rating" value="1" /></li>
						<li class="rating-2"><input type="radio" name="rating" value="2" /></li>
						<li class="rating-3"><input type="radio" name="rating" value="3" /></li>
						<li class="rating-4"><input type="radio" name="rating" value="4" /></li>
						<li class="rating-5"><input type="radio" name="rating" value="5" /></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td align="left" valign="top"><label>Review<em>*</em></label>&nbsp;</td>
				<td><textarea name="message" row="5" col="50"></textarea></td>
			</tr>
			<tr>
				<td align="right" colspan="2"><em>*</em> mark fields are required.&nbsp;<button class="button-blue" id="reviewsubmit" name="contactsubmit" onclick="submitquery()"><span>Submit</span></button></td>
			</tr>
		</table>
	</form>
</div>		
