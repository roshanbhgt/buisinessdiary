<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Buisiness Diary - Search, find anything in the heart of the city</title>
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
<link href="design/css/styles.css" rel="stylesheet" type="text/css" />
<link href="design/css/slider.css" rel="stylesheet" type="text/css" />  
<script type="text/javascript" src="design/js/jquery.min.js"></script>
<script type="text/javascript" src="design/js/jquery.slides.min.js"></script>
<script type="text/javascript" src="design/js/jquery-scroller.min.js"></script>
{literal}
<script type="text/javascript">
	$(document).ready(function() {		
		$('#slides').slidesjs({
			width: 940,
			height: 350,
			play: {
			  active: true,
			  auto: true,
			  effect: "fade",
			  interval: 4000,
			  swap: true,
			  pauseOnHover: false,
			  restartDelay: 2500
			},
			effect: {
		      slide: {
		        // Slide effect settings.
		        speed: 1500
		          // [number] Speed in milliseconds of the slide animation.
		      },
		      fade: {
		        speed: 1500,
		          // [number] Speed in milliseconds of the fade animation.
		        crossfade: true
		          // [boolean] Cross-fade the transition.
		      }
			}
		});
    });
	
	// 
	// javascript whether code 
	$(function(){
		(function request() {
			$.ajax({
	           type: "GET",
	            url: "weather.php",            
	            cache: false,
	            success: function(response) {
	            	$('#wxWrap').html(response);
	            }
			});
		//calling the anonymous function after 10000 milli seconds
        setTimeout(request, 10000);
		})();
	});
	
	
	
	
	function submitnewsletter(){
		var form = $('#newsletterform'); // contact form
		var submit = $('#newsletter');	// submit button
		var alert = $('#success'); // alert div for show alert message

		// form submit event
		form.on('submit', function(e) {
			e.preventDefault(); // prevent default form submit
			// sending ajax request through jQuery
			$.ajax({
				url: 'emailnewsletter.php', // form action url
				type: 'POST', // form submit method get/post
				dataType: 'html', // request type html/json/xml
				data: form.serialize(), // serialize form data 
				beforeSend: function() {
					alert.fadeOut();
					submit.html('Submitting...'); // change submit button text
				},
				success: function(data) {
					alert.css('display', 'block');
					alert.css('padding', '5px');
					alert.html(data).fadeIn(); // fade in response data
					form.trigger('reset'); // reset form
					submit.html('Submit'); // reset submit button text
				},
				error: function(e) {
					console.log(e)
				}
			});
		});
	
	}
		
	function collapse(id,classname){	
		$(id).removeClass(classname);
			$('.wrapper .nav ul li ul').css('display', 'none');
	}
	function expand(id,classname){
		$(id).addClass(classname);
		$('.wrapper .nav ul li.over ul').css('display', 'block');
	}
</script>
{/literal}