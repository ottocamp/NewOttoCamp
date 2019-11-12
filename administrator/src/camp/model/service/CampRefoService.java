package camp.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import camp.model.dao.CampRefoDao;
import camp.model.vo.ReservationCamp;

public class CampRefoService {

	public ReservationCamp detailPageSend(int cNo) {
		System.out.println("1");
		Connection conn = getConnection();
		
		ReservationCamp rc = new CampRefoDao().datailPageSend(conn, cNo);
		
		close(conn);

		System.out.println("4" + rc);
		return rc;
	}
}
