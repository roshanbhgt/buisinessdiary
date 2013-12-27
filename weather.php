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





// $city = file_get_contents('http://api.hostip.info/get_html.php?ip='.$_SERVER['HOST']);
// Reformat the data returned (Keep only country and country abbr.)
// $city = explode (" ", $city);
// $city = $city[0];
// echo "Country : ".$only_country[1]." ".substr($only_country[2],0,4);

$city = "Nagpur";

$result1 = file_get_contents("http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.places%20where%20text%3D%22$city%22&format=xml");
$xml1 = simplexml_load_string($result1);
 $woeid=$xml1->results->place->woeid;

if($woeid!="")
{
$fetchData = file_get_contents("http://weather.yahooapis.com/forecastrss?w=$woeid&u=c");
$xmlData = simplexml_load_string($fetchData);
$location = $xmlData->channel->xpath('yweather:location');


if(!empty($location))
{

foreach($xmlData->channel->item as $data)
{
$current_condition = $data->xpath('yweather:condition');
$forecast = $data->xpath('yweather:forecast');
$current_condition = $current_condition[0];
echo "
<table width=40% border=1 align=center>
<tr>
<td align=center style='background-color:yellow'>
  <h1>{$location[0]['city']}, {$location[0]['region']}</h1>
<small>Date: {$current_condition['date']}</small>
<h2>Current Temprature</h2>
<p>
<span style=\"font-size:64px;font-color:red; font-weight:bold;\">{$current_condition['temp']}&deg;C</span>
<br/>
<img src=\"http://l.yimg.com/a/i/us/we/52/{$current_condition['code']}.gif\" style=\"vertical-align: middle;\"/>
{$current_condition['text']}
</p>
<h2>Forecast</h2>
<b>{$forecast[0]['day']}</b> : {$forecast[0]['text']}. <b>High:</b> {$forecast[0]['high']} <b>Low:</b> {$forecast[0]['low']}
<br/>
<b>{$forecast[1]['day']}</b> - {$forecast[1]['text']}. <b>High:</b> {$forecast[1]['high']} <b>Low:</b> {$forecast[1]['low']}
</p>
</td>
</tr></table>
";
}
}
else
{
echo "<h1>please try a different City.</h1>";
}


}
else
{
echo "<h1>Please try a different City.</h1>";
}

?>