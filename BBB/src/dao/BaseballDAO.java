package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.JdbcUtil;
import vo.BaseballVO;

public class BaseballDAO {
	public BaseballDAO() {

	}

	public ArrayList<BaseballVO> getBaseballList(String key, String key2) {
		ArrayList<BaseballVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		String str = "%" + key + "%";

		try {
			conn = JdbcUtil.getConnection();
			// key = sel / key2 = pos
			if (key.equals("all")) {
				sql = "SELECT * FROM dict WHERE yn = 'Y' ORDER BY id desc, position desc";
				pstmt = conn.prepareStatement(sql);
			} else if (key2.equals("p")) {
				sql = "SELECT * FROM dict WHERE position like ? ORDER BY id desc, position desc";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, str);
			} else {
				sql = "SELECT * FROM dict WHERE title like ? ORDER BY id desc, position desc";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, str);
			}

			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				BaseballVO vo = new BaseballVO();
				vo.setBbId(rs.getString("id"));
				vo.setBbPosition(rs.getString("position"));
				vo.setBbTitle(rs.getString("title"));
				vo.setBbContents(rs.getString("contents"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Dictionary 테이블 데이터 조회 실패");
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		return list;
	}
	
	public int addBaseballList(BaseballVO vo) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO dict VALUES(DICT_SEQ.nextval, ?, ?, ?, ?, ?)";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getBbPosition());
			pstmt.setString(2, vo.getBbTitle());
			pstmt.setString(3, vo.getBbContents());
			pstmt.setString(4, vo.getBbYn());
			pstmt.setString(5, vo.getBbWrite());
			result = pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt);
		}
		return result;
	}
}
