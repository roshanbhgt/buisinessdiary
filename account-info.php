<?php
	// Includng configuration file
	include 'configs/config.php';

    // Check whether user is login or not
    checkAuthentication();

    $variables = array();

    $data = $_POST;
   if( $data['accountinfosubmit'] == 'update' && $data['firstname'] != '' && $data['lastname'] != '' && $data['email'] != '' ) {
        if ($objUser->duplEmail($data['email'])) {
            $variables['error'] = 'Account with email '.$data['email'].' already exist.';
        } else {
            if($objUser->updateUserInfo($data)){
                $variables['success'] = 'Your details has been updated successfully';
                if(isset($data['change_password']) && $data['change_password'] == 1){
                    $variables['success'] .= 'Password has been updated successfully';
                }
            }else{
                $variables['error'] = 'Unable to update user details.';
            }
        }
    } elseif($data['accountinfosubmit'] == 'update' && ( $data['firstname'] == '' || $data['lastname'] == '' || $data['email'] == '' )) {
        $variables['error'] = 'All the * mark fields are required.';
    }

    $user = $objUser->getUserInformation();

    $smarty->assign('user',$user);
    $smarty->assign('variables', $variables);
    $smarty->assign('title', 'Account Information');
    $smarty->assign('content', $smarty->fetch('user/accountinfo.tpl'));
    $smarty->display('two-coloumn-left.html');

?>