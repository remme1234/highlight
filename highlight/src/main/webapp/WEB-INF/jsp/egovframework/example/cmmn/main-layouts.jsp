<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>


<!-- bar chat document.ready가 필요한 웹 화면을 위한 레이아웃 -->
<!DOCTYPE html>
	<head>
		<tiles:insertAttribute name="header"/>
	</head>
	
	<body>
		<tiles:insertAttribute name="nav"/>
		<!-- Main content starts -->
		<div class="content">
			<!-- Sidebar -->
			<tiles:insertAttribute name="left"/>
			<!-- Sidebar ends -->
			<tiles:insertAttribute name="content"/>
		</div>
		<!--/ Content ends -->

		<!-- Notification box starts -->
			<tiles:insertAttribute name="footer"/>
		<!-- Notification box ends -->  

		<!-- Scroll to top -->
		<span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span> 

		<!-- Javascript files -->
		<!-- jQuery -->
		<script src="js/jquery.js"></script>
		<!-- Bootstrap JS -->
		<script src="js/bootstrap.min.js"></script>
		<!-- jQuery UI -->
		<script src="js/jquery-ui.min.js"></script> 
		<!-- jQuery Flot -->
		<script src="js/excanvas.min.js"></script>
		<script src="js/jquery.flot.js"></script>
		<script src="js/jquery.flot.resize.js"></script>
		<script src="js/jquery.flot.pie.js"></script>
		<script src="js/jquery.flot.stack.js"></script>
		<!-- Sparklines -->
		<script src="js/sparklines.js"></script> 
		<!-- jQuery Gritter -->
		<script src="js/jquery.gritter.min.js"></script>
		<script src="js/sparklines.js"></script>
		<!-- Respond JS for IE8 -->
		<script src="js/respond.min.js"></script>
		<!-- HTML5 Support for IE -->
		<script src="js/html5shiv.js"></script>
		<!-- Custom JS -->
		<script src="js/custom.js"></script>
		
		<!-- Script for this page -->
		<script src="js/sparkline-index.js"></script>
		
 		<script type="text/javascript">
		$(function () {

			/* Bar Chart starts */

			var d1 = [];
			for (var i = 0; i <= 30; i += 1)
				d1.push([i, parseInt(Math.random() * 30)]);

			var d2 = [];
			for (var i = 0; i <= 30; i += 1)
				d2.push([i, parseInt(Math.random() * 30)]);


			var stack = 0, bars = true, lines = false, steps = false;
			
			function plotWithOptions() {
				$.plot($("#bar-chart"), [ d1, d2 ], {
					series: {
						stack: stack,
						lines: { show: lines, fill: true, steps: steps },
						bars: { show: bars, barWidth: 0.8 }
					},
					grid: {
						borderWidth: 0, hoverable: true, color: "#777"
					},
					colors: ["#52b9e9", "#0aa4eb"],
					bars: {
						  show: true,
						  lineWidth: 0,
						  fill: true,
						  fillColor: { colors: [ { opacity: 0.9 }, { opacity: 0.8 } ] }
					}
				});
			}

			plotWithOptions();
			
			$(".stackControls input").click(function (e) {
				e.preventDefault();
				stack = $(this).val() == "With stacking" ? true : null;
				plotWithOptions();
			});
			$(".graphControls input").click(function (e) {
				e.preventDefault();
				bars = $(this).val().indexOf("Bars") != -1;
				lines = $(this).val().indexOf("Lines") != -1;
				steps = $(this).val().indexOf("steps") != -1;
				plotWithOptions();
			});

			/* Bar chart ends */

		});

		/* Curve chart starts */

		$(function () {
			var sin = [], cos = [];
			for (var i = 0; i < 14; i += 0.5) {
				sin.push([i, Math.sin(i)]);
				cos.push([i, Math.cos(i)]);
			}

			var plot = $.plot($("#curve-chart"),
				   [ { data: sin, label: "sin(x)"}, { data: cos, label: "cos(x)" } ], {
					   series: {
						   lines: { show: true, 
									fill: true,
									fillColor: {
									  colors: [{
										opacity: 0.05
									  }, {
										opacity: 0.01
									  }]
								  }
						  },
						   points: { show: true }
					   },
					   grid: { hoverable: true, clickable: true, borderWidth:0 },
					   yaxis: { min: -1.2, max: 1.2 },
					   colors: ["#fa3031", "#43c83c"]
					 });


			function showTooltip(x, y, contents) {
				$('<div id="tooltip">' + contents + '</div>').css( {
					position: 'absolute',
					display: 'none',
					top: y + 5,
					width: 100,
					left: x + 5,
					border: '1px solid #000',
					padding: '2px 8px',
					color: '#ccc',
					'background-color': '#000',
					opacity: 0.9
				}).appendTo("body").fadeIn(200);
			}

			var previousPoint = null;
			$("#curve-chart").bind("plothover", function (event, pos, item) {
				$("#x").text(pos.x.toFixed(2));
				$("#y").text(pos.y.toFixed(2));

					if (item) {
						if (previousPoint != item.dataIndex) {
							previousPoint = item.dataIndex;
							
							$("#tooltip").remove();
							var x = item.datapoint[0].toFixed(2),
								y = item.datapoint[1].toFixed(2);
							
							showTooltip(item.pageX, item.pageY, item.series.label + " of " + x + " = " + y);
						}
					}
					else {
						$("#tooltip").remove();
						previousPoint = null;            
					}
			}); 

			$("#curve-chart").bind("plotclick", function (event, pos, item) {
				if (item) {
					$("#clickdata").text("You clicked point " + item.dataIndex + " in " + item.series.label + ".");
					plot.highlight(item.series, item.datapoint);
				}
			});

		});

		/* Curve chart ends */
		


		</script>

	</body>
</html>