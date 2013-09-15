<?php /* Smarty version Smarty-3.1.14, created on 2013-09-15 21:21:14
         compiled from ".\templates\menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:145825235d772712898-58456742%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '85192c6e9f55456bef8cf932502504a0684ee09b' => 
    array (
      0 => '.\\templates\\menu.tpl',
      1 => 1378725650,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '145825235d772712898-58456742',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'filename' => 0,
    'BACKEND' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_5235d7728a8cf3_88375219',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5235d7728a8cf3_88375219')) {function content_5235d7728a8cf3_88375219($_smarty_tpl) {?><table width="100%" border="0">
	<tr>
  		<td colspan="2" align="left" valign="top" class="navbar">
  			<ul id ="navmenu" class="navmenu level0" >
  				<li <?php if ($_smarty_tpl->tpl_vars['filename']->value=='index'){?> class="active" <?php }?> ><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Dashbord</a></li>  				
  				<li <?php if ($_smarty_tpl->tpl_vars['filename']->value=='managecat'){?> class="active" <?php }?> >
  					<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Categories</a>
  					<ul>
  						<li><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Add Category</a></li>
  						<li class="last"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Manage Categories</a></li>
  					</ul>
  				</li>  				
  				<li <?php if ($_smarty_tpl->tpl_vars['filename']->value=='managelist'){?> class="active" <?php }?> >
  					<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Buisiness Listing</a>
  					<ul>
  						<li><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Add buisiness</a></li>
  						<li class="last"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Manage Buisiness</a></li>
  					</ul>
  				</li>  				
  				<li <?php if ($_smarty_tpl->tpl_vars['filename']->value=='managegal'){?> class="active" <?php }?> >
  					<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Gallery</a>
  					<ul>
  						<li><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Add gallery</a></li>
  						<li class="last"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Manage galleries</a></li>
  					</ul>
  				</li>  				
  				<li <?php if ($_smarty_tpl->tpl_vars['filename']->value=='manageuser'){?> class="active" <?php }?> >
  					<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Users</a>
  					<ul>
  						<li><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Add user</a></li>
  						<li class="last"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Manage User</a></li>
  					</ul>
  				</li>  				
  				<li <?php if ($_smarty_tpl->tpl_vars['filename']->value=='managepages'){?> class="active" <?php }?> >
  					<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Pages</a>
  					<ul>
  						<li><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Add page</a></li>
  						<li class="last"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Manage page</a></li>
  					</ul>
  				</li>  				
  				<li <?php if ($_smarty_tpl->tpl_vars['filename']->value=='managewebforms'){?> class="active" <?php }?> >
  					<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Webforms</a>
  					<ul>
  						<li class="last"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">Manage webforms</a></li>
  					</ul>
  				</li>  				
  				<li <?php if ($_smarty_tpl->tpl_vars['filename']->value=='manageadmin'||$_smarty_tpl->tpl_vars['filename']->value=='managecountries'||$_smarty_tpl->tpl_vars['filename']->value=='cachemgmt'){?> class="active" <?php }?> >
  					<a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
">System</a>
  					<ul>
  						<li><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
manageadmin.php?action=edit&id=<?php echo $_SESSION['adminId'];?>
">Manage Admin</a></li>
  						<li><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
managecountries.php?type=country">Manage Country</a></li>  						
  						<li class="last"><a href="<?php echo $_smarty_tpl->tpl_vars['BACKEND']->value;?>
cachemgmt.php">Manage Cache</a></li>
  					</ul>
  				</li>
  		</ul>
  		</td>
	</tr>
</table>


<script type="text/javascript">
$(function(){
    $('#navmenu').find('> li').hover(function(){
        $(this).find('ul')
        .addClass('over')
        .stop(true, true).slideToggle('fast');
    });
});
</script>



<?php }} ?>