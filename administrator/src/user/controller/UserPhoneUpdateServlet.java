package user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class UserPhoneUpdateServlet
 */
@WebServlet("/updatephone.user")
public class UserPhoneUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserPhoneUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User loginUser = (User)request.getSession().getAttribute("loginUser");	
		int uno = loginUser.getUserNo();
	
		String phone = request.getParameter("phone");
		
		
		int result = new UserService().updateUserPhone(uno,phone);
		
		if(result>0) {
			
			String userId = loginUser.getUserId();
			String userPwd = loginUser.getUserPwd();
			request.getSession().invalidate();
			
			loginUser = new UserService().loginUser(userId, userPwd);
			
			HttpSession session = request.getSession();	
			session.setAttribute("loginUser", loginUser);
				
			request.setAttribute("msg", "전화번호를 성공적으로 수정하였습니다.");
			request.getRequestDispatcher("views/user/phoneupdate.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "전화번호변경 실패");
			request.getRequestDispatcher("views/user/phoneupdate.jsp").forward(request, response);
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
