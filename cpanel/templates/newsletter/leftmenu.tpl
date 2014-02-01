<ul>
	<li class="menu">
            <a href="javascript:void(0);" onclick="showHide('mymenu1')">Manage Newsletter</a>
            <ul id="mymenu1" class="show">
                <li class="submenu"><a href="{$BACKEND}managenewsletter.php?action=viewall" >Manage newsletter</a></li>
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