package homework.boardDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import homework.boardVO.BoardVO;
import homework.util.JDBCUtil;


public class BoardDAO {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int insertBoard(BoardVO bv) {
		
		int cnt = 0;
		try {
			conn = JDBCUtil.getConnection();
			
			String sql = "insert INTO  jdbc_board(board_no, board_date, board_title, board_writer, board_content )" 
					   + "VALUES ( board_seq.nextVal, sysdate, ?, ?, ? )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bv.getTitle());
			pstmt.setString(2, bv.getWriter());
			pstmt.setString(3, bv.getContent());
			
			cnt = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("게시글 등록 중 예외발생!", e);
		}finally {
			// 자원 반납...
			JDBCUtil.close(conn, stmt, pstmt, rs);
		}
		
		return cnt;
		
	}
	
	private int updateWrite(BoardVO bv) {
		
		int cnt = 0;
		
		try {
			conn = JDBCUtil.getConnection();
			
			String sql = "UPDATE jdbc_board "
					   + " SET board_content =  ? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bv.getContent());

			cnt = pstmt.executeUpdate();
				
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, stmt, pstmt, rs);
		}
		return cnt;	
	}	
}
