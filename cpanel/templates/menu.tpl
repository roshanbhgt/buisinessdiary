<table width="100%" border="0">
	<tr>
  		<td colspan="2" align="left" valign="top" class="navbar">
  			<ul id ="navmenu" class="navmenu level0" >
  				<li {If $filename == 'index' } class="active" {/If} ><a href="{$BACKEND}">Dashbord</a></li>  				
  				<li {If $filename == 'managecat' } class="active" {/If} >
  					<a href="{$BACKEND}">Categories</a>
  					<ul>
  						<li><a href="{$BACKEND}managecat.php?action=addparent">Add Parent Category</a></li>
  						<li><a href="{$BACKEND}managecat.php?action=addparent">Add Sub Category</a></li>
  						<li class="last"><a href="{$BACKEND}managecat.php?action=viewparent">Manage Parent Categories</a></li>
  						<li class="last"><a href="{$BACKEND}managecat.php?action=viewsub">Manage Sub Categories</a></li>
  					</ul>
  				</li>  				
  				<li {If $filename == 'managelist' } class="active" {/If} >
  					<a href="{$BACKEND}">Buisiness Listing</a>
  					<ul>
  						<li><a href="{$BACKEND}">Add buisiness</a></li>
  						<li class="last"><a href="{$BACKEND}">Manage Buisiness</a></li>
  					</ul>
  				</li>  				
  				<li {If $filename == 'managegal' } class="active" {/If} >
  					<a href="{$BACKEND}">Gallery</a>
  					<ul>
  						<li><a href="{$BACKEND}">Add gallery</a></li>
  						<li class="last"><a href="{$BACKEND}">Manage galleries</a></li>
  					</ul>
  				</li>  				
  				<li {If $filename == 'manageuser' } class="active" {/If} >
  					<a href="{$BACKEND}">Users</a>
  					<ul>
  						<li><a href="{$BACKEND}">Add user</a></li>
  						<li class="last"><a href="{$BACKEND}">Manage User</a></li>
  					</ul>
  				</li>  				
  				<li {If $filename == 'managepages' } class="active" {/If} >
  					<a href="{$BACKEND}">Pages</a>
  					<ul>
  						<li><a href="{$BACKEND}">Add page</a></li>
  						<li class="last"><a href="{$BACKEND}">Manage page</a></li>
  					</ul>
  				</li>  				
  				<li {If $filename == 'managewebforms' } class="active" {/If} >
  					<a href="{$BACKEND}">Webforms</a>
  					<ul>
  						<li class="last"><a href="{$BACKEND}">Manage webforms</a></li>
  					</ul>
  				</li>  				
  				<li {If 
  						$filename == 'manageadmin' 
  						|| $filename == 'managecountries' 
  						|| $filename == 'cachemgmt'} class="active" {/If} >
  					<a href="{$BACKEND}">System</a>
  					<ul>
  						<li><a href="{$BACKEND}manageadmin.php?action=edit&id={$smarty.session.adminId}">Manage Admin</a></li>
  						<li><a href="{$BACKEND}managecountries.php?type=country">Manage Country</a></li>  						
  						<li class="last"><a href="{$BACKEND}cachemgmt.php">Manage Cache</a></li>
  					</ul>
  				</li>
  		</ul>
  		</td>
	</tr>
</table>

{literal}
<script type="text/javascript">
$(function(){
    $('#navmenu').find('> li').hover(function(){
        $(this).find('ul')
        .addClass('over')
        .stop(true, true).slideToggle('fast');
    });
});
</script>
{/literal}


