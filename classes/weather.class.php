<?php
class Weather {

public $conditions;
private $dom;
private $wURL;

function __construct($city=null,$state=null)
{
if (empty($city) OR empty($state)) trigger_error("City/State Musn't be null", E_USER_ERROR);
$this->conditions = array();
$this->dom = new DOMDocument();
$this->wURL = sprintf("http://www.wunderground.com/cgi-bin/findweather/getForecast?query=%s, %s&wuSelect=WEATHER", $city, $state);
@$this->dom->loadHTMLFile($this->wURL);
$this->parseWeather();
}

private function parseWeather()
{
$cells = $this->dom->getElementsByTagName('td');

foreach ($cells as $cell)
{
if ($cell->getAttribute('class') == "vaM taC")
{
$img = $cell->firstChild;
$this->conditions['currentConditionsIMG'] = $img->getAttribute('src');
}
}

$spans = $this->dom->getElementsByTagName('span');

foreach ($spans as $span)
{
$spanNode = preg_replace(array('Â', '/\s+/'), ", $span->lastChild->nodeValue);
if ($span->getAttribute('pwsvariable') == 'tempf')
{
if (empty($this->conditions['currentTemperatureF]))
$this->conditions['currentTemperatureF'] = $span->getAttribute('value');
$this->conditions['currentTemperatureC'] = number_format((5/9) * ($this->conditions['currentTemperatureF'] – 32), 1);
}

if ($span->getAttribute('pwsvariable') == 'humidity')
{
if (empty($this->conditions['humidity']))
$this->conditions['humidity'] = $span->getAttribute('value') . "%";
}

if ($span->getAttribute('pwsvariable') == 'dewptf')
{
if (empty($this->conditions['dewPtF']))
$this->conditions['dewPtF'] = $span->getAttribute('value');
$this->conditions['dewPtC'] = number_format((5/9) * ($this->conditions['dewPtF'] – 32));
}

if ($span->getAttribute('pwsvariable') == 'windspeedmph')
{
if (empty($this->conditions['windMPH']))
$this->conditions['windMPH'] = preg_replace(array('/Â/', '/\s+/', '/mph/'), ", $span->firstChild->nextSibling->nodeValue);
$this->conditions['windKMH'] = number_format(($this->conditions['windMPH'] * 1.609), 1);
}

if ($span->getAttribute('pwsvariable') == 'winddir')
{
if (empty($this->conditions['windDirection']))
$this->conditions['windDirection'] = $span->getAttribute('value');
}

if ($span->getAttribute('pwsvariable') == 'windgustmph')
{
if (empty($this->conditions['gustMPH']))
$this->conditions['gustMPH'] = preg_replace(array('/Â/', '/\s+/', '/mph/'), ", $span->firstChild->nextSibling->nodeValue);
$this->conditions['gustKMH'] = number_format(($this->conditions['gustMPH']) * 1.609);
}

if ($span->getAttribute('pwsvariable') == 'baromin')
{
if (empty($this->conditions['barometerIn')
$this->conditions['barometerIn'] = $span->getAttribute('value');
$hPa = explode('/', $span->nodeValue);
$this->conditions['barometerhPa'] = preg_replace(array('/Â/', '/\s+/', '/hPa/'), ", $hPa[1]);
}

if ($spanNode == "miles")
{
if (empty($this->conditions['visibilityM']))
$this->conditions['visibilityM'] = $span->firstChild->nodeValue;
}

if ($spanNode == "kilometers")
{
if(empty($this->conditions['visibilityK']))
$this->conditions['visibilityK'] = $span->firstChild->nodeValue;
}

if ($spanNode == "ft")
{
if (empty($this->conditions['cloudFt']))
$this->conditions['cloudFt'] = $span->firstChild->nodeValue;
}

if ($spanNode == "m")
{
if (empty($this->conditions['cloudM']))
$this->conditions['cloudM'] = $span->firstChild->nodeValue;
}

if ($spanNode == "ft")
{
@$static++;
if ($static==2)
{
if (empty($this->conditions['elevationFt']))
$this->conditions['elevationFt'] = $span->firstChild->nodeValue;
}
}

if ($spanNode == "m")
{
@$static2++;
if ($static2==2)
{
if (empty($this->conditions['elevationM']))
$this->conditions['elevationM'] = $span->firstChild->nodeValue;
}
}

if ($span->getAttribute('class') == "nb")
{
$value = preg_replace('/\s+/', ", $span->nodeValue);

if ($value == 'outof16')
{
$this->conditions['uvIndex'] = $span->previousSibling->nodeValue;
}

}

}

$divs = $this->dom->getElementsByTagName('div');

foreach ($divs as $div)
{
if($div->getAttribute('style') == 'font-size: 14px;')
{
$this->conditions['currentConditions'] = $div->nodeValue;
}
}

$links = $this->dom->getElementsByTagName('a');

foreach ($links as $link)
{
if($link->nodeValue == 'Local Radar')
{
$this->conditions['radarLink'] = 'http://www.wunderground.com&#8221;' . $link->getAttribute('href');
}
}
}

final public function getCurrTemperature()
{
return $this->conditions['currentTemperatureF'] . ' &deg;F / ' . $this->conditions['currentTemperatureC'] . ' &deg;C';
}

final public function getCurrConditionIMG()
{
return $this->conditions['currentConditionsIMG'];
}

final public function getHumidity()
{
return $this->conditions['humidity'];
}

final public function getDewPt()
{
return $this->conditions['dewPtF'] . ' &deg;F / ' . $this->conditions['dewPtC'] . ' &deg;C';
}

final public function getWindSpeed()
{
return $this->conditions['windMPH'] . ' MPH / ' . $this->conditions['windKMH'] . ' KMH';
}

final public function getWindDirection()
{
return $this->conditions['windDirection'];
}

final public function getWindGust()
{
return $this->conditions['gustMPH'] . ' MPH / ' . $this->conditions['gustKMH'] . ' KMH';
}

final public function getBarometer()
{
return $this->conditions['barometerIn'] . ' In. / ' . $this->conditions['barometerhPa'] . ' hPa';
}

final public function getVisibility()
{
return $this->conditions['visibilityM'] . ' miles / ' . $this->conditions['visibilityK'] . ' kilometers';
}

final public function getUVIndex()
{
return $this->conditions['uvIndex'] . ' out of 16?';
}

final public function getCloudHeight()
{
return $this->conditions['cloudFt'] . ' ft / ' . $this->conditions['cloudM'] . ' m';
}

final public function getElevation()
{
return $this->conditions['elevationFt'] . ' ft / ' . $this->conditions['elevationM'] . ' m';
}

final public function getCurrCondition()
{
return $this->conditions['currentConditions'];
}

final public function getConditionArr()
{
return $this->conditions;
}

final public function getRadarIMG()
{
$dom = new DOMDocument();
@$dom->loadHTMLFile($this->conditions['radarLink']);
$links = $dom->getElementsByTagName('a');
foreach ($links as $link)
{
if ($link->getAttribute('id') == 'viewsave_link')
{
$this->conditions['radarIMG'] = '<a href='".$this->conditions['radarLink']."'><img src='".$link->getAttribute('href')."' /></a>';
return '<a href='".$this->conditions['radarLink']."'><img src='".$link->getAttribute('href')."'/></a>';
}
}
return true;
}
}

?>
