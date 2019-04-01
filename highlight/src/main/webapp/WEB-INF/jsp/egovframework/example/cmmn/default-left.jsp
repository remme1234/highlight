<%@ page language="java" contentType="text/html; charset=UTF-8" %>
 <!--  10.jstl을 이용하기 위하여 입력합니다. 여기서 "c"는 앞으로 jstl을 "c"로 부른다는 것을 의미합니다 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script>

	/*
		4. pageSubmitFn은 function()라는 익명함수를 호출하는 변수로 pageSubmitFn 이라는 함수가 되고
		     아래의 onclick 이벤트에서 호출 함수  pageSubmitFn 통해 table, label 이라는 매개변수를 받습니다.
		5. 매개변수의 값에 따라 메뉴를 눌렀을 때 가고자 하는 주소를 get방식으로 보내기 위하여 location.href를 이용합니다.
		6. '?'를 기준으로 왼쪽인 main.do로 가라는 논리적 주소와  '?'를 기준으로 오른쪽에서 데이터를 부여하는데 pageName=label, pageType=table 에서 
		   pageName과 pageType은 key, label과 table은 value로 쌍을 이루는 쿼리스트링 방식으로  controller 에 보내줍니다.   		   
	*/
	var pageSubmitFn = function(table, label) {
	/* 	if (table === "main"){
		$("#frm").attr("action","main.do");
		
		$("#pageName").val("main");
		$("#pagetype").val("main"); */
		 location.href = label + ".do?pageName=" + label + "&pageType=" + table
	}	
	
	/*
		11. (function()) { }는  jqery의 메서드이며 document.ready로 html이 실행되고 끝나고 난 뒤 실행합니다.
		12. param은 이전에 보낸 key를 입력하면 그 key와 대응되는 value의 값을 가져옵니다.
			따라서 메뉴'calendar'를 눌렀다고 가정했을때 param.pageName은 calendars 이라는 value 값을 불러오고
			pageType는 page1 이라는 value값을 갖습니다.
		13. param.pageName을 var pageName으로 정의함으로써 위의 'calendars'가 pageName이 됩니다.
		14. param을 쓰게 되면 보안상의 문제가 발생하기 때문에 jstl을 사용합니다.
		15. c:out value='{~}' /는 ~ 안의 내용을 문자열로 받습니다.
	*/
	$(function() {
		
		var pageName = "<c:out value = '${param.pageName}'/>";
		var pageType = "<c:out value = '${param.pageType}'/>";
		
		$(".menu").removeClass("open", "current");
		
		/*
			16. if 구문을 통해 아래의 처리를 했습니다.
			17. sub menu를 가지고 있지 않은 메뉴에 대해서 "current" 클래스를 넣어 하이라이트 처리를 했습니다.
			18.	sub menu를 가지고 있는 메뉴에 대해서는 큰 메뉴에 대해서는 "open" 클래스를 넣고
				작은 메뉴에 대해서는 "active" 클래스를 넣어 하이라이트 처리를 했습니다.			
		*/		
		if (pageType === "main") {
			$("#"+ pageName).addClass("current");
		} else if (pageType === "widget") {
			$("#widget").addClass("open");
			$("#" + pageName).addClass("active");
		} else if (pageType === "page1") {
			$("#page1").addClass("open");
			$("#"+ pageName).addClass("active");
		} else if (pageType === "page2") {
			$("#page2").addClass("open");
			$("#"+ pageName).addClass("active");
		}
	})
	
