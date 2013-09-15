<?php
	class Captcha {
		var $width = 60;
		var $height = 20;
		var $img = null;
		var $chars = 6;
		var $fontsize = 5;
		var $sessionvar = 'captcha';
		
		function __construct() {
			session_start();
		}
		
		function run() {
			$this->outputImage();
		}
		
		function check($arr) {
			if (isset($arr) && is_array($arr)) {
				if (isset($arr[$this->sessionvar])) {
					if ($arr[$this->sessionvar] == $_SESSION[$this->sessionvar]) {
						return true;
					}
				}
			}
		}
		
		function randomString($length = 6) {
			$chars = "abcdefghijklmnopqrstuvwxyz0123456789";
			for ($i = 0; $i < $length; $i++) {
				$string .= $chars[mt_rand(0, strlen($chars)-1)];
			}
			return $string;
		}
		
		function outputImage() {
			$this->img = ImageCreate ($this->width, $this->height);
			if ($this->img) {
				header("Content-type: image/png"); 
				
				$bg = ImageColorAllocate($this->img, 255, 255, 255); 
				$txt = ImageColorAllocate($this->img, 0, 0, 0); 
				
				$string = $this->randomString($this->chars);
				
				ImageString($this->img, 31, $this->fontsize, 0, $string, $txt);
				Imagepng($this->img); 
				
				$_SESSION[$this->sessionvar] = $string; 
			}
		}
	}
?>
