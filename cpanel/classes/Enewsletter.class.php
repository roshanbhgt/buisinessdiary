<?php
/**
 * Created by PhpStorm.
 * User: Roshan
 * Date: 2/2/14
 * Time: 9:52 PM
 */

class Enewsletter {

    /**
     * @param $pageId
     * @return newsletter
     *
     */
    public function getNewsletterEmail($pageId){
        if($pageId > 0){
            $pageId = $pageId - 1;
        }
        global $dbObj;
        $sql = "SELECT * FROM ".EMAILNEWSLETTER." ORDER BY created_date DESC ";
        $count = $dbObj->num_rows($dbObj->query($sql));
        $pageNumCount = getPagination($count);
        if($pageId > 0 || $count > REC_PER_PAGE){
            $sql .= "LIMIT ".($pageId*REC_PER_PAGE).", ".REC_PER_PAGE;
        }
        $res = $dbObj->fetch_all_array($sql);
        return array("newslemail"=>$res, "pagecount"=>$pageNumCount);
    }
} 