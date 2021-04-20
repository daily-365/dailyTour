package web.dto;

import java.util.Date;

public class CommunityDTO {
   
	private int communityNo;
	private String communityWriteId;
	private String communityTitle;
	private String communityLocation;
	private String communityContent;
	private Date communityDate;
	private String communityReply;
	private int communityVisit;
	
	
	public int getCommunityNo() {
		return communityNo;
	}
	public void setCommunityNo(int communityNo) {
		this.communityNo = communityNo;
	}
	public String getCommunityWriteId() {
		return communityWriteId;
	}
	public void setCommunityWriteId(String communityWriteId) {
		this.communityWriteId = communityWriteId;
	}
	public String getCommunityTitle() {
		return communityTitle;
	}
	public void setCommunityTitle(String communityTitle) {
		this.communityTitle = communityTitle;
	}
	public String getCommunityLocation() {
		return communityLocation;
	}
	public void setCommunityLocation(String communityLocation) {
		this.communityLocation = communityLocation;
	}
	public String getCommunityContent() {
		return communityContent;
	}
	public void setCommunityContent(String communityContent) {
		this.communityContent = communityContent;
	}
	public Date getCommunityDate() {
		return communityDate;
	}
	public void setCommunityDate(Date communityDate) {
		this.communityDate = communityDate;
	}
	public String getCommunityReply() {
		return communityReply;
	}
	public void setCommunityReply(String communityReply) {
		this.communityReply = communityReply;
	}
	public int getCommunityVisit() {
		return communityVisit;
	}
	public void setCommunityVisit(int communityVisit) {
		this.communityVisit = communityVisit;
	}
	
	
	
}