package board.model.vo;

import java.util.List;

public class PageData {
	private List<Board> bList;
	private String pageNavi;

	public PageData() {}
	
	public PageData(List<Board> bList, String pageNavi) {
		super();
		this.bList = bList;
		this.pageNavi = pageNavi;
	}

	public List<Board> getbList() {
		return bList;
	}
	public void setbList(List<Board> bList) {
		this.bList = bList;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	@Override
	public String toString() {
		return "PageData [bList=" + bList + ", pageNavi=" + pageNavi + "]";
	}
}
