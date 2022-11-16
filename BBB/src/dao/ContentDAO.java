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

	// 승인 대기 확인
	public ArrayList<ContentVO> getBaseballList(String key) {
		ArrayList<ContentVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select DECODE(d.yn,'Y', '승인', 'N', '승인대기중', 'O', '취소') 특기, d.contents, d.title from mark m, dict d, member b where m.member_id = b.id AND b.id = ?;";

		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, key);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ContentVO vo = new ContentVO();
				vo.setcYn(rs.getString("ys"));
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
}
