package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.JdbcUtil;
import vo.BaseballVO;
import vo.ContentVO;

public class ContentDAO {
	public ContentDAO() {

	}
/*
	// 북마크 가져오기
	public ArrayList<ContentVO> getBookmarkList(String key) {
		ArrayList<ContentVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select d.position, d.title from mark m, dict d, member b where m.member_id = b.id AND b.id = ?";

		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, key);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ContentVO vo = new ContentVO();
				vo.setcPosition(rs.getString("position"));
				vo.setcTitle(rs.getString("title"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}

		return list;
	}
*/
	
	
	// 용어 추가 확인 (사용자 계정)
	public ArrayList<ContentVO> getBaseballList(String key) {
		ArrayList<ContentVO> list2 = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select DECODE(d.yn,'Y', '승인', 'N', '승인대기중', 'O', '취소') yn, d.contents, d.title from dict d, member b where b.id = ? AND d.write = b.id";

		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, key);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ContentVO vo = new ContentVO();
				vo.setcYn(rs.getString("yn"));
				vo.setcTitle(rs.getString("title"));
				vo.setcContents(rs.getString("contents"));
				list2.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}

		return list2;
	}
	
	// 용어 추가 (관리자 계정)
	public ArrayList<ContentVO> getAdminBaseballList() {
		ArrayList<ContentVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select DECODE(d.yn,'Y', '승인', 'N', '승인대기중', 'O', '취소') yn, d.contents, d.title, d.id as id from dict d, member b where d.write = b.id AND yn = 'N'";

		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ContentVO vo = new ContentVO();
				vo.setcId(rs.getInt("id"));
				vo.setcYn(rs.getString("yn"));
				vo.setcTitle(rs.getString("title"));
				vo.setcContents(rs.getString("contents"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		return list;
	}
	
	
	// 용어 수정 (ㄱ관리자 계정)
		public int getAdminBaseballChage(ContentVO vo) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			String sql = "update dict set yn = ? where id = ?";
			int n = 0;

			try {
				conn = JdbcUtil.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getcYn());
				pstmt.setInt(2, vo.getcId());
				n = pstmt.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JdbcUtil.close(conn, pstmt);
			}
			return n;
		}
}
