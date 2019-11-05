package board.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import board.model.vo.Board;
import board.model.vo.Comment;


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
		ArrayList<Board> blist = new ArrayList<Board>();;
		String sql = prop.getProperty("selectList");
		
		try {
			stmt = conn.prepareStatement(sql);
			int startRow = (currentPage - 1) * boardLimit + 1;
			int endRow = startRow + boardLimit - 1;
			
			stmt.setInt(1, bTag);
			stmt.setInt(2, startRow);
			stmt.setInt(3, endRow);
			
			rset = stmt.executeQuery();
			
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

	public int increaseCount(Connection conn, int bNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
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

	public int deleteList(Connection conn, int bNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("deleteList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int getNextNo(Connection conn, int bTag, int bNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int nextNo = 0;
		
		String sql = prop.getProperty("nextNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bTag);
			pstmt.setInt(2, bNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				nextNo = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return nextNo;
	}

	
	public int getPreNo(Connection conn, int bNo, int bTag) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int preNo = 0;
		
		String sql = prop.getProperty("preNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bTag);
			pstmt.setInt(2, bNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				preNo = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return preNo;
	}
	
	
	public String getNextTitle(Connection conn, int bNo, int bTag) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;		
		String nextTitle = "";
		
		String sql = prop.getProperty("nextTitle");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bTag);
			pstmt.setInt(2, bNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				nextTitle = rset.getString(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return nextTitle;
	}

	public String getPreTitle(Connection conn, int bNo, int bTag) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;		
		String preTitle = "";
		
		String sql = prop.getProperty("preTitle");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bTag);
			pstmt.setInt(2, bNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				preTitle = rset.getString(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return preTitle;
	}

	public ArrayList<Comment> getCommentList(Connection conn, int bNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Comment> cList = new ArrayList<>();
		
		String sql = prop.getProperty("getCommentList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Comment c = new Comment();
				
				c.setcNo(rset.getInt("c_no"));
				c.setcContent(rset.getString("c_content"));
				c.setReviewScore(rset.getInt("review_score"));
				c.setCampCode(rset.getInt("camp_code"));
				c.setUserNo(rset.getInt("comment_writer"));
				
				if(rset.getInt("comment_writer") == 9999) {
					c.setcWriter(rset.getString("dispo_id"));
				}else {
					c.setcWriter("user_name");
				}
				
				
				cList.add(c);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return cList;
	}

	public int insertComment(Connection conn, Comment c) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("insertComment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c.getcContent());
			pstmt.setString(2, c.getDispoId());
			pstmt.setString(3, c.getDispoPwd());
			pstmt.setInt(4, c.getbNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		
		return result;
	}

	public int insertBoard(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("insertBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getbTitle());
			pstmt.setString(2, b.getbContent());
			pstmt.setInt(3, b.getbTag());
			pstmt.setInt(4, b.getbRegion());
			pstmt.setInt(5, b.getUserNo());
			
			if(b.getUserNo() == 9999) {
				pstmt.setString(6, b.getbWriter());
			}else {
				pstmt.setString(6, "---");
			}
			
			pstmt.setString(6, b.getPwd());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public String checkCommentPwd(Connection conn, int cNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String checkPwd = "";
		
		String sql = prop.getProperty("commentPwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cNo);
			
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

	public int deleteComment(Connection conn, int cNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("deleteComment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cNo);
			
			result = pstmt.executeUpdate();			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}


}
