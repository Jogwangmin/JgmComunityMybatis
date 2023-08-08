package board.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import board.model.vo.Board;

public class BoardDAO {

	public int insertBoard(SqlSession session, Board board) {
		int result = session.insert("BoardMapper.insertBoard", board);
		return result;
	}

	public int deleteBoardByNo(SqlSession session, int boardNo) {
		int result = session.insert("BoardMapper.deleteBoardByNo", boardNo);
		return result;
	}

	public List<Board> selectBoardList(SqlSession session, int currentPage) {
		int limit = 10;
		int offset = (currentPage-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Board> bList = session.selectList("BoardMapper.selectBoardList", null, rowBounds);
		return bList;
	}

	private int getTotalCount(SqlSession session) {
		int totalCount = session.selectOne("BoardMapper.getTotalCount");
		return totalCount;
	}
	
	public String generatePageNavi(SqlSession session, int currentPage) {
		int totalCount = getTotalCount(session);	
		int recordCountPerPage = 10;
		int naviTotalCount = 5;
		int totalNaviCount;
		if(totalCount % recordCountPerPage > 0) {	
			totalNaviCount = totalCount / recordCountPerPage + 1;
		}else {
			totalNaviCount = totalCount / recordCountPerPage;
		}
		int naviCountPerPage = 5;	//
		int startNavi = ((currentPage -1)/naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		if(endNavi > totalNaviCount) {
			endNavi = totalNaviCount;
		}
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi == 1) {
			needPrev = false;
		}
		if(endNavi == naviTotalCount) {
			needNext = false;
		}
		StringBuilder result = new StringBuilder();
		if(needPrev) {
			result.append("<a href='/board/list.do?currentPage="+(startNavi-1)+"'>[이전]</a>");
		}
		for(int i = startNavi; i <= endNavi; i++) {
			result.append("<a href='/board/list.do?currentPage="+i+"'>"+i+"</a>&nbsp;&nbsp;");
		}
		if(needNext) {
			result.append("<a href='/board/list.do?currentPage="+(endNavi+1)+"'>[다음]</a>");
		}
		return result.toString();
	}

	public Board selectOneByNo(SqlSession session, int boardNo) {
		Board board = session.selectOne("BoardMapper.selectOneByNo", boardNo);
		return board;
	}


}
