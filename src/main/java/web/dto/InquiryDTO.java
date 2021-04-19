package web.dto;

import java.util.Date;

public class InquiryDTO {

	private int inquiryNo;
	private String inquiryTitle;
	private String inquiryContent;
	private String inquiryWriteName;
	private Date inquiryDate;
	
	private String inquiryComment;

	
	public String getInquiryComment() {
		return inquiryComment;
	}

	public void setInquiryComment(String inquiryComment) {
		this.inquiryComment = inquiryComment;
	}
	
	
	public int getInquiryNo() {
		return inquiryNo;
	}

	public void setInquiryNo(int inquiryNo) {
		this.inquiryNo = inquiryNo;
	}

	public String getInquiryTitle() {
		return inquiryTitle;
	}

	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}

	public String getInquiryContent() {
		return inquiryContent;
	}

	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}

	public String getInquiryWriteName() {
		return inquiryWriteName;
	}

	public void setInquiryWriteName(String inquiryWriteName) {
		this.inquiryWriteName = inquiryWriteName;
	}

	public Date getInquiryDate() {
		return inquiryDate;
	}

	public void setInquiryDate(Date inquiryDate) {
		this.inquiryDate = inquiryDate;
	}


	
	
	
	
	
}
