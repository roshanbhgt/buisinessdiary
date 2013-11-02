{If ( $variables.success != '' )}
    <div class="success">{$variables.success}</div>
{ElseIf ( $variables.adduserError != '' )}
    <div class="error">{$variables.adduserError}</div>
{/If}
<form name="addgallery" method="post" id="addgalleryform" enctype="multipart/form-data"s>
    <fieldset>
  	<legend>Add gallery</legend>
        <table class="left" width="75%">                
        <tr>
                <td align="left" valign="middle" width="200"><label>Title</label><span
					class="required">*</span></td>
				<td align="left" valign="middle"><input class="inputbox" type="text"
					name="title" value="{$smarty.post.title}"></td>	
        </tr>
        <tr>
			<td align="left" valign="top"><label>Description</label></td>
			<td align="left" valign="middle"><textarea class="inputtextarea" 
			name="description">{$smarty.post.description}</textarea></td>
		</tr>	
        <tr>
			<td align="left" valign="top"><label>Banners</label></td>
			<td align="left" valign="middle">
				<div id="banners">
					<input type="file" name="banner1" class="inputbox">
				</div>
				<span id="add">add more</span> | <span id="remove">remove more</span>
			</td>
		</tr>
        <tr>
			<td align="left" valign="middle"><label>Status</label><span
				class="required">*</span></td>
			<td align="left" valign="middle">
				<select name="status" class="iselect-small">
					<option value="active" {If $smarty.post.status == "active"} select="select" {/If}>Active</option>
					<option value="inactive" {If $smarty.post.status == "inactive"} select="select" {/If}>Inactive</option>
				</select>
			</td>
		</tr>   
        <tr>
             <td colspan="2" align="right"><button name="addgallery" value="addgallery">Submit</button></td>	
        </tr>
        <tr>
             <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
        </tr>
        </table>
    </fieldset>
</form>
<script type="text/javascript">
$(document).ready(function () {        
    var numberIncr = 2;
    $("#add").on('click', function () {
        $('#banners').append($('<input type="file" class="inputbox" id="banner' + numberIncr + '" name="banner' + numberIncr + '" />'));
        numberIncr = numberIncr + 1;
    });
	$("#remove").on('click', function () {
		var id = "#banner" + numberIncr;
        $(id).remove();
		numberIncr = numberIncr - 1;	
    });
    
});
</script>
