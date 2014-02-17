<?php
    // Including configuration file
    include "configs/config.php";

    $objWebforms = new Webforms();
    if($_POST){
        $data = $_POST;

        if($data['category'] == null && $data['email'] == null && $data['company'] == null
            && $data['description'] == null && $data['address'] == null && $data['city'] == null
            && $data['state'] == null && $data['country'] == null && $data['postcode'] == null && $data['telephone'] == null){
            echo "All the fields are required.";
        } else {
            if (!validateEmail($data['email'])) {
                echo "Please enter a valid email address.";
            } else {
                if ($objWebforms->quikAddListing($data)) {
                    echo "Thank you for requesting listing.";
                } else {
                    echo "Error submitting the form.";
                }
            }
        }
    }
?>