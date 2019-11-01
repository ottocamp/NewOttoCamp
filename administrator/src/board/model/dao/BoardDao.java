package board.model.dao;

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

import board.model.vo.Board;


public class BoardDao {
	
	Properties prop = new Properties();
	
	public BoardDao(){
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public int getListCount(Connection conn, int bTag) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("listCount");
		
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bTag);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	

	public ArrayList<Board> selectList(Connection conn, int bTag, int currentPage, int boardLimit) {
		PreparedStatement stmt = null;
		ResultSet rset = null;
		ArrayList<Board> blist = null;
		String sql = prop.getProperty("selectList");
		
		try {
			stmt = conn.prepareStatement(sql);
			int startRow = (currentPage - 1) * boardLimit + 1;
			int endRow = startRow + boardLimit - 1;
			
			stmt.setInt(1, bTag);
			stmt.setInt(2, startRow);
			stmt.setInt(3, endRow);
			
			rset = stmt.executeQuery();
			
			blist = new ArrayList<Board>();
			
			while(rset.next()) {
				Board b = new Board();
				b.setbNo(rset.getInt("b_no"));
				b.setbTag(rset.getInt("b_tag"));
				b.setbTitle(rset.getString("b_title"));
				b.setUpdateDate(rset.getDate("update_date"));
				b.setbCount(rset.getInt("b_count"));	
				b.setbRegion(rset.getInt("b_region"));
				
				if(rset.getInt("user_no") == 9999) {
					b.setbWriter(rset.getString("dispo_id"));
				}else {
					b.setbWriter(rset.getString("user_name"));
				}
				
				blist.add(b);
			}			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		
		return blist;
	}

	public Board detailList(Connection conn, int bNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board b = new Board();
		String sql = prop.getProperty("detailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				b.setbNo(rset.getInt("b_no"));
				b.setbTag(rset.getInt("b_tag"));
				b.setbTitle(rset.getString("b_title"));
				b.setbCount(rset.getInt("b_count"));
				b.setUpdateDate(rset.getDate("update_date"));
				b.setbContent(rset.getString("b_content"));
				b.setbRegion(rset.getInt("b_region"));
				b.setUserNo(rset.getInt("user_no"));
				
				if(rset.getInt("user_no") == 9999) {
					b.setbWriter(rset.getString("dispo_id"));
				}else {
					b.setbWriter(rset.getString("user_name"));
				}
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return b;
	}

	public String selectPwd(Connection conn, int bNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String checkPwd = "";
		
		String sql = prop.getProperty("selectPwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				checkPwd = rset.getString("dispo_pwd");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return checkPwd;
	}

	

}
