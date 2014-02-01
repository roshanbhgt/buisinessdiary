<div class="slides">
	<ul class="slider">
		{foreach from=$gallery item=img key=i}
			<li><img src="{$GALLERYIMAGE}/base/{$img.banner}" title="{$img.gallery_title}"/></li>
		{/foreach}
	</ul>
</div>
<p><h1 class="page-head">Welcome to Business diary - Search find anything</h1></p>		

<p>
	Business diary is designed for the individual to help them to find about the best samll business of their needs like shop, restaurant etc, famous places of which information is not generally avaiable or which are not globally famous but they has their own inmportance.<br/><br/> 
 	Idea behind business diary is to help the small and mid level business to help them to grow and makes them available to each small and large doors.<br/> <br/>There is lot of information available online so we have categories and formulated the information in easily understandable format and makes it available to you. 
</p>
<div class="home-category">
	<h2>Browse by category</h2>
	<ul>
		{foreach from=$catall item=cat key=i}
		<li><a href="{$FRONTEND}/category/{$cat.identifier}"><h3>{$cat.title}</h3></a></li>
		{/foreach}
	</ul>
</div>
<div class="latest-buisiness">
	<h3>Latest on business diary</h3>
	<ul>
		<li>
			<a href="#">The Pride Hotel</a>
			<img src="design/images/pride-logo.jpg" alt="The Pride Hotel" />
			<p>Restaurants with bar, beautiful landscape swiming tool...<a href="#">more</a></p>
		</li>
		<li>
			<a href="#">The Child Hospital</a>
			<img src="design/images/child-hospital-logo.jpg" alt="The Pride Hotel" />
			<p>Central India's Child Hospital & Research Institute...<a href="#">more</a></p>
		</li>
		<li></li>
		<li></li>
	</ul>
</div>