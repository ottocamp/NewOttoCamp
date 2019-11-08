package question.model.dao;

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

import question.model.vo.Question;

public class QuestionDao {

	Properties prop = new Properties();
	
	public QuestionDao() {
		String fileName = QuestionDao.class.getResource("/sql/question/question-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	public int getFreqQesCount(Connection conn, int qTag) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int qesCount = 0;
		
		String sql = "";
		
		try {
			
			if(qTag == 999) {
				sql = prop.getProperty("freqQesCount");				
				pstmt = conn.prepareStatement(sql);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					qesCount = rset.getInt(1);
				}
			}else {
				sql = prop.getProperty("freqTagQesCount");
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, qTag);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					qesCount = rset.getInt(1);
				}
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return qesCount;
	}
	
	
	public ArrayList<Question> getFreqQesList(Connection conn, int qTag, int currentPage, int qesLimit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Question> qlist = new ArrayList<>();		
		
		String sql = "";
		
		
		
		
		try {

			if(qTag == 999) {
				sql = prop.getProperty("getFreqQesList");	
				pstmt = conn.prepareStatement(sql);
				int startRow = (currentPage - 1) * qesLimit + 1;
				int endRow = startRow + qesLimit - 1;
				
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					Question q = new Question();
					q.setqTitle(rset.getString("q_title"));
					q.setqContent(rset.getString("q_content"));
					q.setqTag(rset.getInt("q_tag"));
					q.setqNo(rset.getInt("q_no"));
					
					
					qlist.add(q);
				}
				
			}else {
				sql = prop.getProperty("getFreqTagQesList");
				pstmt = conn.prepareStatement(sql);
				int startRow = (currentPage - 1) * qesLimit + 1;
				int endRow = startRow + qesLimit - 1;
				
				pstmt.setInt(1, qTag);
				pstmt.setInt(2, startRow);
				pstmt.setInt(3, endRow);

				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					Question q = new Question();
					q.setqTitle(rset.getString("q_title"));
					q.setqContent(rset.getString("q_content"));
					q.setqTag(rset.getInt("q_tag"));
					q.setqNo(rset.getInt("q_no"));
					
					
					qlist.add(q);
				}
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return qlist;
	}


	public int searchFreqCount(Connection conn, String keyWord, int qTag) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int qesCount = 0;

		System.out.println("디에카운 : " + keyWord);
		System.out.println("디에카운 : " + qTag);
		String sql = "";
		
		try {
			
			if(qTag == 999) {
				sql = prop.getProperty("searchFreqCount");	
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, keyWord);
				pstmt.setString(2, keyWord);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					qesCount = rset.getInt(1);
				}
				
			}else {
				sql = prop.getProperty("searchTagFreqCount");
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, keyWord);
				pstmt.setString(2, keyWord);
				pstmt.setInt(3, qTag);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					qesCount = rset.getInt(1);
				}
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return qesCount;
	}


	public ArrayList<Question> searchFreqQuestion(Connection conn, String keyWord, int qTag, int currentPage, int qesLimit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Question> qlist = new ArrayList<>();

		System.out.println("디에리스 : " + keyWord);
		System.out.println("디에리스 : " + qTag);
		String sql = ""; 
		
		try {
			
			if(qTag == 999) {
				sql = prop.getProperty("searchFreqQuestion");	
				pstmt = conn.prepareStatement(sql);
				int startRow = (currentPage - 1) * qesLimit + 1;
				int endRow = startRow + qesLimit - 1;
				
				pstmt.setString(1, keyWord);
				pstmt.setString(2, keyWord);
				pstmt.setInt(3, startRow);
				pstmt.setInt(4, endRow);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					Question q = new Question();
					q.setqTitle(rset.getString("q_title"));
					q.setqContent(rset.getString("q_content"));
					q.setqTag(rset.getInt("q_tag"));
					q.setqNo(rset.getInt("q_no"));
					
					
					qlist.add(q);
				}
				
			}else {
				sql = prop.getProperty("searchFreqTagQuestion");
				pstmt = conn.prepareStatement(sql);
				int startRow = (currentPage - 1) * qesLimit + 1;
				int endRow = startRow + qesLimit - 1;
				
				pstmt.setInt(1, qTag);
				pstmt.setString(2, keyWord);
				pstmt.setString(3, keyWord);
				pstmt.setInt(4, startRow);
				pstmt.setInt(5, endRow);

				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					Question q = new Question();
					q.setqTitle(rset.getString("q_title"));
					q.setqContent(rset.getString("q_content"));
					q.setqTag(rset.getInt("q_tag"));
					q.setqNo(rset.getInt("q_no"));
					
					
					qlist.add(q);
				}
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return qlist;
	}

	

}
