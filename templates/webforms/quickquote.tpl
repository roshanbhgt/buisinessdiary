<div class="std">
    <div class="page-title"><h1>Promotions and Advertise </h1></div>
    <p>You may contact us in following ways for promoting and advertise your business</p>
    <p>&nbsp;</p>
    <p><strong>Phone</strong>: +91 844 657 6606</p>
    <p>&nbsp;</p>

    <p><strong>Email</strong>: help@businessdiary.co.in</p>
    <p>&nbsp;</p>
    <p><strong>Mail</strong>: H/N 118A, Indira Nagar<br>Behind T. B. Ward Hospital<br>Nagpur, Maharashtra, India - 440003</p>
    <p>&nbsp;</p>

    <p align="left">We would like to promote business you might have. To get promotions quote please fill form below.</p>
    <form action="{$FRONTEND}/quikquote.php" method="post" id="promoquoteform">
        <table border="0" width="440" id="msgform">
            {if $variables.success != ''}
            <tr>
                <td align="left" colspan="2"><div id="message" >{$variables.message}</div></td>
            </tr>
            {/if}
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
                <td align="left" valign="top"><label>Banner size<em>*</em></label>&nbsp;</td>
                <td><input type="text" name="bannersize" value="" class="input-text"/></td>
            </tr>
            <tr>
                <td align="right" colspan="2"><em>*</em> mark fields are required.&nbsp;<button class="button-blue" id="promoquotesubmit" name="promoquotesubmit" onclick="submitquery()"><span>Submit</span></button></td>
            </tr>
        </table>
    </form>
</div>