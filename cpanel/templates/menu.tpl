<table width="100%" border="0">
	<tr>
  		<td colspan="2" align="left" valign="top" class="navbar">
  			<ul id ="navmenu" class="navmenu level0" >
  				<li {If $filename == 'index' } class="active" {/If} ><a href="{$BACKEND}">Dashbord</a></li>  				
  				<li {If $filename == 'managecat' } class="active" {/If} >
  					<a href="{$BACKEND}/managecat.php">Categories</a>
  					<ul>
  						<li><a href="{$BACKEND}/managecat.php?action=addparent">Add Parent Category</a></li>
  						<li><a href="{$BACKEND}/managecat.php?action=addsubcat">Add Sub Category</a></li>
  						<li><a href="{$BACKEND}/managecat.php?action=viewparent">Manage Parent Categories</a></li>
  						<li class="last"><a href="{$BACKEND}/managecat.php?action=viewsub">Manage Sub Categories</a></li>
  					</ul>
  				</li>  				
  				<li {If $filename == 'manageblist' } class="active" {/If} >
  					<a href="{$BACKEND}">Buisiness Listing</a>
  					<ul>
  						<li><a href="{$BACKEND}manageblist.php?action=addbuisiness">Add buisiness</a></li>
  						<li class="last"><a href="{$BACKEND}manageblist.php?action=viewbuisiness">Manage Buisiness</a></li>
  					</ul>
  				</li>  				
  				<li {If $filename == 'managegallery' } class="active" {/If} >
  					<a href="{$BACKEND}/managegallery.php">Gallery</a>
  					<ul>
  						<li><a href="{$BACKEND}/managegallery.php?action=add">Add gallery</a></li>
  						<li class="last"><a href="{$BACKEND}/managegallery.php?action=viewall">Manage galleries</a></li>
  					</ul>
  				</li>  				
  				<li {If $filename == 'manageuser' || $filename == 'manageusertype' } class="active" {/If} >
  					<a href="{$BACKEND}">Users</a>
  					<ul>
  						<li><a href="{$BACKEND}">Add user</a></li>
  						<li><a href="{$BACKEND}">Manage User</a></li>
  						<li class="last"><a href="{$BACKEND}/manageusertype.php?action=viewall">Manage Usertypes</a></li>
  					</ul>
  				</li>  				
  				<li {If $filename == 'managepages' } class="active" {/If} >
  					<a href="{$BACKEND}/managepages.php">Pages</a>
  					<ul>
  						<li><a href="{$BACKEND}/managepages.php?action=addpage">Add page</a></li>
  						<li class="last"><a href="{$BACKEND}/managepages.php?action=viewall">Manage page</a></li>
  					</ul>
  				</li>  				
  				<li {If $filename == 'managewebforms' } class="active" {/If} >
  					<a href="{$BACKEND}/managewebforms.php">Webforms</a>
  					<ul>
  						<li><a href="{$BACKEND}/managewebforms.php?action=listRlist">Request Listing</a></li>
  						<li><a href="{$BACKEND}/managewebforms.php?action=listSlist">Suggest Listing</a></li>
  						<li><a href="{$BACKEND}/managewebforms.php?action=listFlist">Feedback</a></li>
  						<li class="last"><a href="{$BACKEND}/managewebforms.php?action=listClist">Contact Us</a></li>
  					</ul>
  				</li>  				
  				<li {If 
  						$filename == 'manageadmin' 
  						|| $filename == 'managecountries' 
  						|| $filename == 'managebackup'
  						|| $filename == 'cachemgmt'} class="active" {/If} >
  					<a href="{$BACKEND}">System</a>
  					<ul>
  						<li><a href="{$BACKEND}/manageadmin.php?action=edit&id={$smarty.session.adminId}">Manage Admin</a></li>
  						<li><a href="{$BACKEND}/managecountries.php?type=country">Manage Country</a></li>  						
  						<li><a href="{$BACKEND}/cachemgmt.php">Manage Cache</a></li>
  						<li class="last"><a href="{$BACKEND}/managebackup.php">Backup Databse</a></li>
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
        .stop(true, true).slideToggle('medium');
    });
});
</script>
{/literal}


