package com.leave.applyServlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("name");
		String password = request.getParameter("password");
		leaveApply dao = new leaveApply();		
		dao.validate(username, password);
		dao.c_validate(username, password);
		try {
			if(dao.validate(username, password)) {
				leaveApply d = new leaveApply();
				List<Map<String, Object>> employeeList = d.displayLeave();
				request.setAttribute("employeeList",employeeList);
				RequestDispatcher rd = request.getRequestDispatcher("/admin.jsp");		
				rd.forward(request, response);
			}
			
				if(dao.c_validate(username, password)) {
					response.sendRedirect("leave.jsp");
				}
			else {
				response.sendRedirect("login.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
