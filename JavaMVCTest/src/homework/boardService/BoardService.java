package homework.boardService;

import homework.boardDAO.BoardDAO;
import homework.boardVO.BoardVO;

public class BoardService {
	private BoardDAO dao;
	
	public BoardService() {
		dao = new BoardDAO();
	}
	
	public int registerBoard(BoardVO bv) {
		int cnt = dao.insertBoard(bv);
		return cnt;
	}
	
}
