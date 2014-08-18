<?php

    // Including config file
    require('configs/config.php');

    $httpurl = $_POST['url'];
    if($_POST['referer'] != ''){
        $httpreferer = $_POST['referer'];
    }else{
        $httpreferer = '/';
    }

    $sid = session_id();
    if($sid != $_SESSION['session_id']){
        $_SESSION['session_id'] = $sid;
        $vid = $logs->logVisitor($sid);
        $_SESSION['visitor_id'] = $vid;
        if($_POST['referer'] != ''){
            $http_referer = $_POST['referer'];
        }else{
            $http_referer = '/';
        }
        $http_user_agent = $_SERVER['HTTP_USER_AGENT'];
        $http_accept_charset = $_SERVER['HTTP_ACCEPT_CHARSET'];
        $http_accept_lang = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
        $server_addr = $_SERVER['SERVER_ADDR'];
        $remote_addr = $_SERVER['REMOTE_ADDR'];
        $logs->logVisitorInfo($vid, $http_referer, $http_user_agent, $http_accept_charset, $http_accept_lang, $server_addr, $remote_addr);
    }

    $visitorid = $_SESSION['visitor_id'];

    if($httpurl != '' || $httpreferer != ''){
        if($httpurl != $_SESSION['url']){
            if($urlid = $logs->logUrl($visitorid)){
                if($logs->logUrlInfo($urlid,$httpurl,$httpreferer)){
                    $logs->updateLogVisitor($urlid, $visitorid);
                    $logs->updateUrlVisitDuration($_SESSION['last_url_id']);
                    $_SESSION['url'] = $httpurl;
                    $_SESSION['last_url_id'] = $urlid;
                }
            }
        } else {
            $logs->updateUrlVisitDuration($_SESSION['last_url_id']);
        }
    }

?>