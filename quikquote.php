<?php
/**
 * Created by PhpStorm.
 * User: HP
 * Date: 7/3/14
 * Time: 4:39 PM
 */

// Includng configuration file
include 'configs/config.php';
$variables = array();

$objWebforms = new Webforms();
if($_POST){
    $data = $_POST;
    if($data['name'] == null && $data['email'] == null && $data['mobile'] == null
        && $data['message'] == null && $data['bannersize'] == null ){
        $variables['success'] = 0;
        $variables['message'] = "All the fields are required.";

    } else {
        if (!validateEmail($data['email'])) {
            $variables['success'] = 0;
            $variables['message'] = "Please enter a valid email address.";

        } else {
            if ($objWebforms->addQuikQuote($data)) {
                $variables['success'] = 0;
                $variables['message'] = "Thank you for requesting quote.";

            } else {
                $variables['success'] = 0;
                $variables['message'] = "Error submitting the form.";

            }
        }
    }
}

$smarty->assign('title', 'Quickquote');
$smarty->assign('variables', $variables);
$smarty->assign('content', $smarty->fetch('webforms/quickquote.tpl'));
$smarty->display('two-coloumn-right.html');
