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

		int listCount = new QuestionDao().searchFreqCount(conn, keyWord, qTag);
		
		close(conn);
		
		return listCount;
	}


	public ArrayList<Question> searchFreqQuestion(String keyWord, int qTag, int currentPage, int qesLimit) {
		Connection conn = getConnection();

		ArrayList<Question> qlist = new QuestionDao().searchFreqQuestion(conn, keyWord, qTag, currentPage, qesLimit);
		
		close(conn);			
		
		return qlist;
	}


	public Question getNoMemQuestion(String memId, String memPwd) {
		Connection conn = getConnection();
		
		Question q = new QuestionDao().getNoMemQuestion(conn, memId, memPwd);
		close(conn);
		
		return q;
	}

	

	public int myQesCount(int userNo) {
		Connection conn = getConnection();
		
		int count = new QuestionDao().myQesCount(conn, userNo);
		
		close(conn);

		return count;
	}


	public ArrayList<Question> getMyQuestion(int userNo, int currentPage, int qesLimit) {
		Connection conn = getConnection();
		
		ArrayList<Question> qlist = new QuestionDao().getMyQuestion(conn, userNo, currentPage, qesLimit);
		
		close(conn);
		
		return qlist;
	}


	public int searchMyQesCount(int userNo, String keyWord) {
		Connection conn = getConnection();
		
		int qesCount = new QuestionDao().searchMyQesCount(conn, userNo, keyWord);
		
		close(conn);
		
		return qesCount;
	}


	public ArrayList<Question> searchMyQuestion(int userNo, String keyWord, int currentPage, int qesLimit) {
		Connection conn = getConnection();

		ArrayList<Question> qlist = new QuestionDao().searchMyQuestion(conn, userNo, keyWord, currentPage, qesLimit);
		
		close(conn);
		
		return qlist;
	}


	public int getAdminListCount() {
		Connection conn = getConnection();
		
		int listCount = new QuestionDao().getAdminListCount(conn);
		
		return listCount;
	}


	public ArrayList<Question> getAdminList(int currentPage, int boardLimit) {
		Connection conn = getConnection();
		
		ArrayList<Question> qlist = new QuestionDao().getAdminListCount(conn, currentPage, boardLimit);
		
		return null;
	}




	
	
}
