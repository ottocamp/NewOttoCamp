package reservation.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.model.service.ReservationService;
import reservation.model.vo.Reservation;

/**
 * Servlet implementation class ReservationDeleteServlet
 */
@WebServlet("/delete.re")
public class ReservationDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservationDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String index = request.getParameter("reNo");
			
		int reNo = Integer.parseInt(index.split(",")[0]);
		String msg = index.split(",")[1];
		
		System.out.println(msg);
		int result = new ReservationService().deleteReservation(reNo);
		
		if(result > 0) {
			
			request.getSession().setAttribute("msg", "회원예약사항 취소에 성공하였습니다.");	
			
			if(msg.equals("예약취소")) {
			
				request.getRequestDispatcher("reservationAvail.li").forward(request, response);
				
			}else if(msg.equals("전체내역")) {
			
				request.getRequestDispatcher("reservation.li").forward(request, response);
			}
						
		}else {
			request.setAttribute("msg", "예약 삭제에 실패하였습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
