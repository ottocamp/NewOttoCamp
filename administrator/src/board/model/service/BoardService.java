package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;
import board.model.vo.Comment;

public class BoardService {

	public int getListCount(int bTag) {
		Connection conn = getConnection();
		
		int result = new BoardDao().getListCount(conn, bTag);
		
		close(conn);
		
		return result;
	}

	public ArrayList<Board> selectList(int bTag, int currentPage, int boardLimit) {
		Connection conn = getConnection();
		
		ArrayList<Board> blist = new BoardDao().selectList(conn, bTag, currentPage, boardLimit);
		
		close(conn);			
		
		return blist;
	}

	public Board detailList(int bNo) {
		Connection conn = getConnection();
		Board b = null;

		int result = new BoardDao().increaseCount(conn, bNo);
		
		if(result > 0) {
			b = new BoardDao().detailList(conn, bNo);			
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		
		return b;
	}
	
	
	public Board detailListNoCount(int bNo) {
		Connection conn = getConnection();
		
		Board b = new BoardDao().detailList(conn, bNo);			
		
		close(conn);
		
		
		return b;
	}
	
	

	public String selectPwd(int bNo) {
		Connection conn = getConnection();
		
		String checkPwd = new BoardDao().selectPwd(conn, bNo);
		
		close(conn);
		
		return checkPwd;
	}

	public int deleteList(int bNo) {
		Connection conn = getConnection();
		
		int result = new BoardDao().deleteList(conn, bNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}


	public int getNextNo(int bNo, int bTag) {
		Connection conn = getConnection();
		
		int nextNo = new BoardDao().getNextNo(conn, bTag, bNo);
		
		close(conn);
		
		return nextNo;
	}

	
	public int getPreNo(int bNo, int bTag) {
		Connection conn = getConnection();
		
		int preNo = new BoardDao().getPreNo(conn, bNo, bTag);
		
		close(conn);
		
		return preNo;
	}
	
	

	public String getNextTitle(int bNo, int bTag) {
		Connection conn = getConnection();
		
		String nextTitle = new BoardDao().getNextTitle(conn, bNo, bTag);
		
		close(conn);
		
		return nextTitle;
	}

	public String getPreTitle(int bNo, int bTag) {
		Connection conn = getConnection();
		
		String preTitle = new BoardDao().getPreTitle(conn, bNo, bTag);
		
		close(conn);
		
		return preTitle;
	}

	public ArrayList<Comment> getCommentList(int bNo) {
		Connection conn = getConnection();
		
		ArrayList<Comment> cList = new BoardDao().getCommentList(conn, bNo);
		
		close(conn);
		
		
		return cList;
	}

	public ArrayList<Comment> insertComment(Comment c) {
		Connection conn = getConnection();
		ArrayList<Comment> cList = new ArrayList<>();
		
		
		int result = new BoardDao().insertComment(conn, c);
		
		if(result > 0) {
			cList = new BoardDao().getCommentList(conn, c.getbNo());
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		
		return cList;
	}

	public int insertBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new BoardDao().insertBoard(conn, b);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public String checkCommentPwd(int cNo) {
		Connection conn = getConnection();
		
		String checkPwd = new BoardDao().checkCommentPwd(conn, cNo);
		
		close(conn);
		
		
		return checkPwd;
	}

	public int deleteComment(int cNo) {
		Connection conn = getConnection();
		
		int result = new BoardDao().deleteComment(conn, cNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}





}