</script>


			<div class="sidebar">
				<div class="sidebar-dropdown"><a href="#">Navigation</a></div>
				<div class="sidebar-inner">
					<!-- Search form -->
					<div class="sidebar-widget">
						<form >
							<input type="text" class="form-control" placeholder="Search">
						</form>
					</div>
					<!--- Sidebar navigation -->
					<!-- If the main navigation has sub navigation, then add the class "has_submenu" to "li" of main navigation. -->
					<ul class="navi">
						<!-- Use the class nred, ngreen, nblue, nlightblue, nviolet or norange to add background color. You need to use this in <li> tag. -->
						
						<!-- 
							1. 아래의 각각의 메뉴 <li>태그에 대하여 해당 메뉴가 어디 메뉴인지를 나타내는 table과  어떤 메뉴인지 나타내는 label이라는 인자값을
								pageSubitFn 호출함수를 통해 보냈습니다.
							2. 그리고 id값으로는 어떤 메뉴를 나타내는지를 의미하는 label과 같은 값을 지정했습니다.
							3. 공통적으로  menu라는 class를 지정해서 removeClass를 부여 할 수 있는 공통인자를 만들었습니다. 
						 -->
						<li id = "main" class="nred menu"><a href="#" onclick="pageSubmitFn('main','main')"><i class="fa fa-desktop"></i> Dashboard</a></li>
						<!-- Menu with sub menu -->
						<li id=widget class="has_submenu nlightblue menu">
							<a href="#">
								<!-- Menu name with icon -->
								<i class="fa fa-th"></i> Widgets 
								<!-- Icon for dropdown -->
								<span class="pull-right"><i class="fa fa-angle-right"></i></span>
							</a>
							<ul>
								<li id = "widget1"><a href="#" onclick="pageSubmitFn('widget','widget1')">Widgets #1</a></li>
								<li id = "widget2"><a href="#" onclick="pageSubmitFn('widget','widget2')">Widgets #2</a></li>
							</ul>
						</li>
						<li id = "chart" class="ngreen menu"><a href="#" onclick="pageSubmitFn('main','chart')"><i class="fa fa-bar-chart-o"></i> Charts</a></li>
						<li id = "uiElement" class="norange menu"><a href="#" onclick="pageSubmitFn('main','uiElement')"><i class="fa fa-sitemap"></i> UI Elements</a></li>
						<li id="page1" class="has_submenu nviolet menu">
							<a href="#">
								<i class="fa fa-file-o"></i> Pages #1
								<span class="pull-right"><i class="fa fa-angle-right"></i></span>
							</a>
							<ul>
								<li id = "calendars"><a href="#" onclick="pageSubmitFn('page1','calendars')">Calendar</a></li>
								<li id = "post"><a href="#" onclick="pageSubmitFn('page1','post')">Make Post</a></li>
								<li id = "login"><a href="#" onclick="pageSubmitFn('page1','login')">Login</a></li>
								<li id = "register"><a href="#" onclick="pageSubmitFn('page1','register')">Register</a></li>
								<li id = "statement"><a href="#" onclick="pageSubmitFn('page1','statement')">Statement</a></li>
								<li id = "errorLog"><a href="#" onclick="pageSubmitFn('page1','errorLog')">Error Log</a></li>
								<li id = "support"><a href="#" onclick="pageSubmitFn('page1','support')">Support</a></li>
							</ul>
						</li> 
						<li id="page2" class="has_submenu nblue menu">
							<a href="#">
								<i class="fa fa-file-o"></i> Pages #2
								<span class="pull-right"><i class="fa fa-angle-right"></i></span>
							</a>
							<ul>
								<li id = "error"><a href="#" onclick="pageSubmitFn('page2','error')">Error</a></li>
								<li id = "gallery"><a href="#" onclick="pageSubmitFn('page2','gallery')">Gallery</a></li>
								<li id = "grid"><a href="#" onclick="pageSubmitFn('page2','grid')">Grid</a></li>
								<li id = "invoice"><a href="#" onclick="pageSubmitFn('page2','invoice')">Invoice</a></li>
								<li id = "media"><a href="#" onclick="pageSubmitFn('page2','media')">Media</a></li>
								<li id = "profile"><a href="#" onclick="pageSubmitFn('page2','profile')">Profile</a></li>
							</ul>
						</li> 
						<li id = "forms" class="nred menu"><a href="#" onclick="pageSubmitFn('main','forms')"><i class="fa fa-list"></i> Forms</a></li>
						<li id = "tables" class="nlightblue menu"><a href="#" onclick="pageSubmitFn('main','tables')"><i class="fa fa-table"></i> Tables</a></li>
					</ul>
					<!--/ Sidebar navigation -->
					<!-- Date -->
					<div class="sidebar-widget">
						<div id="todaydate"></div>
					</div>
				</div>
			</div>
			
<form id="frm" method="post" action="">
	<input type="hidden" name="pageName" id="pageName">
</form>
			
