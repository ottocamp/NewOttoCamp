package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;

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



}
