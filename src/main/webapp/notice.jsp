<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항</title>
	</head>
	<style>
		a{
		 text-decoration:none;
		}
		
		html{
			width:100%;
			
		}
		table{
		width:70%
			text-align:center;
			margin:0 auto;
			
		}
		
		body{
			width:99%
			text-align:center;
			margin:0 auto;
			
		}
		#write_btn:after{
			content:""
			display:block;
			clear:both;
		}
			
		</style>
	<body>
		<%
		 	request.setCharacterEncoding("utf-8");
			Connection conn =null;
			//PreparedStatement pstmt=null;
			Statement st=null;
			ResultSet rs=null;
			String DirverName="com.mysql.cj.jdbc.Driver";
		
		
			String url= "jdbc:mysql://localhost:3306/dobong";
			String db_id="root";
			String db_pw="iotiot";
			String sql="select *from notice_tb";
			
			Class.forName(DirverName);
			conn=DriverManager.getConnection(url, db_id, db_pw);
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			
		 %>

		<a href="#">새로고침 기능</a>
		<a href="#">새로고침 기능</a>
		<a href="#">새로고침 기능</a>
		
		
		<a onClick="window.location.reload()" style="cursor: pointer"><br><br>
					<img class="img" src="test.jpg" alt>
				</a>
		
		<table border="1" style="text-align: center;">
			<thead>
			<tr>
				<th>번호</th>
				<th colspan="2">제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
				<th>추천</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>공지</td>
				<td colspan="2"><a href="./notice.html">자유게시판 이용 수칙</a></td>
				<td>게시판지기</td>
				<td>22.06.05</td>
				<td>992</td>
				<td>2</td>
				
			</tr>
			<tr>
				<td>공지</td>
				<td colspan="2">공지는 숫자 대신 공지로 표기</td>
				<td>게시판지기</td>
				<td>22.04.02</td>
				<td>9944</td>
				<td>3</td>
				
			</tr>
			<tr>
				<td>공지</td>
				<td colspan="2">[공원?]말머리를 선택하면 제목에 표시됩니다</td>
				<td>게시판지기</td>
				<td>22.03.04</td>
				<td>7</td>
				<td>8</td>
			</tr>
<!--=======목록 추가을 위한 반복문구간============  -->

			<% while(rs.next()){
			%><tr>
				<td><%=rs.getInt("number") %> </td>
				<td colspan="2"> <a href="detail.do?number=<%=rs.getInt("number")%>"> <%=rs.getString("title") %></a></td> 
				<td><%=rs.getString("nickname") %></td>  
				<td><%=rs.getDate("writingtime") %></td>
				<!-- <td>rs.getDate("writingtime ")</td> --> 
				<td>44</td>  
				<td>99</td>
			</tr><%
			}%>
			
			</tbody>
			<tfoot>
				<tr>
					<td colspan="7">
						<center>
							<a href="#">◀이전</a>
							<a href="#">1</a> 
							<a href="#">2</a> 
							<a href="#">3</a> 
							<a href="#">4</a> 
							<a href="#">다음▶</a>
						</center>
					</td>
				</tr>
				<tr>
					<td colspan="7">
						<center>
							<select>
								<option>전체 기간</option>
								<option>1일</option>
								<option>1주</option>
								<option>1개월</option>
								<option>6개월</option>
								<option>1년</option>
								<option>기간입력</option>
								<option>능력이 되는 선에서 구현</option>
							</select>	
							<select>
								<option>제목 + 내용</option>
								<option>제목</option>
								<option>내용</option>
								<option>글쓴이</option>
								<option>댓글</option>
								<option>댓글 작성자</option>
							</select>	
							<input type="search">
							<button><a href="./bbsmain.html">검색</a></button>
						</center>
					</td>					
				</tr>
				
			</tfoot>
		</table>
		<footer style="height:200px;">
		
		</footer>
	</body>
</html>
<% 
rs.close();
st.close();
conn.close();
%>