package joojoo.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 새 테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class ReviewComment implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** comment_code. */
	private Integer commentCode;

	/** owner_id. */
	private String ownerId;

	/** title. */
	private String title;

	/** content. */
	private String content;

	/** reg_date. */
	private Date regDate;

	/** star_point. */
	private Integer starPoint;

	/** 새 테이블. */
	private Integer stores;

	/**
	 * 생성자.
	 */
	public ReviewComment() {
	}

	public Integer getCommentCode() {
		return commentCode;
	}

	public void setCommentCode(Integer commentCode) {
		this.commentCode = commentCode;
	}

	public String getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
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

	public Integer getStarPoint() {
		return starPoint;
	}

	public void setStarPoint(Integer starPoint) {
		this.starPoint = starPoint;
	}

	public Integer getStores() {
		return stores;
	}

	public void setStores(Integer stores) {
		this.stores = stores;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((commentCode == null) ? 0 : commentCode.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		ReviewComment other = (ReviewComment) obj;
		if (commentCode == null) {
			if (other.commentCode != null) {
				return false;
			}
		} else if (!commentCode.equals(other.commentCode)) {
			return false;
		}
		return true;
	}

}
