package user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class UserInsertServlet
 */
@WebServlet("/insert.user")
public class UserInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		request.setCharacterEncoding("utf-8");
		
		
		User user = new User();
		
		String uid = request.getParameter("uid");
		String uname = request.getParameter("uname");
		String uemail = request.getParameter("uemail");
		String uphone = request.getParameter("uphone");
		String upwd = request.getParameter("upwd");
		String utype = request.getParameter("utype");
		
		user.setUserId(uid);
		user.setUserName(uname);
		user.setEmail(uemail);
		user.setPhone(uphone);
		user.setUserPwd(upwd);
		user.setUserType(utype);
		int result = new UserService().userInsert(user); 
		response.setContentType("text/html; charset=utf-8");
		
		if(result>0) {
			request.setAttribute("joinMsg", "가입성공");
			request.getRequestDispatcher("views/user/login.jsp").forward(request, response);

		}else {
			request.setAttribute("joinMsg", "가입실패");
			request.getRequestDispatcher("views/user/login.jsp").forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
