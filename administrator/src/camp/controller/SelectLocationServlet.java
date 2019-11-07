package camp.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import camp.model.service.CampService;
import camp.model.vo.Attachment;
import camp.model.vo.CampInfo;

/**
 * Servlet implementation class MainSelectServlet
 */
@WebServlet("/location.li")
public class SelectLocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectLocationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String checkInDate = request.getParameter("date_start");
		System.out.println(checkInDate);
	
		String NewcheckInDate = checkInDate.substring(8) + "/" + checkInDate.substring(3,5) + "/" + checkInDate.substring(0, 2);
		System.out.println(NewcheckInDate);
		String location = request.getParameter("location");
		
		ArrayList<CampInfo> cList = new CampService().selectLocationList(NewcheckInDate, location);
		ArrayList<Attachment> aList = new CampService().selectLocationAttachmentList(NewcheckInDate, location);	
		request.setAttribute("cList", cList);
		request.setAttribute("aList", aList);
		
		request.getRequestDispatcher("views/mainPage/mainPage2.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
