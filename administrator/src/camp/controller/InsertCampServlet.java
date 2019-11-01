package camp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertCampServlet
 */
@WebServlet("/insert.ca")
public class InsertCampServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCampServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // 1. 한글이 있을 경우 인코딩 처리
	      request.setCharacterEncoding("UTF-8");
	      
	      // 2. request에 담겨있는 값들 꺼내서 변수에 저장 및 객체 생성
	      String campName = request.getParameter("campName");
	      String operatorNo = request.getParameter("operatorNo");
	      String operatorName = request.getParameter("operatorName");
	      String campAddress = request.getParameter("campAddress");
	      String campPhone = request.getParameter("campPhone");
	      String campUrl = request.getParameter("campUrl");
	      int campTheme = Integer.parseInt(request.getParameter("campTheme"));
	      // 데이트 처리 물어보기 
	      String availableDate = request.getParameter("availableDate");
	      String postingYN = request.getParameter("");
	      String refund = request.getParameter("refund");
	      String suggestEtc = request.getParameter("suggest");
	      
	      System.out.println(availableDate);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
