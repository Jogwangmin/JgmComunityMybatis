package board.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import board.model.dao.BoardDAO;
import board.model.vo.Board;
import board.model.vo.PageData;
import common.SqlSessionTemplate;

public class BoardService {
	
	private BoardDAO bDao;
	
	public BoardService() {
		bDao = new BoardDAO();
	}

	public int insertBoard(Board board) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = bDao.insertBoard(session, board);
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		return result;
	}


	public Board selectOneByNo(int boardNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Board board = bDao.selectOneByNo(session, boardNo);
		session.close();
		return board;
	}

	public PageData selectBoardList(int currentPage) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		List<Board> bList = bDao.selectBoardList(session, currentPage);
		String pageNavi = bDao.generatePageNavi(session, currentPage);
		PageData pd = new PageData(bList, pageNavi);
		session.close();
		return pd;
	}

	public int deleteBoardByNo(int boardNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = bDao.deleteBoardByNo(session, boardNo);
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		return result;
	}



}
