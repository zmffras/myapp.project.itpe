<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>문제 검색 툴 v2.0</title>
<!-- <link rel="stylesheet" type="text/css" href="resources/css/main.css"> -->
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/client.min.js"></script> --%>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="resources/js/client.min.js"></script>
</head>

<body>
	<div id="content-container">
		<br />

		<div id="aside">
			<form action="search.do" method="POST">
				<fieldset>
					<center>
						<label for="userId"  style="font-family: 'Jeju Hallasan', serif;">Keyword : </label> 
						<input type="text" style="vertical-align: middle"	id="rawKeyword" name="rawKeyword"  maxlength="99"
								value="<c:if test="${not empty rawKeyword}">${rawKeyword}</c:if>" >
						</input>
						 <input type="submit"  style="vertical-align: middle" value="검색" class="ct-btn white" />
					</center>

				</fieldset>
		</div>
		

		<c:if test="${not empty examDataList0}">
			
			<br />
			
			<table class="demo01 type06">				
				<th style="text-align:center; font-weight:bold;" type ="header"> 시험 문제 1교시형 </th>
				<c:forEach var="test" items="${examDataList0}" varStatus="status">
					<c:if test="${status.index%2==1}">
						<tr>
							<th style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
														
							<c:if test="${test.pkgExam eq 'real'}">
								<td	onClick="window.open('/impe/files/0.KPC/KPC_기술사_기출문제/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">								
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'kpc_2'}">
								<td	onClick="window.open('/impe/files/0.KPC/KPC_기술사_합숙훈련/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>							
							<c:if test="${test.pkgExam eq 'kpc_1'}">
								<td	onClick="window.open('/impe/files/0.KPC/KPC_기술사_모의고사/모의고사_해설집/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'ilifo'}">
								<td	onClick="window.open('/impe/files/1.아이리포/${test.turnExam}/${test.typeExam}.pdf');">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'flip'}">
								<td	onClick="window.open('/impe/files/2.플립/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'lyzeum'}">
								<td	onClick="window.open('/impe/files/3.라이지움/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'jud'}">
								<td	onClick="window.open('/impe/files/0.KPC/KPC_JUD/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'itpe'}">
								<td	onClick="window.open('/impe/files/4.ITPE/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							
						</tr>

					</c:if>
					<c:if test="${status.index%2 == 0}">
						<tr>
							<th class="even" style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<c:if test="${test.pkgExam eq 'real'}">
								<td class="even"	onClick="window.open('/impe/files/0.KPC/KPC_기술사_기출문제/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">								
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'kpc_2'}">
								<td class="even"	onClick="window.open('/impe/files/0.KPC/KPC_기술사_합숙훈련/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>							
							<c:if test="${test.pkgExam eq 'kpc_1'}">
								<td class="even"	onClick="window.open('/impe/files/0.KPC/KPC_기술사_모의고사/모의고사_해설집/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'ilifo'}">
								<td class="even"	onClick="window.open('/impe/files/1.아이리포/${test.turnExam}/${test.typeExam}.pdf');">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'flip'}">
								<td class="even"	onClick="window.open('/impe/files/2.플립/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'lyzeum'}">
								<td class="even"	onClick="window.open('/impe/files/3.라이지움/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'jud'}">
								<td class="even"	onClick="window.open('/impe/files/0.KPC/KPC_JUD/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'itpe'}">
								<td class="even"	onClick="window.open('/impe/files/4.ITPE/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
						</tr>
					</c:if>

				</c:forEach>
			</table>
		</c:if>



		<c:if test="${not empty examDataList00}">
			
			<br /><br /><br /><br /><br /><br /><br /><br /><br />		
			
			<table class="demo01 type06">				
				<th style="text-align:center; font-weight:bold;" type ="header"> 시험 문제 2교시형 </th>
				<c:forEach var="test" items="${examDataList00}" varStatus="status">
					<c:if test="${status.index%2==1}">
						<tr>
							<th style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<c:if test="${test.pkgExam eq 'real'}">
								<td	onClick="window.open('/impe/files/0.KPC/KPC_기술사_기출문제/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">								
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'kpc_2'}">
								<td	onClick="window.open('/impe/files/0.KPC/KPC_기술사_합숙훈련/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>							
							<c:if test="${test.pkgExam eq 'kpc_1'}">
								<td	onClick="window.open('/impe/files/0.KPC/KPC_기술사_모의고사/모의고사_해설집/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'ilifo'}">
								<td	onClick="window.open('/impe/files/1.아이리포/${test.turnExam}/${test.typeExam}.pdf');">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'flip'}">
								<td	onClick="window.open('/impe/files/2.플립/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'lyzeum'}">
								<td	onClick="window.open('/impe/files/3.라이지움/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'jud'}">
								<td	onClick="window.open('/impe/files/0.KPC/KPC_JUD/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'itpe'}">
								<td	onClick="window.open('/impe/files/4.ITPE/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
						</tr>

					</c:if>
					<c:if test="${status.index%2 == 0}">
						<tr>
							<th class="even" style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<c:if test="${test.pkgExam eq 'real'}">
								<td class="even" onClick="window.open('/impe/files/0.KPC/KPC_기술사_기출문제/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">								
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'kpc_2'}">
								<td class="even"  onClick="window.open('/impe/files/0.KPC/KPC_기술사_합숙훈련/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>							
							<c:if test="${test.pkgExam eq 'kpc_1'}">
								<td class="even" 	onClick="window.open('/impe/files/0.KPC/KPC_기술사_모의고사/모의고사_해설집/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'ilifo'}">
								<td class="even" 	onClick="window.open('/impe/files/1.아이리포/${test.turnExam}/${test.typeExam}.pdf');">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'flip'}">
								<td class="even" 	onClick="window.open('/impe/files/2.플립/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'lyzeum'}">
								<td class="even" 	onClick="window.open('/impe/files/3.라이지움/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'jud'}">
								<td class="even" 	onClick="window.open('/impe/files/0.KPC/KPC_JUD/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
							<c:if test="${test.pkgExam eq'itpe'}">
								<td class="even" 	onClick="window.open('/impe/files/4.ITPE/${test.turnExam}/${test.typeExam}.pdf'); ">
									${test.titleExam}
								</td>
							</c:if>
						</tr>
					</c:if>

				</c:forEach>
			</table>
		</c:if>
		
		

		<c:if test="${not empty examDataList}">
			
			<br />
			
			<table class="demo01 type06">				
				<th style="text-align:center; font-weight:bold;" type ="header"> 기출 문제 </th>
				<c:forEach var="test" items="${examDataList}" varStatus="status">
					<c:if test="${status.index%2==1}">
						<tr>
							<th style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td	onClick="window.open('/impe/files/0.KPC/KPC_기술사_기출문제/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">
								${test.titleExam}</td>
						</tr>

					</c:if>
					<c:if test="${status.index%2 == 0}">
						<tr>
							<th class="even" style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td class="even" onClick="window.open('/impe/files/0.KPC/KPC_기술사_기출문제/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">
							${test.titleExam}</td>
						</tr>
					</c:if>

				</c:forEach>
			</table>
		</c:if>
		
			
		
		<c:if test="${not empty examDataList2}">

			<br />

			<table class="demo01 type06">
				
				<th style="text-align:center; font-weight:bold;"> kpc 합숙 문제 </th>
				<c:forEach var="test" items="${examDataList2}" varStatus="status">
					<c:if test="${status.index%2==1}">
						<tr>
							<th style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td	onClick="window.open('/impe/files/0.KPC/KPC_기술사_합숙훈련/${test.turnExam}/${test.typeExam}.pdf'); ">
								${test.titleExam}</td>
						</tr>

					</c:if>
					<c:if test="${status.index%2 == 0}">
						<tr>
							<th class="even" style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td class="even" onClick="window.open('/impe/files/0.KPC/KPC_기술사_합숙훈련/${test.turnExam}/${test.typeExam}.pdf'); ">
							${test.titleExam}</td>
						</tr>
					</c:if>

				</c:forEach>
			</table>
		</c:if>
		
		
		
		<c:if test="${not empty examDataList3}">

			<br />
			
			<table class="demo01 type06">
				
				<th style="text-align:center; font-weight:bold;"> kpc 모의고사 </th>
				<c:forEach var="test" items="${examDataList3}" varStatus="status">
					<c:if test="${status.index%2==1}">
						<tr>
							<th onClick="window.open('/impe/files/0.KPC/KPC_기술사_모의고사/모의고사_모범답안/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); " 
							style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td	onClick="window.open('/impe/files/0.KPC/KPC_기술사_모의고사/모의고사_해설집/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">
								${test.titleExam}</td>
						</tr>

					</c:if>
					<c:if test="${status.index%2 == 0}">
						<tr>
							<th onClick="window.open('/impe/files/0.KPC/KPC_기술사_모의고사/모의고사_모범답안/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); "  
							class="even" style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td class="even" onClick="window.open('/impe/files/0.KPC/KPC_기술사_모의고사/모의고사_해설집/${test.turnExam}/${test.classExam}/${test.typeExam}.pdf'); ">
							${test.titleExam}</td>
						</tr>
					</c:if>

				</c:forEach>
			</table>
		</c:if>
		
		<c:if test="${not empty examDataList8}">
			<br />
			<table class="demo01 type06">
				
				<th style="text-align:center; font-weight:bold;"> ITPE 모의고사 </th>
				<c:forEach var="test" items="${examDataList8}" varStatus="status">
					<c:if test="${status.index%2==1}">
						<tr>
							<th style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td	onClick="window.open('/impe/files/4.ITPE/${test.turnExam}/${test.typeExam}.pdf'); ">
								${test.titleExam}</td>
						</tr>

					</c:if>
					<c:if test="${status.index%2 == 0}">
						<tr>
							<th class="even" style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td  class="even"	onClick="window.open('/impe/files/4.ITPE/${test.turnExam}/${test.typeExam}.pdf');">
							${test.titleExam}</td>
						</tr>
					</c:if>

				</c:forEach>
			</table>
		</c:if>

		
		<c:if test="${not empty examDataList4}">
		
			<br />
			
			<table class="demo01 type06">
				
				<th style="text-align:center; font-weight:bold;"> 아이리포 모의고사 </th>
				<c:forEach var="test" items="${examDataList4}" varStatus="status">
					<c:if test="${status.index%2==1}">
						<tr>
							<th style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td	onClick="window.open('/impe/files/1.아이리포/${test.turnExam}/${test.typeExam}.pdf');">
								${test.titleExam}</td>
						</tr>

					</c:if>
					<c:if test="${status.index%2 == 0}">
						<tr>
							<th class="even" style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td  class="even"	onClick="window.open('/impe/files/1.아이리포/${test.turnExam}/${test.typeExam}.pdf'); ">
							${test.titleExam}</td>
						</tr>
					</c:if>

				</c:forEach>
			</table>
		</c:if>
		
	
		
		<c:if test="${not empty examDataList5}">
			<br />
			<table class="demo01 type06">
				
				<th style="text-align:center; font-weight:bold;"> 플립 모의고사 </th>
				<c:forEach var="test" items="${examDataList5}" varStatus="status">
					<c:if test="${status.index%2==1}">
						<tr>
							<th style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td	onClick="window.open('/impe/files/2.플립/${test.turnExam}/${test.typeExam}.pdf'); ">
								${test.titleExam}</td>
						</tr>

					</c:if>
					<c:if test="${status.index%2 == 0}">
						<tr>
							<th class="even" style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td  class="even"	onClick="window.open('/impe/files/2.플립/${test.turnExam}/${test.typeExam}.pdf'); ">
							${test.titleExam}</td>
						</tr>
					</c:if>

				</c:forEach>
			</table>
		</c:if>
		

		
		
		<c:if test="${not empty examDataList7}">
			<br />
			<table class="demo01 type06">
				
				<th style="text-align:center; font-weight:bold;"> 라이지움 모의고사 </th>
				<c:forEach var="test" items="${examDataList7}" varStatus="status">
					<c:if test="${status.index%2==1}">
						<tr>
							<th style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td	onClick="window.open('/impe/files/3.라이지움/${test.turnExam}/${test.typeExam}.pdf'); ">
								${test.titleExam}</td>
						</tr>

					</c:if>
					<c:if test="${status.index%2 == 0}">
						<tr>
							<th class="even" style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td  class="even"	onClick="window.open('/impe/files/3.라이지움/${test.turnExam}/${test.typeExam}.pdf');">
							${test.titleExam}</td>
						</tr>
					</c:if>

				</c:forEach>
			</table>
		</c:if>
		
		
		
		<c:if test="${not empty examDataList6}">
			<br />
			<table class="demo01 type06">
				
				<th style="text-align:center; font-weight:bold;"> Jump Up Day </th>
				<c:forEach var="test" items="${examDataList6}" varStatus="status">
					<c:if test="${status.index%2==1}">
						<tr>
							<th style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td	onClick="window.open('/impe/files/0.KPC/KPC_JUD/${test.turnExam}/${test.typeExam}.pdf'); ">
								${test.titleExam}</td>
						</tr>

					</c:if>
					<c:if test="${status.index%2 == 0}">
						<tr>
							<th class="even" style="text-align:center; vertical-align: middle">${test.turnExam} ${test.classExam} ${test.typeExam}</th>
							<td  class="even"	onClick="window.open('/impe/files/0.KPC/KPC_JUD/${test.turnExam}/${test.typeExam}.pdf'); ">
							${test.titleExam}</td>
						</tr>
					</c:if>

				</c:forEach>
			</table>
		</c:if>
		
		
	</div>


	<script type="text/javascript" >

	$(function () {
	    var autoFont = function () {
	        $("center").css('font-size', Math.max(Math.min($("center").width() / (1.1 * 30))));
	        $("th").css('font-size', Math.max(Math.min($("th").width() / (1.18 * 8))));
	        $("td").css('font-size', Math.max(Math.min($("td").width() / (1.1 * 35))));
	        $("input").css('font-size', Math.max(Math.min($("input").width() / (1.1 * 14))));
	        
	    }
	    autoFont();
	    $(window).resize(function () {
	        autoFont();
	    });
	});
	
	
	</script>

