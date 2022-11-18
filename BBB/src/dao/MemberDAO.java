package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.JdbcUtil;
import vo.MemberVO;

public class MemberDAO {
	
	//	로그인 
	public boolean getMemeberPwd(String id, String pwd) {
		// DB 연동
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT password FROM member WHERE id=?";
		boolean result = false;

		conn = JdbcUtil.getConnection(); // JDBC 드라이버 메모리 로딩, DB 연결
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if(pwd.equals(rs.getString("password")))
					result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		return result;
	}

	// 회원가입
	public int insertMember(MemberVO data) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO member VALUES(?,?,?,?,'F')";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, data.getUserId());
			pstmt.setString(2, data.getUserPwd());
			pstmt.setString(3, data.getUserEmail());
			pstmt.setString(4, data.getUserPhone());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt);
		}
		return result;
	} 
	
	
	// 회원 탈퇴 (아이디 검색)
	public boolean existId(String id) {
		boolean isExist = false;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM member WHERE id=?";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				isExist = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("checkLoginUser : sql error");
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return isExist;
		
	}
	
	// 회원 탈퇴
	public int removeMember(String id) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "DELETE FROM member WHERE id=?";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt);
		}
		
		return result;
	}
	
	// 관리자 계정 확인하기
	public boolean adminMember(String id) {
		boolean isAdmin = false;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member where id =?";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String ok = rs.getString("adminOk");
				if(ok.equals("T")) {
					isAdmin = true;					
				}
			}
			} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		return isAdmin;
	}
	
	// 비밀번호 변경
	public int updateMember(MemberVO vo) {
		int n = 0;
		
		// DB 연동
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update member set password=? where id=?";
		
		conn = JdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserChPwd());
			pstmt.setString(2, vo.getUserId());
			n = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt);
		}
		return n;
	}

	
}
