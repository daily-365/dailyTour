package web.dto;

import java.util.Date;

public class CommunityReplyDTO {

	
	private int communityReplyNo;
	private String communityReplyId;
	private String communityReplyTitle;
	private String communityReplyContent;
	private Date communityReplyDate;
	
	public int getCommunityReplyNo() {
		return communityReplyNo;
	}
	public void setCommunityReplyNo(int communityReplyNo) {
		this.communityReplyNo = communityReplyNo;
	}
	public String getCommunityReplyId() {
		return communityReplyId;
	}
	public void setCommunityReplyId(String communityReplyId) {
		this.communityReplyId = communityReplyId;
	}
	public String getCommunityReplyTitle() {
		return communityReplyTitle;
	}
	public void setCommunityReplyTitle(String communityReplyTitle) {
		this.communityReplyTitle = communityReplyTitle;
	}
	public String getCommunityReplyContent() {
		return communityReplyContent;
	}
	public void setCommunityReplyContent(String communityReplyContent) {
		this.communityReplyContent = communityReplyContent;
	}
	public Date getCommunityReplyDate() {
		return communityReplyDate;
	}
	public void setCommunityReplyDate(Date communityReplyDate) {
		this.communityReplyDate = communityReplyDate;
	}
	
	
	
	
}