</body>

<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}
/*====================*/
section {
	max-width: 960px;
	margin: 30px auto;
	padding: 30px;
}

table {
	width: 100%;
}

th, td {
	padding: 10px;
	border: 1px solid #ddd;
}

.demo01 th {
	width: 20%;
	text-align: left;
}

button::-moz-focus-inner,
input::-moz-focus-inner {
    border: 0;
    padding: 0;
}
 
.ct-btn {
	display: inline-block;
	margin: 5px 0;
	padding: .5em .75em;
	border-radius: .25em;
	box-sizing: content-box;
	-moz-box-sizing: content-box;
	background: transparent;
	outline: 0;
	vertical-align: middle;
	font-family: inherit;
	font-size: 18px;
	text-decoration: none;
	white-space: nowrap;
	cursor: pointer
}

.ct-btn.white {
	color: #666;
	border: 1px solid #ebebeb;
	border-bottom-color: #c6c6c6;
	box-shadow: 0 2px 2px rgba(0, 0, 0, 0.04);
	background: #fff;
	background: linear-gradient(to bottom, #ffffff 40%, #f6f6f6 100%);
 filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#f6f6f6', GradientType=0 );/*IE*/
}


@media only screen and (max-width:768px) {
	.demo01 {
		margin: 0 -10px;
	}
	.demo01 th, .demo01 td {
		width: 100%;
		display: block;
		border-top: none;
	}
	.demo01 tr:first-child th {
		border-top: 1px solid #ddd;
	}
}

table.type06 .even {
	background: #efefef;
}

center {
    		width: 100%; /* 원하는 너비 설정 */ 
			height: auto; /* 높이값 초기화 */ 
			line-height : normal; /* line-height 초기화 */
			 padding: .8em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */ 
			 font-family: inherit; /* 폰트 상속 */ border: 1px solid #999; 
			 border-radius: 0; /* iSO 둥근모서리 제거 */ 
			 outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */ 
			 - webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
			  -moz-appearance: none; appearance: none;
}

input[type="text"]{ 
			width: 30%; /* 원하는 너비 설정 */ 
			height: auto; /* 높이값 초기화 */ 
			line-height : normal; /* line-height 초기화 */
			 padding: .8em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */ 
			 font-family: inherit; /* 폰트 상속 */ border: 1px solid #999; 
			 border-radius: 0; /* iSO 둥근모서리 제거 */ 
			 outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */ 
			 - webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
			  -moz-appearance: none; appearance: none;
}


input[type="submit"]{ 
			width: 10%; /* 원하는 너비 설정 */ 
			height: auto; /* 높이값 초기화 */ 
			line-height : normal; /* line-height 초기화 */
			 padding: .8em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */ 
			 font-family: inherit; /* 폰트 상속 */ border: 1px solid #999; 
			 border-radius: 0; /* iSO 둥근모서리 제거 */ 
			 outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */ 
			 - webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
			  -moz-appearance: none; appearance: none;
}

th[type="text"]{ 
			width: 10%; /* 원하는 너비 설정 */ 
			height: auto; /* 높이값 초기화 */ 
			line-height : normal; /* line-height 초기화 */
			 padding: .8em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */ 
			 font-family: inherit; /* 폰트 상속 */ border: 1px solid #999; 
			 border-radius: 0; /* iSO 둥근모서리 제거 */ 
			 outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */ 
			 - webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
			  -moz-appearance: none; appearance: none;
}
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);


</style>
</html>
