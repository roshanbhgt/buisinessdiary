<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage newsletter");

$objEnews = new Enewsletter();

if(isset($_GET) && $_GET['action'] == 'viewall' || $_GET['action'] == ''){
    $pageId = intval($_GET['page']);
    $result = $objEnews->getNewsletterEmail($pageId);
    $adminNewsEmails = $result['newslemail'];
    $pageCount = $result['pagecount'];
    $smarty->assign("pages", $pageCount);
    $smarty->assign("newsletteremails",$adminNewsEmails);
    $smarty->assign("centercontent",$smarty->fetch("newsletter/viewall.tpl"));
}

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("newsletter/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Newsletter");
$smarty->assign("content",$smarty->fetch("newsletter/newsletter.tpl"));

/* output to template */
$smarty->display("main.html");

?>