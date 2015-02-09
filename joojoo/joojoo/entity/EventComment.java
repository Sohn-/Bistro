package joojoo.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

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

	/** end_date. */
	private Date endDate;

	/** 새 테이블. */
	private Stores stores;

	/** 새 테이블. */
	private Persons persons;

	/** 새 테이블. */
	private ServiceType serviceType;

	/** delete_request. */
	private String deleteRequest;

	/** 새 테이블 목록. */
	private Set<WishList> wishListSet;

	/** 새 테이블 목록. */
	private Set<Coupon> couponSet;

	/**
	 * 생성자.
	 */
	public EventComment() {
		this.couponSet = new HashSet<Coupon>();
		this.wishListSet = new HashSet<WishList>();
	}

	/**
	 * comment_code을 설정합니다..
	 * 
	 * @param commentCode
	 *            comment_code
	 */
	public void setCommentCode(Integer commentCode) {
		this.commentCode = commentCode;
	}

	/**
	 * comment_code을 가져옵니다..
	 * 
	 * @return comment_code
	 */
	public Integer getCommentCode() {
		return this.commentCode;
	}

	/**
	 * title을 설정합니다..
	 * 
	 * @param title
	 *            title
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * title을 가져옵니다..
	 * 
	 * @return title
	 */
	public String getTitle() {
		return this.title;
	}

	/**
	 * content을 설정합니다..
	 * 
	 * @param content
	 *            content
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * content을 가져옵니다..
	 * 
	 * @return content
	 */
	public String getContent() {
		return this.content;
	}

	/**
	 * reg_date을 설정합니다..
	 * 
	 * @param regDate
	 *            reg_date
	 */
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	/**
	 * reg_date을 가져옵니다..
	 * 
	 * @return reg_date
	 */
	public Date getRegDate() {
		return this.regDate;
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
	 * 새 테이블을 설정합니다..
	 * 
	 * @param stores
	 *            새 테이블
	 */
	public void setStores(Stores stores) {
		this.stores = stores;
	}

	/**
	 * 새 테이블을 가져옵니다..
	 * 
	 * @return 새 테이블
	 */
	public Stores getStores() {
		return this.stores;
	}

	/**
	 * 새 테이블을 설정합니다..
	 * 
	 * @param persons
	 *            새 테이블
	 */
	public void setPersons(Persons persons) {
		this.persons = persons;
	}

	/**
	 * 새 테이블을 가져옵니다..
	 * 
	 * @return 새 테이블
	 */
	public Persons getPersons() {
		return this.persons;
	}

	/**
	 * 새 테이블을 설정합니다..
	 * 
	 * @param serviceType
	 *            새 테이블
	 */
	public void setServiceType(ServiceType serviceType) {
		this.serviceType = serviceType;
	}

	/**
	 * 새 테이블을 가져옵니다..
	 * 
	 * @return 새 테이블
	 */
	public ServiceType getServiceType() {
		return this.serviceType;
	}

	/**
	 * delete_request을 설정합니다..
	 * 
	 * @param deleteRequest
	 *            delete_request
	 */
	public void setDeleteRequest(String deleteRequest) {
		this.deleteRequest = deleteRequest;
	}

	/**
	 * delete_request을 가져옵니다..
	 * 
	 * @return delete_request
	 */
	public String getDeleteRequest() {
		return this.deleteRequest;
	}

	/**
	 * 새 테이블 목록을 설정합니다..
	 * 
	 * @param wishListSet
	 *            새 테이블 목록
	 */
	public void setWishListSet(Set<WishList> wishListSet) {
		this.wishListSet = wishListSet;
	}

	/**
	 * 새 테이블를 추가합니다..
	 * 
	 * @param wishList
	 *            새 테이블
	 */
	public void addWishList(WishList wishList) {
		this.wishListSet.add(wishList);
	}

	/**
	 * 새 테이블 목록을 가져옵니다..
	 * 
	 * @return 새 테이블 목록
	 */
	public Set<WishList> getWishListSet() {
		return this.wishListSet;
	}

	/**
	 * 새 테이블 목록을 설정합니다..
	 * 
	 * @param couponSet
	 *            새 테이블 목록
	 */
	public void setCouponSet(Set<Coupon> couponSet) {
		this.couponSet = couponSet;
	}

	/**
	 * 새 테이블를 추가합니다..
	 * 
	 * @param coupon
	 *            새 테이블
	 */
	public void addCoupon(Coupon coupon) {
		this.couponSet.add(coupon);
	}

	/**
	 * 새 테이블 목록을 가져옵니다..
	 * 
	 * @return 새 테이블 목록
	 */
	public Set<Coupon> getCouponSet() {
		return this.couponSet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentCode == null) ? 0 : commentCode.hashCode());
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
		EventComment other = (EventComment) obj;
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
