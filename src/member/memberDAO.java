package member;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.ConnectionUtil;

public class memberDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public void join(MemberDTO memberDTO) {
		try {
			String SQL = "insert into MEMBER values("
					+ "?,?,?,?,?,?,sysdate,MEMBER_SEQ.nextval)";
			conn = ConnectionUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getPassword());
			pstmt.setString(3, memberDTO.getName());
			pstmt.setDate(4, (Date) memberDTO.getBirth());
			pstmt.setString(5, memberDTO.getGender());
			pstmt.setString(6, memberDTO.getEmail());
			
			pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {try {conn.close();}catch(SQLException e) {e.printStackTrace();}}
			if(pstmt != null) {try {conn.close();}catch(SQLException e) {e.printStackTrace();}}
		}
	}
	
	public boolean login(String id, String password) {
		try {
			String SQL = "select ID, PASSWORD FROM MEMBER WHERE ID=? PASSWORD=?";
			conn = ConnectionUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {try {conn.close();}catch(SQLException e) {e.printStackTrace();}}
			if(pstmt != null) {try {conn.close();}catch(SQLException e) {e.printStackTrace();}}
			if(rs != null) {try {conn.close();}catch(SQLException e) {e.printStackTrace();}}
		}
		return false;
	}
}
