{if $variables.success != ''}
    <div class="success">{$variables.success}</div>
{else}
    <div class="error">{$variables.error}</div>
{/if}
<form action="{$FRONTEND}/account-info.php" method="post">
<div class="std">
    <div class="page-title"><h1>Account Information</h1></div>
    <table align="left" width="100%">
        <tr>
            <td align="left" valign="top"><label>First Name<em>*</em></label><br/><input type="text" name="firstname" value="" class="input-text"/></td>
            <td align="left" valign="top"><label>Last Name<em>*</em></label><br/><input type="text" name="lastname" value="" class="input-text"/></td>
        </tr>
        <tr><td align="left" valign="top" colspan="2"><label>Email<em>*</em></label><br/><input type="text" name="email" value="" class="input-text"/></td></tr>
    </table>
    <p>&nbsp;</p>
    <input type="checkbox" class="checkbox" {if $smarty.post.change_password == 1} checked="checked" {/if} title="Change Password" onclick="showPasswordForm(this.checked)" value="1" id="change_password" name="change_password">
    <label for="change_password">Change Password</label>
    <p>&nbsp;</p>
    <div id="passform" style="{if $smarty.post.change_password != 1}display: none;{/if}">
        <table align="left" width="100%">
            <tr>
                <td align="left" valign="top" colspan="2">
                    <label>Current Password<em>*</em></label><br/><input type="password" name="curr_pass" value="" class="input-text"/>
                </td>
            </tr>
            <tr>
                <td align="left" valign="top"><label>New Password<em>*</em></label><br/><input type="password" name="new_pass" value="" class="input-text"/></td>
                <td align="left" valign="top"><label>Confirm Password<em>*</em></label><br/><input type="password" name="conf_pass" value="" class="input-text"/></td>
            </tr>
        </table>
    </div>
    <p>&nbsp;</p>
    <div style="width:100%;text-align: right;"><button  name="accountinfosubmit" id="accountinfosubmit" class="button-blue"><span>Submit</span></button></div>
</div>
</form>

{literal}
<script type="text/javascript">
    function showPasswordForm(arg){
        if(arg){
            $('#passform').show();
        }else{
            $('#passform').hide();
        }
    }
</script>
{/literal}