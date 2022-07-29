package dao;

import java.sql.*;
import java.util.*;

import dto.TypeDTO;

public class TypeDAO {
	private TypeDAO() {
		
	}
	private static TypeDAO instance = new TypeDAO();
	
	public static TypeDAO getInstance() {
		return instance;
	}
	
	//커넥션 기능처리
	
	public static Connection getConnection() throws Exception{
		
		Connection conn = null;
		
		String url = "jdbc:mysql://127.0.0.1:3306/dobong";
		String db_id="root";
		String db_pw="iotiot";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url, db_id, db_pw);
		
		return conn;
		
	}
	
	//소분류(식당,밥집,찻집 등등)별 조회
	
	public TypeDTO getType(String type) {
		TypeDTO tDto=null;
		String sql="select placename from intropage where type=?;";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, type);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				tDto = new TypeDTO();
				tDto.setPlacename(rs.getString("placename"));
				System.out.println(tDto.getPlacename());
				
			}
			
		}catch(Exception e) {
			System.out.println("소분류 별 조회 작동 오류"+e);
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)rs.close();
			}catch(Exception ex) {
				System.out.println("소분류 별 조회 작동종료 오류"+ex);
			}
		}
		return tDto;
	}
	
}
