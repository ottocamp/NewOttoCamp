package question.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import question.model.vo.Question;
import static common.JDBCTemplate.*;

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
	
	
	public int getFreqQesCount(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		int qesCount = 0;
		
		String sql = prop.getProperty("freqQesCount");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				qesCount = rset.getInt(1);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return qesCount;
	}
	
	
	public ArrayList<Question> getFreqQesList(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Question> qlist = new ArrayList<>();
		
		String sql = prop.getProperty("getFreqQesList");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				Question q = new Question();
				q.setqTitle(rset.getString("q_title"));
				q.setqContent(rset.getString("q_content"));
								
				qlist.add(q);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		
		return qlist;
	}

	

}
