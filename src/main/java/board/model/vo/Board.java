package board.model.vo;

import java.sql.Timestamp;

public class Board {
	private int boardNo;
	private String boardSubject;
	private String boardContent;
	private String boardWriter;
	private Timestamp boardDate;
	private int viewCount;
	private int likeCount;
	
	public Board() {
		super();
	}
	
	public Board(String boardSubject, String boardContent) {
		super();
		this.boardSubject = boardSubject;
		this.boardContent = boardContent;
	}



	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardSubject() {
		return boardSubject;
	}
	public void setBoardSubject(String boardSubject) {
		this.boardSubject = boardSubject;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public Timestamp getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Timestamp boardDate) {
		this.boardDate = boardDate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	@Override
	public String toString() {
		return "게시판 [게시판번호=" + boardNo + ", 제목=" + boardSubject + ", 내용=" + boardContent
				+ ", 글쓴이=" + boardWriter + ", 작성일=" + boardDate + ", 조회수=" + viewCount
				+ ", 추천수=" + likeCount + "]";
	}

	
	
	
	
	
	
	
	
}
