package camp.model.vo;

import java.io.Serializable;

public class ReservationCamp implements Serializable {
	
	//메인2(상세) - > 예약 폼으로 넘어올 때 쓰기위한 데이터를 끌어오는  vo
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2822477696353048905L;

	private int cNo; // 캠핑장 코드(시퀀스에따른 일련번호.)

/*	private String sType; // 사이트 타입
	private String reSiType; // 실제 입장사이트
	private int sPrice; // 사이트가격
	private int addPrice; // 추가인원 인당 요금
	private int dateMax; //최대 숙박기간
	private int stayMax; // 최대 숙박인원

	private String oType; //옵션 타입
	private String reOpType; // 실제 옵션
	private int oPrice; // 옵션가격
	private int opMax1; // 옵션 최대값 1
	private int opMax2; // 옵션 최대값 2
*/

	public ReservationCamp() {}

	public ReservationCamp(int cNo) {
		super();
		this.cNo = cNo;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	@Override
	public String toString() {
		return "ReservationCamp [cNo=" + cNo + "]";
	}



	
}
