package camp.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import camp.model.dao.CampRefoDao;
import camp.model.vo.CampInfoReservation;
import camp.model.vo.CampOptionReservation;
import camp.model.vo.CampSiteReservation;

public class CampRefoService {

	public ArrayList<CampInfoReservation> selectCampList(int cNo) {
		Connection conn = getConnection();
		
		ArrayList<CampInfoReservation> cList = new CampRefoDao().selectCampReList(conn, cNo);
		
		close(conn);
		
		return cList;
	}

	public ArrayList<CampSiteReservation> selectSiteList(int cNo) {
		Connection conn = getConnection();
		
		ArrayList<CampSiteReservation> sList = new CampRefoDao().selectSiteList(conn, cNo);
		
		close(conn);
		
		return sList;
	}

	public ArrayList<CampOptionReservation> selectOptionList(int cNo) {
		Connection conn = getConnection();
		
		ArrayList<CampOptionReservation> oList = new CampRefoDao().selectOptionList(conn, cNo);
		
		close(conn);
		
		return oList;
	}

}
