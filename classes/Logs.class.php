<?php

class Logs{

    public function logUrl($visitorid){
        global $dbObj;
        $sql = "INSERT INTO
                    ".LOGURL."
                SET
                    visitor_id  = '".$visitorid."',
                    visit_time = NOW() ";
        if($dbObj->query($sql)){
            return $dbObj->last_id();
        }else{
            return false;
        }
    }

    public function logUrlInfo($urlid,$url,$urlreferer){
        global $dbObj;
        $sql = "INSERT INTO
                    ".LOGURLINFO."
                SET
                    url_id = '".$urlid."',
                    url  = '".$url."',
                    referer = '".$urlreferer."' ";
        if($dbObj->query($sql)){
            return true;
        }else{
            return false;
        }
    }

    public function logVisitor($sessionid){
        global $dbObj;
        $sql = "INSERT INTO
                    ".LOGVISITOR."
                SET
                    session_id = '".$sessionid."',
                    last_url_id  = '0',
                    first_visit_at  = NOW(),
                    last_visit_at = NOW() ";
        if($dbObj->query($sql)){
            return $dbObj->last_id();
        }else{
            return false;
        }
    }

    public function logVisitorInfo($visitorid, $httpreferer, $httpagent, $httpcharset, $httplang, $serveradd, $remoteadd){
        global $dbObj;
        $sql = "INSERT INTO
                    ".LOGVISITORINFO."
                SET
                    visitor_id = '".$visitorid."',
                    http_referer = '".$httpreferer."',
                    http_user_agent = '".$httpagent."',
                    http_accept_charset = '".$httpcharset."',
                    http_accept_language = '".$httplang."',
                    server_addr = '".$serveradd."',
                    remote_addr = '".$remoteadd."' ";
        if($dbObj->query($sql)){
            return true;
        }else{
            return false;
        }
    }

    public function updateLogVisitor($lasturlid,$visitorid){
        global $dbObj;
        $sql = "UPDATE
                    ".LOGVISITOR."
                SET
                    last_url_id  = '".$lasturlid."',
                    last_visit_at  = NOW()
                WHERE
                    visitor_id = '".$visitorid."' ";

        if($dbObj->query($sql)){
            return true;
        }else{
            return false;
        }
    }

    public function updateUrlVisitDuration($lasturlid){
        global $dbObj;
        $sql = "UPDATE
                    ".LOGURL."
                SET
                    leave_time  = NOW()
                WHERE
                    url_id = '".$lasturlid."' ";

        if($dbObj->query($sql)){
            return true;
        }else{
            return false;
        }
    }
}

?>