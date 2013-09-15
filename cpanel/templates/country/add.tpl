{If ( $variables.success != '' )}
    <div class="success">{$variables.success}</div>
{ElseIf ( $variables.error != '' )}
    <div class="error">{$variables.error}</div>
{/If}
{if $smarty.get.type == 'country'}    
<form name="addcountry" method="post" id="addcountryform" >
    <fieldset>
  	<legend>Add country</legend>
        <table class="left" width="50%">                
            <tr>
                <td align="left" valign="middle" width="200"><label>Country</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="country" value="{$smarty.post.country}"></td>	
            </tr>
            <tr>
                <td colspan="2" align="right"><button name="addcountry" value="addcountry">Submit</button></td>	
            </tr>
            <tr>
                <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
            </tr>
        </table>
    </fieldset>
</form>
{elseif $smarty.get.type == "state"}        
<form name="addcountry" method="post" id="addcountryform" >
    <fieldset>
  	<legend>Add state</legend>
        <table class="left" width="50%">                
            <tr>
                <td align="left" valign="middle" width="200"><label>Coutry </label><span class="required">*</span></td>
                <td align="left" valign="middle">                    
                    <select name="country" class="selectbox">
                        <option value="">Please select</option>
                        {foreach from=$countryies item=country}	
                        <option value="{$country.countryId}">{$country.title}</option>
                        {/foreach}
                    </select>
                </td>
            </tr>
            <tr>
                <td align="left" valign="middle" width="200"><label>State</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="state" value="{$smarty.post.state}"></td>	
            </tr>
            <tr>
                <td colspan="2" align="right"><button name="addstate" value="addstate">Submit</button></td>	
            </tr>
            <tr>
                <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
            </tr>
        </table>
    </fieldset>
</form>
{/if}        