<div class="std">
    <div class="page-title"><h1>My Account</h1></div>
    <h4>Hello, {$session.firstname}!</h4>

    <p>
        From your My Account Dashboard you have the ability to view a snapshot of your recent account activity and update your account information. Select a link below to view or edit information.
    </p>
    <p>&nbsp;</p>
    <table width="100%">
        <tr>
            <td valign="top" width="49%">
				<div style="position:relative; float: left;" class="content">
					<h2>Contact</h2>
					<ul>
						<li>{$myinfo.firstname}</li>
						<li>{$myinfo.email}</li>
					</ul>
				</div>
            </td>
            <td valign="top" width="49%">
				<div style="position:relative;float: left;" class="content">
					<h2>Newsletter</h2>
					{if $mynews == true}
						You have subscribed to our newsletter.
					{else}
						You haven't subscribed to our newsletter.
					{/if}
				</div>
            </td>
        </tr>
		<tr><td colspan="2"><p>&nbsp;</p></td></tr>
        <tr>
            <td colspan="2" valign="top">
				<div style="position:relative; float: left;" class="content">
					<h2>Address Book</h2>
				</div>
            </td>
        </tr>
    </table>
</div>


