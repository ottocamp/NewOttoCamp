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
		request.setCharacterEncoding("utf-8");
		
		String checkInDate = request.getParameter("date_start");
		String location = request.getParameter("location");
		System.out.println(checkInDate);
		System.out.println(location);
		
		ArrayList<CampInfo> cList = new CampService().selectLocationList(checkInDate,location);
		ArrayList<Attachment> aList = new CampService().selectLocationAttachmentList(checkInDate,location);	
		
		request.getSession().setAttribute("cList", cList);
		request.getSession().setAttribute("aList", aList);

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
