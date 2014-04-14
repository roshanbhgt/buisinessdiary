<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();

$smarty->assign("title","Buisiness Diary - Welcome to the admin");

$oAnalytics = new Analytics("roshanbhgt@gmail.com", "shrungarika");

try {
      
      
      // set it up to use caching
      $oAnalytics->useCache();
      
      // $oAnalytics->setProfileByName('Business Diary');
      $oAnalytics->setProfileById('ga:47488904');
      
      // set the date range
      $oAnalytics->setMonth(date('n'), date('Y'));
      // or $oAnalytics->setDateRange('YYYY-MM-DD', 'YYYY-MM-DD');
      
      echo '<pre>';
      // print out visitors for given period
      print_r($oAnalytics->getVisitors());
      
      // print out pageviews for given period
      print_r($oAnalytics->getPageviews());
      
      // use dimensions and metrics for output
      // see: http://code.google.com/intl/nl/apis/analytics/docs/gdata/gdataReferenceDimensionsMetrics.html
      print_r($oAnalytics->getData(array(   'dimensions' => 'ga:keyword',
                                            'metrics'    => 'ga:visits',
                                            'sort'       => 'ga:keyword')));
      
  } catch (Exception $e) { 
      echo 'Caught exception: ' . $e->getMessage(); 
  }

$smarty->assign("contentheading", "Dashboard");
$smarty->assign("content",$smarty->fetch("dashboard.tpl"));

/* output to template */
$smarty->display("main.html");



?>

