<h2>{$gallery.gallery_title}</h2>
<div class="gallerycontent">
<div id="shortdesc">
	{$gallery.gallery_description|truncate:1000:"...":true}<a href="javascript:void(0);" onclick="showmore('desc','shortdesc')">more</a>
</div>
<div id="desc">
	{$gallery.gallery_description} 
	<p style="text-align:right"><a href="javascript:void(0);" onclick="hidemore('shortdesc','desc')" >hide</a></p>
</div>
<table border="0" class="gallery">
<tr><td colspan="5"><h4>Best places associted with the gallery</h4></td></tr>
{$i = 0}
{foreach from=$galleryimages item=galimg key=i} 
  {if $i % 5 == 0 }<tr>{/if}
    <td align="center">
    	<p style="margin-bottom:5px !important;margin-left:0px !important;">
    		<a href="{$GALLERYIMAGE}/base/{$galimg.banner}" class="galimganc" data-lightbox="roadtrip">
    			<img alt="" src="{$GALLERYIMAGE}/thumb/{$galimg.banner}" />
    		</a>
    	</p>
    	<a href="{$BACKEND}managegallery.php?action=deleteGalImg&id={$galimg.galleryImageId}">
    		<img src="{$BACKEND}design/images/delete.png" alt="D" title="Delete">
    	</a>
    </td>
  {if $i % 5 == 0 && $i != 0 }</tr>{/if}
{/foreach}
</table>
</div>

