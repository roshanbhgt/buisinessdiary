<?php
/*

Example: Yahoo! Weather API Example Using SimpleXML in PHP.

The base URL for the Weather RSS feed is
http://weather.yahooapis.com/forecastrss

Parameters
w WOEID 
e.g: w=111111

u Units for temperature
f: Fahrenheit
c: Celsius 
e.g.: u=c

*/


$ip = $_SERVER['REMOTE_ADDR']; 
$query = @unserialize(file_get_contents('http://ip-api.com/php/'.$ip));
if($query && $query['status'] == 'success') {
    $city = $query['city'];
} else {
$city = 'India';
}

$result1 = file_get_contents("http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.places%20where%20text%3D%22$city%22&format=xml");
$xml1 = simplexml_load_string($result1);
$woeid=$xml1->results->place->woeid;

if($woeid!="")
{
	$fetchData = file_get_contents("http://weather.yahooapis.com/forecastrss?w=$woeid&u=c");	
	$xmlData = simplexml_load_string($fetchData);
	$location = $xmlData->channel->xpath('yweather:location');
	if(!empty($location) && !empty($xmlData))
	{
		foreach($xmlData->channel->item as $data)
		{
			$current_condition = $data->xpath('yweather:condition');
			$forecast = $data->xpath('yweather:forecast');
			$current_condition = $current_condition[0];
			
			echo "<span id='wxIntro' style='padding-top:0 !important;'>
			{$location[0]['city']}, {$location[0]['region']}, {$location[0]['country']}<br/><small>{$current_condition['date']}</small>
			</span>
			<span id='wxIcon2' ><img src=\"http://l.yimg.com/a/i/us/we/52/{$current_condition['code']}.gif\" style=\"vertical-align: middle;\" width='52' height='36'/></span>
			<span id='wxTemp'>{$current_condition['temp']}&deg;C</span>";
		}
	}
}

?>