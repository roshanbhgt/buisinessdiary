<?php
    // Including config file
    require('configs/config.php');

    // Checked whether user is login or not 
    checkAuthentication();

    $smarty->assign("title","Buisiness Diary - Manage countries");
    
    $objSystem = new System();
    
    if(isset($_POST) && $_POST['addcountry'] == 'addcountry' ){
        $country = ucfirst(trim($_POST['country'])); 
        if($country == NULL){
            $variables['error'] = "Country name can't be empty";
        }else{
            if($objSystem->addCountry($country)){
                $variables['success'] = "Country added successfully";
            } else {
                $variables['error'] = "Unable to add country";
            }   
        }
        $smarty->assign("centercontent",$smarty->fetch("country/add.tpl"));
    }
    
    if(isset($_POST) && $_POST['updatecountry'] == 'updatecountry' ){
        $country = ucfirst(trim($_POST['country'])); 
        $id = intval($_POST['id']);
        if($country == NULL){
            $variables['error'] = "Country name can't be empty";
        }else{
            $data = $_POST;            
            if($objSystem->updateCountry($data)){
                $variables['success'] = "Country added successfully";
            } else {
                $variables['error'] = "Unable to add country";
            }   
        }
        $country = $objSystem->getCountry($id); 
        $smarty->assign("country",$country);
        $smarty->assign("centercontent",$smarty->fetch("country/edit.tpl"));
    }
    
    if(isset($_POST) && $_POST['addcountry'] == 'addstate' ){
        $countryAll = $objSystem->getAllCountries();            
        $smarty->assign("countryies",$countryAll);
        $smarty->assign("centercontent",$smarty->fetch("country/add.tpl"));
    }
    
    if(isset($_GET) && $_GET['type'] == 'country' && $_GET['action'] == 'add'){
        $countryAll = $objSystem->getAllCountries();            
        $smarty->assign("countryies",$countryAll);
        $smarty->assign("centercontent",$smarty->fetch("country/add.tpl"));
    }
    
    if(isset($_GET) && $_GET['type'] == 'state' && $_GET['action'] == 'add'){
        $countryAll = $objSystem->getAllCountries();           
        $smarty->assign("countryies",$countryAll);
        $smarty->assign("centercontent",$smarty->fetch("country/add.tpl"));
    }
    
    if(isset($_GET) && $_GET['type'] == 'country' && $_GET['action'] == 'edit'){
        $id = intval($_GET['id']);
        $country = $objSystem->getCountry($id);            
        $smarty->assign("country",$country);
        $smarty->assign("centercontent",$smarty->fetch("country/edit.tpl"));
    }
    
    if(isset($_GET) && $_GET['type'] == 'state' && $_GET['action'] == 'edit'){
        $countryAll = $objSystem->getAllCountries();            
        $smarty->assign("countryies",$countryAll);
        $smarty->assign("centercontent",$smarty->fetch("country/edit.tpl"));
    }
    
    if(isset($_GET) && $_GET['type'] == 'state' && $_GET['action'] == 'viewall' || $_GET['action'] == ''){
        $countryAll = $objSystem->getAllCountries();            
        $smarty->assign("countryies",$countryAll);
        $smarty->assign("centercontent",$smarty->fetch("country/viewall.tpl"));
    }

    if(isset($_GET) && $_GET['type'] == 'country' && $_GET['action'] == 'viewall' || $_GET['action'] == ''){
        $countryAll = $objSystem->getAllCountries();            
        $smarty->assign("countryies",$countryAll);
        $smarty->assign("centercontent",$smarty->fetch("country/viewall.tpl"));
    }

    /* output to template */
    $smarty->assign("variables", $variables);
    $smarty->assign("left",$smarty->fetch("country/leftmenu.tpl"));
    $smarty->assign("contentheading","Manage countries");
    $smarty->assign("content",$smarty->fetch("country/country.tpl"));
    $smarty->display("main.html");

?>