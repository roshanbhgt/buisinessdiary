<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();

$smarty->assign("title","Buisiness Diary - Welcome to the admin");

      
    // From the APIs console
    $client_id = '152284621414-s6g9548re2s2e6liraq9lc0gdug0nkcm.apps.googleusercontent.com';
    
    // From the APIs console
    $client_secret = 'n4U9RWPb81lPb7U7lLdAo15Z';
    
     // Url to your this page, must match the one in the APIs console
    $redirect_uri = 'http://www.businessdiary.co.in/cpanel';

    // Analytics account id like, 'ga:xxxxxxx'
    $account_id = 'ga:47488904';
    
    session_start();
    
    $ga = new Analytics(); 
    $ga->auth->setClientId($client_id);
    $ga->auth->setClientSecret($client_secret);
    $ga->auth->setRedirectUri($redirect_uri);

    if (isset($_GET['force_oauth'])) {
        $_SESSION['oauth_access_token'] = null;
    }


    /*
     *  Step 1: Check if we have an oAuth access token in our session
     *          If we've got $_GET['code'], move to the next step
     */
    if (!isset($_SESSION['oauth_access_token']) && !isset($_GET['code'])) {
        // Go get the url of the authentication page, redirect the client and go get that token!
        $url = $ga->auth->buildAuthUrl();
        header("Location: ".$url);
    } 

    /*
     *  Step 2: Returning from the Google oAuth page, the access token should be in $_GET['code']
     */
    if (!isset($_SESSION['oauth_access_token']) && isset($_GET['code'])) {
        $auth = $ga->auth->getAccessToken($_GET['code']);
        if ($auth['http_code'] == 200) {
            $accessToken    = $auth['access_token'];
            $refreshToken   = $auth['refresh_token'];
            $tokenExpires   = $auth['expires_in'];
            $tokenCreated   = time();
            
            // For simplicity of the example we only store the accessToken
            // If it expires use the refreshToken to get a fresh one
            $_SESSION['oauth_access_token'] = $accessToken;
        } else {
            die("Sorry, something wend wrong retrieving the oAuth tokens");
        }
    }
    
    /*
     *  Step 3: Do real stuff!
     *          If we're here, we sure we've got an access token
     */
    $ga->setAccessToken($_SESSION['oauth_access_token']);
    $ga->setAccountId($account_id);

    
    // Set the default params. For example the start/end dates and max-results
    $defaults = array(
        'start-date' => date('Y-m-d', strtotime('-1 month')),
        'end-date'   => date('Y-m-d'),
    );
    $ga->setDefaultQueryParams($defaults);

    $params = array(
        'metrics'    => 'ga:visits',
        'dimensions' => 'ga:date',
    );
    $visits = $ga->query($params);
    
    print "<pre>";
    var_dump($visits);
    print "</pre>";
$smarty->assign("contentheading", "Dashboard");
$smarty->assign("content",$smarty->fetch("dashboard.tpl"));

/* output to template */
$smarty->display("main.html");



?>

