<div class="page-title"><h1>User Reviews</h1></div>
{foreach from=$reviews item=val key=i}	
	<div class="review">		
		<div class="stars" style="background: url('{$FRONTEND}/design/images/rating.png') no-repeat;width:{$val.rating}px">&nbsp;</div>
		<h4>{$val.title}</h4>
		<div class="description">{$val.reviews}</div>
		<div class="byline">By <strong>{$val.name}</strong> on <small>{$val.created_date}</small></div>
	</div>
{foreachelse}
	<p>This business has no reviews to display.</p>
{/foreach}
