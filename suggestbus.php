<?php
// Includng configuration file
include 'configs/config.php';

$objWebforms = new Webforms();
if($_POST){
    $data = $_POST;
    if( $data['yname'] == null && $data['yemail'] == null && $data['category'] == null && $data['email'] == null && $data['company'] == null
        && $data['description'] == null && $data['address'] == null && $data['city'] == null
        && $data['state'] == null && $data['country'] == null && $data['postcode'] == null && $data['telephone'] == null){
        echo "All the fields are required.";
    } else {
        if (!validateEmail($data['email'])) {
            echo "Please enter a valid email address.";
            exit;
        } else {
            if ($objWebforms->suggestAddListing($data)) {
                echo "Thank you for requesting listing.";
                exit;
            } else {
                echo "Error submitting the form.";
                exit;
            }
        }
    }
}

$smarty->assign('content', $smarty->fetch('webforms/suggestbus.tpl'));
$smarty->display('two-coloumn-right.html');

?>