{literal}
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("visualization", "1", {packages:["geochart"]});
        google.setOnLoadCallback(drawRegionsMap);

        function drawRegionsMap() {

            var data = google.visualization.arrayToDataTable([
                ['Country', 'Popularity'],
                ['Germany', 200],
                ['United States', 300],
                ['Brazil', 400],
                ['Canada', 500],
                ['France', 600],
                ['RU', 700]
            ]);

            var options = {};

            var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

            chart.draw(data, options);
        }

        google.load("visualization", "1", {packages:["corechart"]});
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Year', 'Sales', 'Expenses'],
                ['2004',  1000,      400],
                ['2005',  1170,      460],
                ['2006',  660,       1120],
                ['2007',  1030,      540]
            ]);

            var options = {
                title: 'Company Performance'
            };

            var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }

        google.load("visualization", "1", {packages:["corechart"]});
        google.setOnLoadCallback(drawPieChart);
        function drawPieChart() {
            var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
                ['Work',     11],
                ['Eat',      2],
                ['Commute',  2],
                ['Watch TV', 2],
                ['Sleep',    7]
            ]);

            var options = {
                title: 'My Daily Activities',
                is3D: true,
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
            chart.draw(data, options);
        }



    </script>
{/literal}

{If ($variables.success != '')}
	<div class="success">{$variables.success}</div>
{ElseIf ($variables.error != '')}
	<div class="error">{$variables.error}</div>
{/If}
<h2 class="content-header">{$contentheading}</h2>
<table width="100%" >
	<tr>
		<td width="29%" align="left" valign="top" style="padding:0 2px;">			
			<div class="entry-edit">
                <div class="dashboard-head"><h4>Category Viewed</h4></div>
                <fieldset style="padding: 1px;">                    
					<table cellspacing="0" class="grid">
        				<tbody>
                            <tr>
                                    <td><span class="nobr">Category</span></td>
                                    <td><span class="nobr">Viewed</span></td>                                    
                            </tr>                    	
            				<tr>
            					<td colspan="2" >No records found.</td>
        					</tr>
        				</tbody>
					</table>
				</fieldset>
			</div>
			<div style="clear: both;">&nbsp;</div>
			<div class="entry-edit">
                <div class="dashboard-head"><h4>Buisiness viewed</h4></div>
                <fieldset style="padding: 1px;">                    
					<table cellspacing="0" class="grid">
        				<tbody>
                            <tr>
                                    <td><span class="nobr">Buisiness</span></td>
                                    <td><span class="nobr">Viewed</span></td>                                    
                            </tr>                    	
            				<tr>
            					<td colspan="2" >No records found.</td>
        					</tr>
        				</tbody>
					</table>					
				</fieldset>
			</div>
			<div style="clear: both;">&nbsp;</div>
			<div class="entry-edit">
                <div class="dashboard-head"><h4>Keyword search</h4></div>
                <fieldset style="padding: 1px;">                    
					<table cellspacing="0" class="grid">
        				<tbody>
                            <tr>
                                    <td><span class="nobr">Keyword</span></td>
                                    <td><span class="nobr">Searched</span></td>                                    
                            </tr>
            				<tr>
            					<td colspan="2" >No records found.</td>
        					</tr>
        				</tbody>
					</table>					
				</fieldset>
			</div>
		</td>
		<td width="69%" align="left" valign="top" style="padding:0 2px;">			
			<div class="entry-edit">
                <div class="dashboard-head"><h4>Users per hour</h4></div>
                <div id="chart_div" style="width: 920px; height: 250px;"></div>
			</div>
			<div style="clear: both;">&nbsp;</div>
			<div class="entry-edit">
                <div class="dashboard-head"><h4>Users by state</h4></div>
                <div id="regions_div" style="width: 450px; height: 250px;"></div>
                <div id="piechart_3d" style="width: 450px; height: 250px;"></div>
            </div>
		</td>
	</tr>
</table>