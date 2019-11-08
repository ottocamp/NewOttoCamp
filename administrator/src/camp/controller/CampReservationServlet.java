package camp.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import camp.model.service.CampRefoService;
import camp.model.vo.ReservationCamp;

/**
 * Servlet implementation class CampReservationServlet
 */
@WebServlet("/campRe.re")
public class CampReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CampReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int cNo = Integer.parseInt(request.getParameter("cNo"));
		
		
		ReservationCamp rc = new CampRefoService().detailPageSend(cNo);
		
		if(rc != null) {
			request.setAttribute("rc", rc);
			request.getRequestDispatcher("views/reservation/reservationFormView.jsp").forward(request, response);
			System.out.println("5" + rc);
		}else {
			System.out.println("6" + rc);
		}
		
	
		System.out.println("7" + rc);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
