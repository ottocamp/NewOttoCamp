package question.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import question.model.dao.QuestionDao;
import question.model.vo.Question;

public class QuestionService {

	public int getFreqQesCount() {
		Connection conn = getConnection();
		
		int qesCount = new QuestionDao().getFreqQesCount(conn);
		
		close(conn);
		
		return qesCount;
	}

	
	public ArrayList<Question> gerFreqQesList() {
		Connection conn = getConnection();
			
		ArrayList<Question> qlist = new QuestionDao().getFreqQesList(conn);
		
		close(conn);
		
		return qlist;
	}

	
	
}
