package user.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static common.JDBCTemplate.*;

import user.model.vo.IpInfo;
import user.model.vo.User;

public class UserDao {
	
	private Properties prop = new Properties();
	
	public UserDao() {
		String fileName = UserDao.class.getResource("/sql/user/user-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}
	
	
	

	public int userInsert(Connection con, User user) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query =  prop.getProperty("insertUser");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserName());
			pstmt.setString(3, user.getUserPwd());
			pstmt.setString(4, user.getPhone());
			pstmt.setString(5, user.getEmail());
			
			result= pstmt.executeUpdate();
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		
		
		
		return result;
	}




	public User loginUser(Connection con, String userId, String userPwd) {

		User user = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query =  prop.getProperty("loginUser");
		
		try {
			pstmt =  con.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				user = new User(rset.getInt("USER_NO"),
								rset.getString("USER_TYPE"),
								rset.getString("USER_ID"),
								rset.getString("USER_NAME"),
								rset.getString("USER_PWD"),
								rset.getString("PHONE"),
								rset.getString("EMAIL"),
								rset.getString("BIRTHDATE"),
								rset.getString("GENDER"),
								rset.getString("FORIGNYN"),
								rset.getString("STATUS"),
								rset.getString("GRADE"),
								rset.getString("JOIN_DATE")
						);
	

			}
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		return user;
	}




	public int loginBlock(Connection con, int userNo, String flag) {
       
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query =  prop.getProperty("loginBlock");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, flag);
			pstmt.setInt(2, userNo);
			
			result= pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		

		return result;
	}




	public int ipInfo(Connection con,int uno, String ip, String country,String flag) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query =  prop.getProperty("ipInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, uno);
			pstmt.setString(2, ip);
			pstmt.setString(3, country);
			pstmt.setString(4, flag);
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}




	public ArrayList<IpInfo> selectIpInfo(Connection con, int uno) {
		
		ArrayList<IpInfo> ipinfo = new ArrayList<IpInfo>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String query =  prop.getProperty("selectIpInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, uno);
			
			rset = pstmt.executeQuery();
			
			

				while(rset.next()) {
				
				IpInfo ip = new IpInfo();
				ip.setCountry(rset.getString("CONNECT_COUNTRY"));
				ip.setDate(rset.getString("CONNECT_DATE"));
				ip.setIp(rset.getString("IP"));
				ip.setSof(rset.getString("SOF"));
				
				ipinfo.add(ip);
				
				}
				
				
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(rset);
			close(pstmt);
		}
		
		
		return ipinfo;
	}




	public String selectFlag(Connection con, int uno) {
		
		String flag ="";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query =  prop.getProperty("selectFlag");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, uno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				flag=rset.getString("FORIGNYN");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return flag;
	}




	public User searchUser(Connection con,String userId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		User searchUser = null;
		
		String query =  prop.getProperty("selectUser");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			
			rset =pstmt.executeQuery();
			
			if(rset.next()) {
				searchUser = new User();
				searchUser.setUserNo(rset.getInt("USER_NO"));
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		return searchUser;
	}






}
