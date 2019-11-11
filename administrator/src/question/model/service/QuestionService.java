package question.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import question.model.dao.QuestionDao;
import question.model.vo.Question;

public class QuestionService {

	public int getFreqQesCount(int qTag) {
		Connection conn = getConnection();
		
		
		int qesCount = new QuestionDao().getFreqQesCount(conn, qTag);
		
		close(conn);
		
		return qesCount;
	}

	
	public ArrayList<Question> gerFreqQesList(int qTag, int currentPage, int qesLimit) {
		Connection conn = getConnection();
			
		
		ArrayList<Question> qlist = new QuestionDao().getFreqQesList(conn, qTag, currentPage, qesLimit);
		
		close(conn);
		
		return qlist;
	}


	public int searchFreqCount(String keyWord, int qTag) {
		Connection conn = getConnection();

		System.out.println("서비카운 : " + keyWord);
		System.out.println("서비카운 : " + qTag);
		int listCount = new QuestionDao().searchFreqCount(conn, keyWord, qTag);
		
		close(conn);
		
		return listCount;
	}


	public ArrayList<Question> searchFreqQuestion(String keyWord, int qTag, int currentPage, int qesLimit) {
		Connection conn = getConnection();

		System.out.println("서비리스 : " + keyWord);

		System.out.println("서비리스 : " + qTag);
		ArrayList<Question> qlist = new QuestionDao().searchFreqQuestion(conn, keyWord, qTag, currentPage, qesLimit);
		
		close(conn);			
		
		return qlist;
	}



	
	
}
