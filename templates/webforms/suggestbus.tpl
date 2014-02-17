{literal}
    <script type="text/javascript">
        function submitsuggestbus(){
            var form = $('#suggestbusform'); // contact form
            var submit = $('#suggestbussubmit');	// submit button
            var alert = $('#message'); // alert div for show alert message

            // form submit event
            form.on('submit', function(e) {
                e.preventDefault(); // prevent default form submit
                // sending ajax request through jQuery
                $.ajax({
                    url: 'suggestbus.php', // form action url
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
    <div class="page-title"><h1>Suggest Business</h1></div>
    <p>If you know any such business contact which you want to be list here, you may contact us in following ways</p>
    <p>&nbsp;</p>
    <p><strong>Phone</strong>: +91 844 657 6606</p>
    <p>&nbsp;</p>

    <p><strong>Email</strong>: help@businessdiary.co.in</p>
    <p>&nbsp;</p>
    <p><strong>Mail</strong>: H/N 118A, Indira Nagar<br>Behind T. B. Ward Hospital<br>Nagpur, Maharashtra, India - 440003</p>
    <p>&nbsp;</p>

    <p align="left">We would like to contact business and add to our listing. To contact us please fill form below.</p>
    <form id="suggestbusform" action="" method="post" >
        <table id="msgform">
            <tr>
                <td align="left" colspan="2"><div id="message" style="dispaly:none;"></div></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="135px">Your Name<em>*</em></td>
                <td><input type="text" name="yname" value=""/></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="135px">Your Email<em>*</em></td>
                <td><input type="text" name="yemail" value=""/></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="135px">Category<em>*</em></td>
                <td>
                    <select name="category" style="width:202px">
                        <option value="">--- Select from options ---</option>
                        {foreach from=$catall item=cat key=i}
                            <option value="{$cat.cat_id}">{$cat.title}</option>
                        {/foreach}
                    </select>
                </td>
            </tr>
            <tr>
                <td align="left" valign="top" width="135px">Company<em>*</em></td>
                <td><input type="text" name="company" value=""/></td>
            </tr>
            <tr>
                <td align="left" valign="top" width="135px">Email<em>*</em></td>
                <td><input type="text" name="email" value=""/></td>
            </tr>
            <tr>
                <td align="left" valign="top">Description<em>*</em></td>
                <td><textarea name="description"> </textarea></td>
            </tr>
            <tr>
                <td align="left" valign="top">Address<em>*</em></td>
                <td><textarea name="address"> </textarea></td>
            </tr>
            <tr>
                <td align="left" valign="top">City<em>*</em></td>
                <td><input type="text" name="city" value=""/></td>
            </tr>
            <tr>
                <td align="left" valign="top">State<em>*</em></td>
                <td><input type="text" name="state" value=""/></td>
            </tr>
            <tr>
                <td align="left" valign="top">Country<em>*</em></td>
                <td><input type="text" name="country" value=""/></td>
            </tr>
            <tr>
                <td align="left" valign="top">Postcode<em>*</em></td>
                <td><input type="text" name="postcode" value=""/></td>
            </tr>
            <tr>
                <td align="left" valign="top">Telephone<em>*</em></td>
                <td><input type="text" name="telephone" value=""/></td>
            </tr>
            <tr>
                <td align="left" valign="top">Fax</td>
                <td><input type="text" name="fax" value=""/></td>
            </tr>
            <tr>
                <td align="left" valign="top">Website</td>
                <td><input type="text" name="website" value=""/></td>
            </tr>
            <tr>
                <td align="right" valign="top" colspan="2">
                    <em>*</em> mark fields are required.&nbsp;<button class="button-blue" id="suggestbussubmit" onclick="submitsuggestbus()"><span>Submit</span></button>
                </td>
            </tr>
        </table>
    </form>
</div>
