<div class="page-title"><h1>User Reviews</h1></div>
{foreach from=$reviews item=val key=i}	
	<div class="review">
		<div class="stars">{$val.rating} stars</div>
		<div class="description">{$val.reviews}</div>
		<div class="byline">By <strong>{$val.name}</strong> on <small>{$val.created_date}</small></div>
	</div>
{foreachelse}
	<p>This business has no reviews to display.</p>
{/foreach}
