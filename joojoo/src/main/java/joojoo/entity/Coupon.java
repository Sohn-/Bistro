package joojoo.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 새 테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Coupon implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** coupon_code. */
	private String couponCode;

	/** start_date. */
	private Date startDate;

	/** end_date. */
	private Date endDate;

	/** is_valid. */
	private String isValid;

	/** 새 테이블. */
	private Users users;

	/** 새 테이블. */
	private EventComment eventComment;

	/**
	 * 생성자.
	 */
	public Coupon() {
	}

	/**
	 * coupon_code을 설정합니다..
	 * 
	 * @param couponCode
	 *            coupon_code
	 */
	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}

	/**
	 * coupon_code을 가져옵니다..
	 * 
	 * @return coupon_code
	 */
	public String getCouponCode() {
		return this.couponCode;
	}

	/**
	 * start_date을 설정합니다..
	 * 
	 * @param startDate
	 *            start_date
	 */
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	/**
	 * start_date을 가져옵니다..
	 * 
	 * @return start_date
	 */
	public Date getStartDate() {
		return this.startDate;
	}

	/**
	 * end_date을 설정합니다..
	 * 
	 * @param endDate
	 *            end_date
	 */
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	/**
	 * end_date을 가져옵니다..
	 * 
	 * @return end_date
	 */
	public Date getEndDate() {
		return this.endDate;
	}

	/**
	 * is_valid을 설정합니다..
	 * 
	 * @param isValid
	 *            is_valid
	 */
	public void setIsValid(String isValid) {
		this.isValid = isValid;
	}

	/**
	 * is_valid을 가져옵니다..
	 * 
	 * @return is_valid
	 */
	public String getIsValid() {
		return this.isValid;
	}

	/**
	 * 새 테이블을 설정합니다..
	 * 
	 * @param users
	 *            새 테이블
	 */
	public void setUsers(Users users) {
		this.users = users;
	}

	/**
	 * 새 테이블을 가져옵니다..
	 * 
	 * @return 새 테이블
	 */
	public Users getUsers() {
		return this.users;
	}

	/**
	 * 새 테이블을 설정합니다..
	 * 
	 * @param eventComment
	 *            새 테이블
	 */
	public void setEventComment(EventComment eventComment) {
		this.eventComment = eventComment;
	}

	/**
	 * 새 테이블을 가져옵니다..
	 * 
	 * @return 새 테이블
	 */
	public EventComment getEventComment() {
		return this.eventComment;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((couponCode == null) ? 0 : couponCode.hashCode());
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
		Coupon other = (Coupon) obj;
		if (couponCode == null) {
			if (other.couponCode != null) {
				return false;
			}
		} else if (!couponCode.equals(other.couponCode)) {
			return false;
		}
		return true;
	}

}
