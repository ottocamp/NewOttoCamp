package camp.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;
import camp.model.dao.CampDao;
import camp.model.vo.Attachment;
import camp.model.vo.CampInfo;
import camp.model.vo.ReservationCamp;

import static common.JDBCTemplate.*;

public class CampService {

	public ArrayList<CampInfo> selectList() {
		Connection conn = getConnection();
		
		ArrayList<CampInfo> cList = new CampDao().selectList(conn);
		
		close(conn);
		
		
		return cList;
	}

	public ArrayList<Attachment> selectAttachmentList() {
		Connection conn = getConnection();
		
		ArrayList<Attachment> aList = new CampDao().selectAttachmentList(conn);
		
		close(conn);
		
		return aList;
	}

	public int campApproval(int cNo) {
		Connection conn = getConnection();
		
		int result = new CampDao().campApproval(conn, cNo);
		
		if(result > 0) {
			commit(conn);			
		}else {
			rollback(conn);
		}
		close(conn);
		
		
		return result;
	}

	public ArrayList<CampInfo> selectDetailList() {
		
		Connection conn = getConnection();
		
		ArrayList<CampInfo> cList = new CampDao().selectDetailList(conn);
		
		close(conn);
			
		return cList;
	}

	public int campCancel(int code) {
		
		Connection conn = getConnection();
		
		int result = new CampDao().campCancel(conn, code);
		
		if(result > 0) {
			commit(conn);			
		}else {
			rollback(conn);
		}
		close(conn);
		
		
		return result;
	}
	
	// 캠핑장 정보 등록 insert 서비스
		public int insertCamp(CampInfo c, ReservationCamp rc, String siteoption, String sitecount, ArrayList<Attachment> fileList) {
			Connection conn = getConnection();
			
			CampDao cDao = new CampDao();
			System.out.println("CampService의 c : " + c);
			System.out.println("CampService의 rc : " + rc);
			System.out.println("CampService의 fileList : " + fileList);
		
			
			int result1 = cDao.insertCamp(conn, c);
			int result2 = cDao.insertCampDetail(conn, rc, siteoption, sitecount);
			int result3 = cDao.insertCampPics(conn, fileList);
			
			System.out.println("insertCamp 결과 : " + result1);
			System.out.println("insertCampDetail 결과 : " + result2);
			System.out.println("insertCampPics 결과 : " + result3);
			
			if(result1 > 0 && result2 > 0 && result3 > 0) {
				commit(conn);
			} else {
				rollback(conn);
			}
			
			close(conn);
			
			return result1;
		}
		
		

		public ArrayList<CampInfo> selectMainList() {
			Connection conn = getConnection();
			
			ArrayList<CampInfo> cList = new CampDao().selectMainList(conn);
			
			close(conn);
			
			
			return cList;
		}
		

		public ArrayList<Attachment> selectMainAttachmentList() {
			Connection conn = getConnection();
			
			ArrayList<Attachment> aList = new CampDao().selectMainAttachmentList(conn);
			
			close(conn);
			
			return aList;
		}

		public ArrayList<CampInfo> selectLocationList(String newcheckInDate, String location) {
			Connection conn = getConnection();
			
			ArrayList<CampInfo> cList = new CampDao().selectLocationList(conn, newcheckInDate, location);
			
			close(conn);
		
			return cList;
		}

		public ArrayList<Attachment> selectLocationAttachmentList(String newcheckInDate, String location) {
			Connection conn = getConnection();
			
			ArrayList<Attachment> aList = new CampDao().selectLocationAttachmentList(conn, newcheckInDate, location);
			
			close(conn);
			
			return aList;
		}

		public ArrayList<CampInfo> selectSubmitResult(int uNo) {
			Connection conn = getConnection();
			
			ArrayList<CampInfo> clList = new CampDao().selectSubmitResult(conn, uNo);
			
			
			close(conn);
		
			return clList;
		}	
		

}
