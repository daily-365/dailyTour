package web.dto;

import java.util.Date;


public class BoardDTO {

	
	private int boardNo;
	private String boardTitle;
	private String boardContent;
    private Date boardDate;
	private int boardVisit;
	
	
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public int getBoardVisit() {
		return boardVisit;
	}
	public void setBoardVisit(int boardVisit) {
		this.boardVisit = boardVisit;
	}
	 
	 
	
}
