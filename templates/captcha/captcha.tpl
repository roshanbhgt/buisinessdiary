{/*}
{literal}
<script type="text/javascript">
	 var RecaptchaOptions = {
	    theme : 'clean',	    
	    lang : 'en'
	 };
 </script>
 {/literal} 
{nocache}{$recaptcha}{/nocache}
{*/}
{literal}
<script type="text/javascript">
	 var RecaptchaOptions = {
	    theme : 'custom',
	    custom_theme_widget: 'recaptcha_widget',
	    lang : 'en'
	 };
 </script>
 {/literal}
{include file="header.tpl"}
	 <div id="recaptcha_widget" style="display:none">

   <div id="recaptcha_image"></div>
   <div class="recaptcha_only_if_incorrect_sol" style="color:red">Incorrect please try again</div>

   <span class="recaptcha_only_if_image">Enter the words above:</span>
   <span class="recaptcha_only_if_audio">Enter the numbers you hear:</span>

   <input type="text" id="recaptcha_response_field" name="recaptcha_response_field" />

   <div><a href="javascript:Recaptcha.reload()">Get another CAPTCHA</a></div>
   <div class="recaptcha_only_if_image"><a href="javascript:Recaptcha.switch_type('audio')">Get an audio CAPTCHA</a></div>
   <div class="recaptcha_only_if_audio"><a href="javascript:Recaptcha.switch_type('image')">Get an image CAPTCHA</a></div>

   <div><a href="javascript:Recaptcha.showhelp()">Help</a></div>

 </div>
{literal}
 <script type="text/javascript"
    src="http://www.google.com/recaptcha/api/challenge?k=6LdTMuYSAAAAANfuXQDkdpNRHVqa11dTMPrQQdxt">
 </script>
{/literal}
 <noscript>
   <iframe src="http://www.google.com/recaptcha/api/noscript?k=6LdTMuYSAAAAANfuXQDkdpNRHVqa11dTMPrQQdxt"
        height="300" width="500" frameborder="0"></iframe><br>
   <textarea name="recaptcha_challenge_field" rows="3" cols="40">
   </textarea>
   <input type="hidden" name="recaptcha_response_field"
        value="manual_challenge">
 </noscript>
