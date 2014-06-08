<?php
	// Includng configuration file
	include 'configs/config.php';

	$objSearch = new Search();
    $data = $_GET;

    if(isset($data['p']) || $data['q']){
    	$p = $data['p'];
    	$q = $data['q'];
    	$results = $objSearch->getSearchResult($p, $q);
    	if(is_array($results)){
    		$smarty->assign('businesslist', $results);
    	}
    }

    $smarty->assign('title', $category['title']);
	$smarty->assign('content', $smarty->fetch('search/list.tpl'));
	$smarty->display('two-coloumn-right.html');
?>