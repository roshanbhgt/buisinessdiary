<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{if $title != '' } {$title} - {/if} Buisiness Diary - Search, find anything in the heart of the city</title>
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="{$FRONTEND}/favicon.ico" type="image/x-icon"/>
<link href="{$FRONTEND}/design/css/styles.css" rel="stylesheet" type="text/css" />
<link href="{$FRONTEND}/design/css/slider.css" rel="stylesheet" type="text/css" />
<link href="{$FRONTEND}/design/css/fancybox.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{$FRONTEND}/design/js/jquery.min.js"></script>
<script type="text/javascript" src="{$FRONTEND}/design/js/jquery.fancybox.js"></script>
<script type="text/javascript" src="{$FRONTEND}/design/js/jqueryui.js"></script>
{literal}
    <script type="text/javascript">
        $(document).ready(function() {
            $(function($) {

              var $slider = $('.slider');
              var $slide = 'li';
              var $transition_time = 1750;
              var $time_between_slides = 4000;

              function slides(){
                return $slider.find($slide);
              }

              slides().fadeOut();


              slides().first().addClass('active');
              slides().first().fadeIn($transition_time);


              $interval = setInterval(
                function(){
                  var $i = $slider.find($slide + '.active').index();

                  slides().eq($i).removeClass('active');
                  slides().eq($i).fadeOut($transition_time);

                  if (slides().length == $i + 1) $i = -1;

                  slides().eq($i + 1).fadeIn($transition_time);
                  slides().eq($i + 1).addClass('active');
                }
                , $transition_time +  $time_between_slides
              );
            });
        });


        $(function(){
            (function request() {
                $.ajax({
                   type: "GET",
                    url: "http://localhost/buisinessdiary/weather.php",
                    cache: false,
                    success: function(response) {
                        $('#wxWrap').html(response);
                    }
                });

            setTimeout(request, 10000);
            })();
        });

        function submitnewsletter(){
            var form = $('#newsletterform');
            var submit = $('#newsletter');
            var alert = $('#success');

            // form submit event
            form.on('submit', function(e) {
                e.preventDefault(); // prevent default form submit
                // sending ajax request through jQuery
                $.ajax({
                    url: 'http://localhost/buisinessdiary/emailnewsletter.php', // form action url
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

        function submitquiklist(){
            var form = $('#quiklistform'); // contact form
            var submit = $('#quiklistsubmit');	// submit button
            var alert = $('#message'); // alert div for show alert message

            // form submit event
            form.on('submit', function(e) {
                e.preventDefault(); // prevent default form submit
                // sending ajax request through jQuery
                $.ajax({
                    url: 'http://localhost/buisinessdiary/quiklist.php', // form action url
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
{include file='analytics.tpl'}