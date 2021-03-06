package joojoo.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * 새 테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class EventComment implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** comment_code. */
	private Integer commentCode;

	/** title. */
	private String title;

	/** content. */
	private String content;

	/** reg_date. */
	private Date regDate;

	/** start_date. */
	private Date startDate;
	private String startDateStr;

	/** end_date. */
	private Date endDate;
	private String endDateStr;
	
	private int storeCode;
	private String storeCodeStr;
	
	private String personsLevel;
	private String serviceTypeName;
	private String deleteRequest;
	
	/**
	 * 생성자.
	 */
	public EventComment() {}
	public EventComment(Integer commentCode, String title, String content,
			Date regDate, Date startDate, Date endDate, int storeCode,
			String personsLevel, String serviceTypeName, String deleteRequest) {
		super();
		this.commentCode = commentCode;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.storeCode = storeCode;
		this.personsLevel = personsLevel;
		this.serviceTypeName = serviceTypeName;
		this.deleteRequest = deleteRequest;
	}
	public Integer getCommentCode() {
		return commentCode;
	}
	public void setCommentCode(Integer commentCode) {
		this.commentCode = commentCode;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	public String getStartDateStr() {
		return startDateStr;
	}
	public void setStartDateStr(String startDateStr) {
		this.startDateStr = startDateStr;
	}
	public String getEndDateStr() {
		return endDateStr;
	}
	public void setEndDateStr(String endDateStr) {
		this.endDateStr = endDateStr;
	}
	public int getStoreCode() {
		return storeCode;
	}
	
	public String getStoreCodeStr() {
		return storeCodeStr;
	}
	public void setStoreCodeStr(String storeCodeStr) {
		this.storeCodeStr = storeCodeStr;
	}
	public void setStoreCode(int storeCode) {
		this.storeCode = storeCode;
	}
	public String getPersonsLevel() {
		return personsLevel;
	}
	public void setPersonsLevel(String personsLevel) {
		this.personsLevel = personsLevel;
	}
	public String getServiceTypeName() {
		return serviceTypeName;
	}
	public void setServiceTypeName(String serviceTypeName) {
		this.serviceTypeName = serviceTypeName;
	}
	public String getDeleteRequest() {
		return deleteRequest;
	}
	public void setDeleteRequest(String deleteRequest) {
		this.deleteRequest = deleteRequest;
	}
	
	@Override
	public String toString() {
		return "EventComment [commentCode=" + commentCode + ", title=" + title
				+ ", content=" + content + ", regDate=" + regDate
				+ ", startDate=" + startDate + ", endDate=" + endDate
				+ ", storeCode=" + storeCode + ", personsLevel=" + personsLevel
				+ ", serviceTypeName=" + serviceTypeName + ", deleteRequest="
				+ deleteRequest + "]";
	}
	
	

}
