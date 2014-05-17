<div class="slides">
	<ul class="slider">
		{foreach from=$gallery item=img key=i}
			<li>
				<img src="{$GALLERYIMAGE}/base/{$img.banner}" title="{$img.gallery_title}"/>
				<div id="img{$i}" style="color: #FFFFFF;padding: 5px;position: absolute;top: 222px;width: 100%;font-weight: bold;">{$img.gallery_title}</div>
			</li>
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
{if $latbus|count > 0}
<div class="latest-buisiness">
	<h3>Latest on business diary</h3>
	<ul>
	{foreach from=$latbus item=bus key=i}
		<li>
			<a href="{$FRONTEND}/list/{$bus.list_id}">{$bus.title}</a><br/>
			{if $bus.logo != ''}
				<img src="{$BUSINESSIMAGE}/thumb/{$bus.logo}" alt="{$bus.title}" />
			{else}
				<img src="{$BUSINESSIMAGE}/thumb/companies_large.jpg" alt="{$bus.title}" />
			{/if}
			<p>{$bus.description|truncate:70}<a href="{$FRONTEND}/list/{$bus.list_id}">more</a></p>
		</li>
	{/foreach}	
	</ul>
</div>
{/if}