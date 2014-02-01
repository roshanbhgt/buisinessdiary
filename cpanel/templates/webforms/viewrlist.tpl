<form method="post" id="admin_grid_massaction-form" action="{$BACKEND}managewebforms.php">
    <div style="height:25px;">
        <div align="left" style="float: left; padding: 4px 0px; width: 17%;">
            <a href="javascript:void(0);" onclick="check(this)">Select All</a>
            |
            <a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
        </div>
        {if $pages != '' }
            <div style="float: left; width: 60%;">
                <div class="pagination">
                    <ul>
                        {if $smarty.get.page != '' && $smarty.get.page != 1}
                            <li><a href="?action={$smarty.get.action}&page={$smarty.get.page-1}"><</a></li>
                        {/if}
                        {for $page=$smarty.get.page to $pages max = 5}
                            <li><a href="?action={$smarty.get.action}&page={$page}">{$page}</a></li>
                        {/for}
                        {if $smarty.get.page != '' && $smarty.get.page < $pages}
                            <li><a href="?action={$smarty.get.action}&page={$smarty.get.page+1}">></a></li>
                        {/if}
                    </ul>
                </div>
            </div>
        {/if}
        <div align="right" style="float: right; padding: 2px 0px; width: 22%;">
            <label>Actions</label>
            <select class="iselect-small" id="admin_grid_massaction-select">
                <option value=""></option>
                <option selected="selected" value="refresh">Refresh</option>
            </select>
            <button type="submit" title="Submit" name="cache" value="clean" >Submit</button>
        </div>
    </div>
    <table width="100%" align="left" class="grid">
        <tr>
            <td class="center"></td>
            <td>Category</td>
            <td>Company</td>
            <td>Email</td>
            <td>Description</td>
            <td>Postcode</td>
            <td>City</td>
            <td>State</td>
            <td>Created At</td>
            <td></td>
        </tr>
        {foreach from=$rlist item=val}
            <tr>
                <td width="30" class="center" valign="top"><input type="checkbox" name="clistid" value="{$val.quilistId}"></td>
                <td width="150" align="justify" valign="top">{$val.category|capitalize}</td>
                <td width="150" align="justify" valign="top">{$val.company}</td>
                <td width="100" valign="top">{$val.email}</td>
                <td align="justify" valign="top">{$val.description|truncate:200:'...'}</td>
                <td width="100" valign="top">{$val.postcode}</td>
                <td width="100" valign="top">{$val.city}</td>
                <td width="100" valign="top">{$val.state}</td>
                <td width="100"align="justify" valign="top">{$val.created_date}</td>
                <td width="100">
                    <a href="{$BACKEND}managewebforms.php?action=rinfo&id={$val.quilistId}"><img src="{$BACKEND}design/images/view.png" alt="V" title="View"></a>
                    <a href="{$BACKEND}managewebforms.php?action=deleterlist&id={$val.quilistId}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
                </td>
            </tr>
            {foreachelse}
            <tr><td align="left" valign="middle" colspan="7">No records to display.</td></tr>
        {/foreach}
    </table>
</form>
