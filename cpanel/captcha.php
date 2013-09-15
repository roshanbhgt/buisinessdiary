<?php
/* assuming it's the first page load, when there's no $_POST */
if(!$_POST) {
	$smarty->assign(
			"recaptcha",
			recaptcha_get_html($pubkey)
	);
}
else {
	if($_POST["recaptcha_response_field"] && $_POST["recaptcha_response_field"]!=''){
			
		/* request validation from the reCAPTCHA API */
		$rsp = recaptcha_check_answer (
				$privkey,
				$_SERVER["REMOTE_ADDR"],
				$_POST["recaptcha_challenge_field"],
				$_POST["recaptcha_response_field"]
		);

		/* process form when the API has confirmed validation */
		if ($rsp->is_valid) {

			/* the business logic happens here ...      */
			/* e.g. process form, send mail, whatever */

			/* return "success" in order to switch the template */
			$smarty->assign(
					"recaptcha",
					"success"
			);
		}
		else {
			/* return an error if the CAPTCHA was incorrect */
			$smarty->assign(
					"recaptcha",
					recaptcha_get_html($pubkey,$rsp->error)
			);
		}
	}
	else {
		/* return an error if an empty CAPTCHA was submitted */
		$smarty->assign(
				"recaptcha",
				recaptcha_get_html($pubkey,'incorrect-captcha-sol')
		);
	}
}