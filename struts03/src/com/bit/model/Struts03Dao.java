package com.bit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Struts03Dao {
	Connection conn;
	
	private String driver="oracle.jdbc.OracleDriver"; //driver �̰� �ʤӽŹ���
	private String url="jdbc:oracle:thin:@localhost:1521:xe";
	private String user="scott";
	private String password="tiger";
	
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public Connection getConnection(){
		try {
			if(conn==null || conn.isClosed()){
				Class.forName(driver);
				conn=DriverManager.getConnection(url,user,password);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public ArrayList<Struts03Dto> getList(){
		ArrayList<Struts03Dto> list=new ArrayList<Struts03Dto>();
		String sql="select num, sub from struts03 order by num desc";
		
		try(Connection conn=getConnection()){
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Struts03Dto bean=new Struts03Dto();
				bean.setNum(rs.getInt(1));
				bean.setSub(rs.getString(2));
				list.add(bean);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}
}
