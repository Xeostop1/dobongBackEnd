<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>메인페이지 </title>
	<style>
	 /* max-content  */
	a{
		text-decoration:none;
	}
	a:hover{
		text-decoration: underline;
		color:red;
	}
	html{
		box-sizing: border-box;
	}
	body{
		
		width:80%;
		margin: 0 auto;
	}
	
	
	#header h1{
		display:inline-block;
		vertical-align:middle;
	}
	#gnb{
		display:inline-block;
		float:right;
	}
	#gnb:after{
        content: "";
        display: block;
        clear: both;
    }
	ul{
		 list-style: none;
		margin: 0;
		padding: 0;
		display: flex;
		
	}
	#header{
		background:cadetblue;
		display: flex;
		justify-content: space-between;

		
	}
	dlatl{
			width:95%;
			border:1px solid black;
		
	}
	dlatl:after{
		content:"";
		display:block;
		clear:both;
	}
	.cat_li{
		width:30%;
		padding:5px;
		border:0.5px solid black;
		overflow:hidden;
	}
	.cat_field{
		width:30%;
		border:0.5px solid black;
		height:10px;
		margin-top:2px;
		padding:5px;
	}
	
	#gnb a{
		display:block;
		text-align: center;
		margin: 0.3rem;
		padding: 0.2rem 0.2rem;
		text-decoration: none;
		font-weight: bold;
		font-size:10px;
		color: white;
		background: teal;
		margin-left: auto;
	}
	#gnb a:hover {
		background-color:yellow;
		color:red;
		
	}
	#cate_top{
		width:100%;
		border:0px solid teal;
		background-color:teal;
		overflow:hidden;
	
		
	}

	#cate_top_li a{
		display:block;
		text-align: center;
		margin: 0.3rem;
		padding: 0.2rem 0.2rem;
		text-decoration: none;
		font-weight: bold;
		font-size:10px;
		color: white;
		background: teal;
		
		
	}
	#cate_top_li a:hover {
		background-color:lightgray;
		color:red;
		
	button{
		font-size: 10px;
	}
	.ftBtn:hover{
	background-color:lightgray;
	color:red;
	border:3px solid black;
	}
	.footer{
	width:99%;
	display:inline-flex;
	justify-content:space-between;
	margin-bottom:20px;
	}
	.ftBtn{
		background-color:lightgray;
		font-weight:bold;
		font-size:12px;
		text-align:center;
		border:2px solid black;
		cursor:pointer;
		width:70px;
		height:30px;
		margin:20px;
		margin-top:5px;
	}
	
	.fnbItem{
		text-decoration:none;
		background:red;
	}
	
	.btn{
		color:black;
			
	}
	.btnTop:hover{
		color:red;
		border:2px solid black;
		background-color:yellow;
	}
	#btnTop:after{
		content:'';
		display:block;
		clear:both;
	}
	#dobong:after{
		content:'';
		display:block;
		clear:both;
	}
	</style>
	
	
</head>
<body>
	<p>양식은 대략 이러하고 상단 헤더는 나중에 분할하여 공용으로 사용</p>

	<div id="header">
		<h1><a href="index.html" style="text-decoration:none;">도봉따봉 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </a></h1>
		
		<div id="gnb">
			<span><ul class="head_login">
					
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
					
			</ul></span>
			
		</div>
		
	</div>
	<div id="cate_body">
	<div id="cate_top" >
	
	<div id="cate_top_li" style="inilne-block; ">
	<fieldset style="border:0;">
	<legend hidden>카테고리 탑</legend>
	
	<ul>
		
	
			<li><button>전체 카테고리</button></li>
		<!--	<li><a href="#">공지사항</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">뭐가있지</a></li>
			<li><a href="#">자료실</a></li>
			<li><a href="#">관리자만 보이는 목록추가</a></li>
		--></ul>
	
	</fieldset>
	
	
	</div>
	</div>
	</div>
	
	<div id="category_wrap" style="background-color:lightblue; border:1px solid black;">
		<fieldset style="border:0;">
		<legend hidden>카테고리</legend>
			<div id="dlatl" style="font-size:12px; height:35em; width:100%; border:0;">
				<div style="width:95%; float:left;">
				
				
				
				
					<div class="cat_li"><a href="/html/detatil/detail.html">빵집</a></div>
					<div class="cat_field" ><a href="/html/detatil/detail.html">산도토리임자탕</a></div>
					<div class="cat_li"><a href="/html/detatil/detail.html">카페</a></label></div>
					<div class="cat_field"></div>
					<div class="cat_li">맛집</div>
					<div class="cat_field"></div>
					<div class="cat_li">공원</div>
					<div class="cat_field"></div>
					<div class="cat_li">등등</div>
					<div class="cat_field"></div>
					<div class="cat_li"><a href="/html/admin/admin.html">관리자</a>에게만 보이는 카테고리추가 버튼</div>
					<div class="cat_field"></div>
					
					<div style="float:right;"> 여기는 대충 슬라이드가 들어갈 위치입니다</div>
				</div>
			</div>
		</fieldset>
	</div>
	
	
	<div style="width:100%; height:30px; background-color:orange; margin:0 auto;">
		<div style="display:flex; justify-content:end; margin-right:10px; padding-top:3px;">
			<button style="border: 1px solid gray;"><a href="/html/bbs/bbsmain.html">자유게시판</a></button>
	</div>

	<!--
	<div class="fnbWrap">
		<div id="fnb">
				<a class="fnbItem" style="text-decoration:none"; href="#">공지사항</a>
				
				<a class="fnbItem" href="#">이용약관</a>
				
				<a class="fnbItem" href="#">개인정보처리방침</a>
				
				<a class="fnbItem" href="#">이용문의</a>

		</div>
			
	</div>
	-->
	<div id="dobong" style="float:left">
			<br>
			<fieldset style="background:lightgray; border:0; ">
				<legend hidden>이미지 넣을것</legend>
			<a href="https://www.dobong.go.kr/" style="text-decoration:none; text-align:center;"> 도봉구청</a>
			<a href="notice.jsp">공지사항</a>
			</fieldset>
	</div>
		
		<div id="btnTop" style="float:right">
			<br>
			<input class="btnTop" type="button" onclick="window.scrollTo(0,0);" value="위로가기">
			
		</div>	
	
	
</body>
</html>