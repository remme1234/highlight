<%@ page language="java" contentType="text/html; charset=UTF-8" %>
	

			<div class="mainbar">
				<!-- Page heading -->
				<div class="page-head">
					<!-- Page heading -->
					<h2 class="pull-left">Charts
					  <!-- page meta -->
					  <span class="page-meta">Something Goes Here</span>
					</h2>
					<!-- Breadcrumb -->
					<div class="bread-crumb pull-right">
					  <a href="#" onclick="pageSubmitFn('main','main')"><i class="fa fa-home"></i> Home</a> 
					  <!-- Divider -->
					  <span class="divider">/</span> 
					 <a href="#" onclick="pageSubmitFn('main','chart')" class="bread-current">Charts</a>
					</div>
					<div class="clearfix"></div>
				</div><!--/ Page heading ends -->

				<!-- Matter -->
				<div class="matter">
					<div class="container">
						<div class="row">
							<div class="col-md-12">

							<!-- Bar Chart -->
							<div class="widget wlightblue">

							<div class="widget-head">
							  <div class="pull-left">Bar Chart</div>
							  <div class="widget-icons pull-right">
								<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
								<a href="#" class="wclose"><i class="fa fa-times"></i></a>
							  </div>
							  <div class="clearfix"></div>
							</div>            


							<div class="widget-content">
							  <div class="padd">
								<!-- Barchart. jQuery Flot plugin used. -->
								<div id="bar-chart"></div>

								<hr />

								<!--Bar chart stuffs -->
								<div class="btn-group stackControls">
									<input type="button" value="With stacking" class="btn btn-default">
									<input type="button" value="Without stacking" class="btn btn-default">
								</div>            

								<div class="btn-group graphControls">

									<input type="button" value="Bars" class="btn btn-default">
									<input type="button" value="Lines" class="btn btn-default">
									<input type="button" value="Lines with steps" class="btn btn-default">
								</div>

							  </div>
							</div>

						  </div>
						  <!-- Bar chart ends -->

						  <!-- Curve chart starts -->

						  <div class="widget wgreen">

							<div class="widget-head">
							  <div class="pull-left">Curve Chart</div>
							  <div class="widget-icons pull-right">
								<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
								<a href="#" class="wclose"><i class="fa fa-times"></i></a>
							  </div>
							  <div class="clearfix"></div>
							</div>             


							<div class="widget-content">
							  <div class="padd">

								<div id="curve-chart"></div>

								<hr />

								<div id="hoverdata">Mouse hovers at
								(<span id="x">0</span>, <span id="y">0</span>). <span id="clickdata"></span></div>          

							  </div>
							</div>
						  </div>
							<!-- Curve chart ends -->


							<!-- Realtime chart starts -->

							<div class="widget wred">

							<div class="widget-head">
							  <div class="pull-left">Real Time Chart</div>
							  <div class="widget-icons pull-right">
								<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
								<a href="#" class="wclose"><i class="fa fa-times"></i></a>
							  </div>
							  <div class="clearfix"></div>
							</div>             

							  <div class="widget-content">
								<div class="padd">

								  <div id="live-chart" style="padding: 0px; position: relative;"><canvas class="flot-base" width="1385" height="312" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 1108px; height: 250px;"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 20px; text-align: center;">0</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 107px; text-align: center;">25</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 197px; text-align: center;">50</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 287px; text-align: center;">75</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 374px; text-align: center;">100</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 464px; text-align: center;">125</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 554px; text-align: center;">150</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 644px; text-align: center;">175</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 734px; text-align: center;">200</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 824px; text-align: center;">225</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 914px; text-align: center;">250</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 228px; left: 1004px; text-align: center;">275</div></div><div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; top: 212px; left: 12px; text-align: right;">0</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 170px; left: 6px; text-align: right;">20</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 127px; left: 6px; text-align: right;">40</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 85px; left: 6px; text-align: right;">60</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 42px; left: 6px; text-align: right;">80</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 0px; left: 0px; text-align: right;">100</div></div></div><canvas class="flot-overlay" width="1385" height="312" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 1108px; height: 250px;"></canvas></div>
								  <hr>
								  Time Inverval: <input id="updateInterval" type="text" class="form-control" value="">

								</div>
							  </div>
							</div>

							<!-- Realtime chart ends -->

							<!-- Pie chart starts -->

							<div class="widget wviolet">

							<div class="widget-head">
							  <div class="pull-left">Pie Chart</div>
							  <div class="widget-icons pull-right">
								<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
								<a href="#" class="wclose"><i class="fa fa-times"></i></a>
							  </div>
							  <div class="clearfix"></div>
							</div>

							  <div class="widget-content">
								<div class="padd">

								  <div class="row">
									<div class="col-md-4">
									  <div id="pie-chart" style="padding: 0px; position: relative;"><canvas class="flot-base" width="375" height="312" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 300px; height: 250px;"></canvas><canvas class="flot-overlay" width="375" height="312" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 300px; height: 250px;"></canvas><span class="pieLabel" id="pieLabel0" style="position: absolute; top: 40.5px; left: 202px;"><div style="font-size:8pt;text-align:center;padding:2px;color:white;">Series1<br>28%</div></span><span class="pieLabel" id="pieLabel1" style="position: absolute; top: 138.5px; left: 215px;"><div style="font-size:8pt;text-align:center;padding:2px;color:white;">Series2<br>7%</div></span><span class="pieLabel" id="pieLabel2" style="position: absolute; top: 193.5px; left: 118px;"><div style="font-size:8pt;text-align:center;padding:2px;color:white;">Series3<br>33%</div></span><span class="pieLabel" id="pieLabel3" style="position: absolute; top: 48.5px; left: 52px;"><div style="font-size:8pt;text-align:center;padding:2px;color:white;">Series4<br>31%</div></span></div>
									</div>
									<div class="col-md-4">
									  <div id="pie-chart2" style="padding: 0px; position: relative;"><canvas class="flot-base" width="375" height="312" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 300px; height: 250px;"></canvas><canvas class="flot-overlay" width="375" height="312" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 300px; height: 250px;"></canvas><div class="legend"><div style="position: absolute; width: 51px; height: 90px; top: 5px; right: 5px; background-color: rgb(255, 255, 255); opacity: 0.85;"> </div><table style="position:absolute;top:5px;right:5px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(237,194,64);overflow:hidden"></div></div></td><td class="legendLabel">Series1</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(175,216,248);overflow:hidden"></div></div></td><td class="legendLabel">Series2</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(203,75,75);overflow:hidden"></div></div></td><td class="legendLabel">Series3</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(77,167,77);overflow:hidden"></div></div></td><td class="legendLabel">Series4</td></tr></tbody></table></div></div>
									</div>
									<div class="col-md-4">
									  <div id="pie-chart3" style="padding: 0px; position: relative;"><canvas class="flot-base" width="375" height="312" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 300px; height: 250px;"></canvas><canvas class="flot-overlay" width="375" height="312" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 300px; height: 250px;"></canvas><span class="pieLabel" id="pieLabel0" style="position: absolute; top: 39.5px; left: 206px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(237,194,64);">Series1<br>28%</div></span><span class="pieLabel" id="pieLabel1" style="position: absolute; top: 140.5px; left: 219px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(175,216,248);">Series2<br>7%</div></span><span class="pieLabel" id="pieLabel2" style="position: absolute; top: 196.5px; left: 119px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(203,75,75);">Series3<br>33%</div></span><span class="pieLabel" id="pieLabel3" style="position: absolute; top: 46.5px; left: 50px;"><div style="font-size:x-small;text-align:center;padding:2px;color:rgb(77,167,77);">Series4<br>31%</div></span></div>
									</div>
								  </div>

								</div>
							  </div>
							</div>
							<!-- Pie chart ends -->

						</div>
						</div>
					</div>
				</div><!--/ Matter ends -->
			</div><!--/ Mainbar ends -->	    	
						  		  