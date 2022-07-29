package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TypeDAO;
import dto.TypeDTO;


@WebServlet("/Newpage")
public class Newpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String type = request.getParameter("type");
		
		TypeDAO tDao = TypeDAO.getInstance();
		TypeDTO tDto = tDao.getType(type);
		String placename = tDto.getPlacename();
		System.out.println(placename+"//servelet");
		request.setAttribute("placename", placename);
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("type.jsp");
		dis.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
