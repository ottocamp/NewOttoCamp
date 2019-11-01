package camp.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import camp.model.vo.Attachment;
import camp.model.vo.CampInfo;


public class CampDao {

	private Properties prop = new Properties();
	
	public CampDao() {
		String fileName = CampDao.class.getResource("/sql/camp/camp-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<CampInfo> selectList(Connection conn) {
		Statement stmt = null;	
		ArrayList<CampInfo> cList = new ArrayList<CampInfo>();
		ResultSet rset = null;
		String sql = prop.getProperty("selectCampList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				 
				cList.add(new CampInfo(rset.getInt(1),
										rset.getString(2),
										rset.getString(3),
										rset.getString(4),
										rset.getString(5),
										rset.getInt(6),
										rset.getDate(7),
										rset.getString(8),
										rset.getString(9),
										rset.getString(10),
										rset.getString(11),
										rset.getString(12),
										rset.getString(13),
										rset.getString(14),
										rset.getInt(15)));
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return cList;
	}


	public ArrayList<Attachment> selectAttachmentList(Connection conn) {

		Statement stmt = null;	
		ArrayList<Attachment> aList = new ArrayList<Attachment>();
		ResultSet rset = null;
		String sql = prop.getProperty("selectAttachmentList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				
				Attachment at = new Attachment(rset.getInt(1),
												  rset.getString(2),
												  rset.getString(3),
												  rset.getString(4),
												  rset.getDate(5),
												  rset.getInt(6),
												  rset.getInt(7));
				
				aList.add(at);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
			
		return aList;
	}


	public int campApproval(Connection conn, int cNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("campApprval");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, cNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public ArrayList<CampInfo> selectDetailList(Connection conn) {
		
		
		Statement stmt = null;	
		ArrayList<CampInfo> cList = new ArrayList<CampInfo>();
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailCampList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				 
				cList.add(new CampInfo(rset.getInt(1),
										rset.getString(2),
										rset.getString(3),
										rset.getString(4),
										rset.getString(5),
										rset.getInt(6),
										rset.getDate(7),
										rset.getString(8),
										rset.getString(9),
										rset.getString(10),
										rset.getString(11),
										rset.getString(12),
										rset.getString(13),
										rset.getString(14),
										rset.getInt(15)));
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return cList;
	}


	public int campCancel(Connection conn, int code) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("campCancel");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, code);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	

	
}
