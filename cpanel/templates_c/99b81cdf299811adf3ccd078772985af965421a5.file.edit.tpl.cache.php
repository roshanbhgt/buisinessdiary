<?php /* Smarty version Smarty-3.1.14, created on 2013-09-09 17:50:59
         compiled from ".\templates\country\edit.tpl" */ ?>
<?php /*%%SmartyHeaderCode:28545522dbd2b138e47-24757986%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '99b81cdf299811adf3ccd078772985af965421a5' => 
    array (
      0 => '.\\templates\\country\\edit.tpl',
      1 => 1378726034,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '28545522dbd2b138e47-24757986',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'variables' => 0,
    'country' => 0,
    'countries' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_522dbd2b23aa70_33245029',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_522dbd2b23aa70_33245029')) {function content_522dbd2b23aa70_33245029($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['variables']->value['success']!='')){?>
    <div class="success"><?php echo $_smarty_tpl->tpl_vars['variables']->value['success'];?>
</div>
<?php }elseif(($_smarty_tpl->tpl_vars['variables']->value['error']!='')){?>
    <div class="error"><?php echo $_smarty_tpl->tpl_vars['variables']->value['error'];?>
</div>
<?php }?>
<?php if ($_GET['type']=='country'){?>    
<form name="editcountry" method="post" id="editcountryform" >
    <fieldset>
        <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['country']->value['countryId'];?>
" />
  	<legend>Add country</legend>
        <table class="left" width="50%">                
            <tr>
                <td align="left" valign="middle" width="200"><label>Country</label><span class="required">*</span></td>
                <td align="left" valign="middle"><input class="inputbox" type="text" name="country" value="<?php echo $_smarty_tpl->tpl_vars['country']->value['title'];?>
"></td>	
            </tr>
            <tr>
                <td colspan="2" align="right"><button name="updatecountry" value="updatecountry">Submit</button></td>	
            </tr>
            <tr>
                <td colspan="2" align="right"><small>All * mark fields are required.</small></td>	
            </tr>
        </table>
    </fieldset>
</form>
<?php }elseif($_GET['type']=="state"){?>        
<form name="addstate" method="post" id="addstateform" >
    <fieldset>
  	<legend>Add state</legend> 
        <table class="left" width="50%">                
            <tr>
                <td align="left" valign="middle" width="200"><label>Coutry </label><span class="required">*</span></td>
                <td align="left" valign="middle">                    
                    <select name="country">
                        <option value="">Please select</option>
                        <?php  $_smarty_tpl->tpl_vars['country'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['country']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['countries']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
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