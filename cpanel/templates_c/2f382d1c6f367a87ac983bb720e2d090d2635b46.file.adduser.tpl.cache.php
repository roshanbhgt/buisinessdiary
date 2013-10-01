<?php /* Smarty version Smarty-3.1.14, created on 2013-09-21 20:31:20
         compiled from ".\templates\admin\adduser.tpl" */ ?>
<?php /*%%SmartyHeaderCode:21564523db4c08dddd8-91702915%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2f382d1c6f367a87ac983bb720e2d090d2635b46' => 
    array (
      0 => '.\\templates\\admin\\adduser.tpl',
      1 => 1378701186,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21564523db4c08dddd8-91702915',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'variables' => 0,
    'captcha' => 1,
  ),
  'has_nocache_code' => true,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_523db4c0a64825_26620684',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_523db4c0a64825_26620684')) {function content_523db4c0a64825_26620684($_smarty_tpl) {?>
<script type="text/javascript">
	 var RecaptchaOptions = {
	    theme : 'clean',
	 };
</script>


<?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
    <div class="success"><?php echo $_smarty_tpl->tpl_vars['variables']->value['success'];?>
</div>
<?php }elseif(($_smarty_tpl->tpl_vars['variables']->value['adduserError']!='')){?>
    <div class="error"><?php echo $_smarty_tpl->tpl_vars['variables']->value['adduserError'];?>
</div>
<?php }?>
<form name="adduser" method="post" id="adduserform" >
    <fieldset>
  	<legend>Admin add user</legend>
        <table class="left" width="50%">                
        <tr>
                <td align="left" valign="middle" width="200"><label>First name</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="firstname" value="<?php echo $_POST['firstname'];?>
"></td>	
        </tr>
        <tr>
                <td align="left" valign="middle"><label>Last name</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="lastname" value="<?php echo $_POST['lastname'];?>
"></td>	
        </tr>
        <tr>
                <td align="left" valign="middle"><label>Email</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="email" value="<?php echo $_POST['email'];?>
"></td>	
        </tr>
        <tr>
                <td align="left" valign="middle"><label>Username</label><span class="required">*</span></td>
                <td align="left"><input class="inputbox" type="text" name="username" value="<?php echo $_POST['username'];?>
"></td>	
        </tr>
        <tr>
                <td align="left" valign="middle"><label>Password</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="password" name="password" value="<?php echo $_POST['password'];?>
"></td>	
        </tr>
        <!-- <tr>
                <td colspan="2" align="center" valign="middle"><?php echo '/*%%SmartyNocache:21564523db4c08dddd8-91702915%%*/<?php echo $_smarty_tpl->tpl_vars[\'captcha\']->value;?>
/*/%%SmartyNocache:21564523db4c08dddd8-91702915%%*/';?>
</td>
        </tr> -->
        <tr>
                <td colspan="2" align="right"><button name="adduser" value="adduser">Submit</button></td>	
        </tr>
        <tr>
                <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
        </tr>
        </table>
    </fieldset>
</form><?php }} ?>