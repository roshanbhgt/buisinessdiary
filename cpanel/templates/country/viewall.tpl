<form method="post" id="country_grid_massaction-form" action="{$BACKEND}managecountries.php">
<div style="height:25px;">
    <div align="left" style="width:200px;float:left;padding:4px 0px;">
        <a href="javascript:void(0);" onclick="check(this)">Select All</a> 
        | 
        <a href="javascript:void(1);" onclick="uncheck(this)">Unselect All</a>
    </div>
    <div align="right" style="width:240px;float:right;padding:2px 0px;">		
        <label>Actions</label>
        <select class="iselect-small" id="country_grid_massaction-select">
            <option value=""></option>          
            <option selected="selected" value="refresh">Refresh</option>
        </select>
        <button type="submit" title="Submit" name="cache" value="clean" >Submit</button>        
    </div>
</div>
{if $pages != '' }
<div class="pagecontainer">
<div class="pageiteminfo"></div>
<div class="pagination">
	<ul>		
		{for $page=$smarty.get.page to $pages max=3}
    	<li><a href="?page={$page}">{$page}</a></li>
		{/for}
	</ul>
</div>
</div>
{/if}
{if $smarty.get.type == 'country'}
<table width="100%" align="left" class="grid">	
    <tr>
        <td class="center"></td>
        <td>Country Name</td>		
        <td></td>
    </tr>
    {foreach from=$countryies item=country}	
    <tr>
        <td width="5%" class="center"><input type="checkbox" name="admin" value="{$country.countryId}"></td>
        <td width="80%">{$country.title}</td>		
        <td width="15%">
                <a href="{$BACKEND}managecountries.php?type=country&action=edit&id={$country.countryId}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
                <a href="{$BACKEND}managecountries.php?type=country&action=delete&id={$country.countryId}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
        </td>
    </tr>
    {foreachelse}
    <tr>
        <td align="left" valign="middle" colspan="3">No records to display.</td>
    </tr>	
    {/foreach}
</table>
{elseif $smarty.get.type == "state"}
<table width="100%" align="left" class="grid">	
    <tr>
        <td class="center"></td>
        <td>Country</td>
        <td>State</td>		
        <td>Created at</td>
        <td></td>
    </tr>
    {foreach from=$states item=state}	
    <tr>
        <td width="10" class="center"><input type="checkbox" name="admin" value="{$state.stateId}"></td>
        <td width="150">{$state.ctitle}</td>
        <td width="150">{$state.title}</td>		
        <td width="150">{$state.created_date}</td>
        <td width="100">
                <a href="{$BACKEND}managecountries.php?type=state&action=edit&id={$state.stateId}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
                <a href="{$BACKEND}managecountries.php?type=state&action=delete&id={$state.stateId}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
        </td>
    </tr>
    {foreachelse}
    <tr>
        <td align="left" valign="middle" colspan="3">No records to display.</td>
    </tr>	
    {/foreach}
</table>
{elseif $smarty.get.type == "region"}
<table width="100%" align="left" class="grid">	
    <tr>
        <td class="center"></td>
        <td>Country</td>
        <td>State</td>
        <td>Region</td>		
        <td>Created at</td>
        <td></td>
    </tr>
    {foreach from=$regions item=region}	
    <tr>
        <td width="10" class="center"><input type="checkbox" name="admin" value="{$region.regionId}"></td>
        <td width="150">{$region.ctitle}</td>		
        <td width="150">{$region.stitle}</td>
        <td width="150">{$region.region}</td>
        <td width="150">{$region.created_date}</td>
        <td width="100">
                <a href="{$BACKEND}managecountries.php?type=state&action=edit&id={$region.regionId}"><img src="{$BACKEND}design/images/edit.png" alt="E" title="Edit"></a>
                <a href="{$BACKEND}managecountries.php?type=state&action=delete&id={$region.regionId}"><img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete"></a>
        </td>
    </tr>
    {foreachelse}
    <tr>
        <td align="left" valign="middle" colspan="3">No records to display.</td>
    </tr>	
    {/foreach}
</table>    
{/if}    
</form>
