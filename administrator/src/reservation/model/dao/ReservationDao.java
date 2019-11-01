package reservation.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static common.JDBCTemplate.*;

import grade.model.dao.GradeDao;
import reservation.model.vo.Reservation;

public class ReservationDao {
	private Properties prop = new Properties();
	
	public ReservationDao() {
		String fileName = ReservationDao.class.getResource("/sql/reservation/reservation-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	public ArrayList<Reservation> SelectList(Connection conn) {
		PreparedStatement pstmt = null;
		ArrayList<Reservation> rList = new ArrayList<Reservation>();
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReservation");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Reservation re = new Reservation(rset.getInt("RE_NO"),
												rset.getDate("PAYMENT_DATE"),
												rset.getString("USER_NAME"),
												rset.getString("PHONE"),
												rset.getString("RE_DATE"),
												rset.getInt("RE_COST"),
												rset.getInt("RE_STATUS") + "",
												rset.getString("CAMP_NAME"));
				
				rList.add(re);
				
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		

		return rList;
	}


	public int deleteReservation(Connection conn, int reNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("deleteReservation");
	
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, reNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public ArrayList<Reservation> SelectAvailList(Connection conn) {
		PreparedStatement pstmt = null;
		ArrayList<Reservation> rList = new ArrayList<Reservation>();
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAvailReservation");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Reservation re = new Reservation(rset.getInt("RE_NO"),
												rset.getDate("PAYMENT_DATE"),
												rset.getString("USER_NAME"),
												rset.getString("PHONE"),
												rset.getString("RE_DATE"),
												rset.getInt("RE_COST"),
												rset.getInt("RE_STATUS") + "",
												rset.getString("CAMP_NAME"));
				
				rList.add(re);
				
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		

		return rList;
	}


	public ArrayList<Reservation> SelectDeleteList(Connection conn) {
		
		PreparedStatement pstmt = null;
		ArrayList<Reservation> rList = new ArrayList<Reservation>();
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectDeleteReservation");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Reservation re = new Reservation(rset.getInt("RE_NO"),
												rset.getDate("PAYMENT_DATE"),
												rset.getString("USER_NAME"),
												rset.getString("PHONE"),
												rset.getString("RE_DATE"),
												rset.getInt("RE_COST"),
												rset.getInt("RE_STATUS") + "",
												rset.getString("CAMP_NAME"));
				
				rList.add(re);
				
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		

		return rList;
	}

	
}
