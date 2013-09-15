<?php /* Smarty version Smarty-3.1.14, created on 2013-09-09 17:43:57
         compiled from ".\templates\country\add.tpl" */ ?>
<?php /*%%SmartyHeaderCode:24024522dbb854e51b8-80257700%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c5977a50fe457a86a85602a96651f15b0ad6325f' => 
    array (
      0 => '.\\templates\\country\\add.tpl',
      1 => 1378727424,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '24024522dbb854e51b8-80257700',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'variables' => 0,
    'countryies' => 0,
    'country' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_522dbb855dab51_97814151',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_522dbb855dab51_97814151')) {function content_522dbb855dab51_97814151($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
    <div class="success"><?php echo $_smarty_tpl->tpl_vars['variables']->value['success'];?>
</div>
<?php }elseif(($_smarty_tpl->tpl_vars['variables']->value['error']!='')){?>
    <div class="error"><?php echo $_smarty_tpl->tpl_vars['variables']->value['error'];?>
</div>
<?php }?>
<?php if ($_GET['type']=='country'){?>    
<form name="addcountry" method="post" id="addcountryform" >
    <fieldset>
  	<legend>Add country</legend>
        <table class="left" width="50%">                
            <tr>
                <td align="left" valign="middle" width="200"><label>Country</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="country" value="<?php echo $_POST['country'];?>
"></td>	
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
<?php }elseif($_GET['type']=="state"){?>        
<form name="addcountry" method="post" id="addcountryform" >
    <fieldset>
  	<legend>Add state</legend>
        <table class="left" width="50%">                
            <tr>
                <td align="left" valign="middle" width="200"><label>Coutry </label><span class="required">*</span></td>
                <td align="left" valign="middle">                    
                    <select name="country" class="selectbox">
                        <option value="">Please select</option>
                        <?php  $_smarty_tpl->tpl_vars['country'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['country']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['countryies']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['country']->key => $_smarty_tpl->tpl_vars['country']->value){
$_smarty_tpl->tpl_vars['country']->_loop = true;
?>	
                        <option value="<?php echo $_smarty_tpl->tpl_vars['country']->value['countryId'];?>
"><?php echo $_smarty_tpl->tpl_vars['country']->value['title'];?>
</option>
                        <?php } ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="left" valign="middle" width="200"><label>State</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="state" value="<?php echo $_POST['state'];?>
"></td>	
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
<?php }?>        <?php }} ?>