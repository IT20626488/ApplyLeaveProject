package apply;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class MemberDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    //username and password validation
	public static boolean validate(String username, String userid) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from staff where username='"+username+"' and userid='"+userid+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
//getting user name
	public static List<Member> getmember(String userName) {
ArrayList<Member> member = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from staff where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String userid = rs.getString(3);
				String leave = rs.getString(4);
				String date = rs.getString(5);
				String days = rs.getString(6);
				String assign = rs.getString(7);
				
				Member cus = new Member(id,username,userid,leave,date,days,assign);
				 member.add(cus);
			}
			
		} catch (Exception e) {
			
		}
		
		return  member;	
	}
//insert
	public static boolean insertmember(String username, String userid, String leave, String date, String days,
			String assign) {
boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into staff values(0,'"+username+"','"+userid+"','"+leave+"','"+date+"','"+days+"','"+assign+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    
		
	}
//update
	public static boolean updatemember(String id, String username, String userid, String leave, String date, String days, String assign) 
	{
		
		try {
			
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		System.out.println(id);
    		String sql = "update staff set id='"+id+"',username='"+username+"',userid='"+userid+"',date='"+date+"',days='"+days+"',assign='"+assign+"' where id='"+id+"'";
    		System.out.println(id);
    		int rs = stmt.executeUpdate(sql);
    		System.out.println(id);
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
//geting details
public static List<Member> getMemberDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Member> cus = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from staff where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
				String username = rs.getString(2);
				String userid = rs.getString(3);
				String leave = rs.getString(4);
				String date = rs.getString(5);
				String days = rs.getString(6);
				String assign = rs.getString(7);
    			Member c = new Member(id,username,userid,leave,date,days,assign);
    			
    			cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
//delete
public static boolean deleteMember(String id) {
	
	int convId = Integer.parseInt(id);
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from staff where id='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
	
	
    	
	

	

	
	

	
	

