<ul>
	<li class="menu">
            <a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage Countries</a>
            <ul id="mymenu1" class="show">
                <li class="submenu"><a href="{$BACKEND}managecountries.php?type=country&action=viewall" >Manage countries</a></li>
                <li class="submenu"><a href="{$BACKEND}managecountries.php?type=country&action=add" >Add new country</a></li>			
                <li class="submenu"><a href="{$BACKEND}managecountries.php?type=state&action=viewall" >Manage states</a></li>			
                <li class="submenu"><a href="{$BACKEND}managecountries.php?type=state&action=add" >Add new states</a></li>			
            </ul>
	</li>
</ul>
{literal}
<script type="text/javascript">
<!--
menu_status = new Array();

function showHide(theid){
    if (document.getElementById) {
    var switch_id = document.getElementById(theid);

        if(menu_status[theid] != 'show') {
           switch_id.className = 'show';
           menu_status[theid] = 'show';
        }else{
           switch_id.className = 'hide';
           menu_status[theid] = 'hide';
        }
    }
}
//-->
</script>
{/literal}