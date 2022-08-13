package controller;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/detail.do")
public class detailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn =null;
		PreparedStatement pstmt=null;
		//Statement st=null;
		ResultSet rs=null;
		String DirverName="com.mysql.cj.jdbc.Driver";
		String url= "jdbc:mysql://localhost:3306/dobong";
		String db_id="root";
		String db_pw="iotiot";

		try {
			 int number=Integer.parseInt(request.getParameter("number")); 
				String sql="select *from notice_tb where number=?";
				
				Class.forName(DirverName);
				conn=DriverManager.getConnection(url, db_id, db_pw);
				//st=conn.createStatement(); 			//rs일때 사용 
				pstmt=conn.prepareStatement(sql);		//pstmt일때 사용
				pstmt.setInt(1, number);				//data setting
				rs=pstmt.executeQuery();				//pstmt는 파라미터로 넘겨주지않아!
				rs.next();
				
				
				String title=rs.getString("title");
				String nickname=rs.getString("nickname");
				Date writingtime=rs.getDate("writingtime"); 
				String content =rs.getString("content");		
				
				request.setAttribute("title",title);
				request.setAttribute("nickname",nickname);
				request.setAttribute("writingtime",writingtime);
				request.setAttribute("content",content);
					
				
		}catch(Exception e){
			 System.out.println("sql 접속 오류"+e);
		}finally {
			try {
				rs.close();
				pstmt.close();                        		
				conn.close();
				//st.close();
			} catch (Exception e) {
				System.out.println("close 오류"+e);
			}
		}
		
		
	// redirect
	//호출시 바로 다른 페이지로 가는것 로그인 후 바로 원래 있던 페이지로 넘어갈때 사용 
	//forward
	//서블렛이 있는 페이터를 전달받아서 다음 페이지를 이어가고 싶을때 사용 
		request.getRequestDispatcher("/detail.jsp").forward(request,response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
