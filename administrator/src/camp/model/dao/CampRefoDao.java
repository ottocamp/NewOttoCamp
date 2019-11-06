package camp.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import camp.model.vo.ReservationCamp;

public class CampRefoDao {

	private Properties prop = new Properties();

	public ReservationCamp datailPageSend(Connection conn, int cNo) {
		System.out.println("2");
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ReservationCamp rc = null;
		
		String sql = prop.getProperty("campReservationSend");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				rc = new ReservationCamp(rset.getInt("cNo"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		System.out.println("3" + rc);
		return rc;
	}
	
	

}
